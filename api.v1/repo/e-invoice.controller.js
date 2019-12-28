module.exports = function(activeDb, member, req, res, callback) {

    if(req.params.param1==undefined) return callback({success:false,error:{code:'WRONG_PARAMETER',message:'Hatali Parametre'}});
   
    switch(req.method){
        case 'GET':
            switch(req.params.param1.lcaseeng()){
                case 'iseinvoiceuser':
                return isEInvoiceUser(activeDb,member,req,res,callback);
                break;
                case 'inboxinvoicelist':
                return getInvoiceList(1,activeDb,member,req,res,callback);
                break;
                case 'outboxinvoicelist':
                return getInvoiceList(0,activeDb,member,req,res,callback);
                break;
                case 'invoice':
                return getInvoice(activeDb,member,req,res,callback);
                break;
                case 'invoiceview':
                return invoiceView(activeDb,member,req,res,callback);
                break;
                case 'invoicepdf':
                return invoicePdf(activeDb,member,req,res,callback);
                break;
                case 'invoicexmlxslt':
                case 'invoicexml':
                case 'invoicexslt':
                case 'invoicexsltxml':
                return getInvoiceXmlXslt(activeDb,member,req,res,callback);
                break;
                default:
                return callback({success: false, error: {code: 'WRONG_METHOD', message: 'Method was wrong!'}});
                break;
            }
        break;
        case 'POST':
            switch(req.params.param1.lcaseeng()){
                case 'transfer':
                    if(req.params.param2.lcaseeng()=='import'){
                        transferImport(activeDb,member,req,res,callback)
                    }else if(req.params.param2.lcaseeng()=='export'){
                        return callback({success: false, error: {code: 'WRONG_METHOD', message: 'Method was wrong!'}});
                    }else{
                        return callback({success: false, error: {code: 'WRONG_METHOD', message: 'Method was wrong!'}});
                    }
                break;
                default:
                return callback({success: false, error: {code: 'WRONG_METHOD', message: 'Method was wrong!'}});
                break;
            }

        break;
        default:
        return callback({success: false, error: {code: 'WRONG_METHOD', message: 'Method was wrong!'}});
        break;
    }
}


function transferImport(activeDb,member,req,res,callback){
    
    activeDb.e_integrators.find({passive:false,'localConnectorImportInvoice.localConnector':{$ne:null}}).populate(['localConnectorImportInvoice.localConnector']).exec((err,docs)=>{
        if (dberr(err,callback)) {
            var index=0;
            function pushTask(cb){
                if(index>=docs.length){
                    cb(null);
                }else{
                    db.tasks.findOne({userDb:req.params.dbId,taskType:'connector_import_einvoice',collectionName:'e_integrators',documentId:docs[index]._id, status:{$in:['running','pending']}},(err,doc)=>{
                        if (dberr(err,callback)) {
                            if(doc==null){
                                var taskdata={userDb:req.params.dbId,taskType:'connector_import_einvoice',collectionName:'e_integrators',documentId:docs[index]._id,document:docs[index]}
                                taskHelper.newTask(taskdata,(err,taskDoc)=>{
                                    if(!err){
                                        switch(taskDoc.status){
                                            case 'running':
                                                docs[index].localConnectorImportInvoice['status']='transferring';
                                                break;
                                            case 'pending':
                                                docs[index].localConnectorImportInvoice['status']='pending';
                                                break;
                                            case 'completed':
                                                docs[index].localConnectorImportInvoice['status']='transferred';
                                                break;
                                            case 'error':
                                                docs[index].localConnectorImportInvoice['status']='error';
                                                break;
                                            default:
                                                 docs[index].localConnectorImportInvoice['status']='';
                                                 break;
                                        }
                                        docs[index].save((err,newDoc)=>{
                                            if(!err){
                                                index++;
                                                setTimeout(pushTask,0,cb);
                                            }else{
                                                cb(err);
                                                // index++;
                                                // setTimeout(pushTask,0,cb);
                                            }
                                        });
                                    }else{
                                        cb(err);
                                        // index++;
                                        // setTimeout(pushTask,0,cb);
                                    }
                                });
                            }else{
                                index++;
                                setTimeout(pushTask,0,cb);
                            }
                        }
                    });
                    
                }
            }
            pushTask((err)=>{
                if(dberr(err,callback)){
                    var resp=[]
                    // for(var i=0;i<docs.length;i++){
                    //     resp.push(docs[i]._id.toString());
                    // }
                    docs.forEach((e)=>{
                        resp.push(e._id.toString());
                    });
                    callback({success: true,data:resp});
                }
            });
        }
    })
    
}

function getInvoiceList(ioType,activeDb,member,req,res,callback){
    var options={page: (req.query.page || 1), 
        populate:[
        {path:'eIntegrator',select:'_id eIntegrator name username'}
        ],
        limit:10
        ,
        select:'_id eIntegrator profileId ID uuid issueDate issueTime invoiceTypeCode documentCurrencyCode lineCountNumeric localDocumentId pricingExchangeRate accountingCustomerParty accountingSupplierParty legalMonetaryTotal taxTotal withholdingTaxTotal invoiceStatus invoiceErrors localStatus localErrors'
    }

    if((req.query.pageSize || req.query.limit)){
        options['limit']=req.query.pageSize || req.query.limit;
    }

    var filter = {ioType:ioType}
    
    if(req.query.eIntegrator){
        filter['eIntegrator']=req.query.eIntegrator;
    }
    if((req.query.ID || '')!=''){
        filter['ID.value']={ $regex: '.*' + req.query.ID + '.*' ,$options: 'i' };
    }
    if((req.query.invoiceNo || '')!=''){
        if(filter['$or']==undefined) filter['$or']=[];
        filter['$or'].push({'ID.value':{ '$regex': '.*' + req.query.invoiceNo + '.*' , '$options': 'i' }})
        filter['$or'].push({'localDocumentId':{ '$regex': '.*' + req.query.invoiceNo + '.*' ,'$options': 'i' }})
    }
    if(req.query.invoiceStatus){
        filter['invoiceStatus']=req.query.invoiceStatus;
    }
    if((req.query.profileId || '')!=''){
        filter['profileId.value']=req.query.profileId;
    }
    if((req.query.invoiceTypeCode || '')!=''){
        filter['invoiceTypeCode.value']=req.query.invoiceTypeCode;
    }

    if((req.query.documentCurrencyCode || '')!=''){
        filter['documentCurrencyCode.value']=req.query.documentCurrencyCode;
    }

    if(req.query.date1){
        filter['issueDate.value']={$gte:req.query.date1};
    }

    if(req.query.date2){
        if(filter['issueDate.value']){
            filter['issueDate.value']['$lte']=req.query.date2;
        }else{
            filter['issueDate.value']={$lte:req.query.date2};
        }
    }
    
    activeDb.e_invoices.paginate(filter,options,(err, resp)=>{
        if (dberr(err,callback)) {
            var liste=[]
            resp.docs.forEach((e,index)=>{
                var obj={}
                obj['_id']=e['_id'];
                obj['eIntegrator']=e['eIntegrator'];
                obj['ioType']=e['ioType'];
                obj['profileId']=e['profileId'].value;
                obj['ID']=e['ID'].value;
                obj['uuid']=e['uuid'].value;
                obj['issueDate']=e['issueDate'].value;
                obj['issueTime']=e['issueTime'].value;
                obj['invoiceTypeCode']=e['invoiceTypeCode'].value;
                
                obj['accountingParty']={title:'',vknTckn:''}
                if(ioType==0){
                    obj['accountingParty']['title']=e.accountingCustomerParty.party.partyName.name.value;
                    e.accountingCustomerParty.party.partyIdentification.forEach((e2)=>{
                        var schemeID='';
                        if(e2.ID.attr!=undefined){
                            schemeID=(e2.ID.attr.schemeID || '').toLowerCase();
                        }
                        if(schemeID.indexOf('vkn')>-1 || schemeID.indexOf('tckn')>-1){
                            obj['accountingParty']['vknTckn']=e2.ID.value || '';
                            return;
                        }
                    });
                }else{
                    obj['accountingParty']['title']=e.accountingSupplierParty.party.partyName.name.value;
                    e.accountingSupplierParty.party.partyIdentification.forEach((e2)=>{
                        var schemeID='';
                        if(e2.ID.attr!=undefined){
                            schemeID=(e2.ID.attr.schemeID || '').toLowerCase();
                        }
                        
                        if(schemeID.indexOf('vkn')>-1 || schemeID.indexOf('tckn')>-1){
                            obj['accountingParty']['vknTckn']=e2.ID.value || '';
                            return;
                        }

                    });
                }
                obj['payableAmount']=e['legalMonetaryTotal'].payableAmount.value;
                obj['taxExclusiveAmount']=e['legalMonetaryTotal'].taxExclusiveAmount.value;
                obj['taxSummary']={
                    vat1:0,vat8:0,vat18:0,
                    vat0TaxableAmount:0,
                    vat1TaxableAmount:0,
                    vat8TaxableAmount:0,
                    vat18TaxableAmount:0
                }
                var taxTotal=0,withholdingTaxTotal=0;
                e['taxTotal'].forEach((e2)=>{
                    taxTotal=taxTotal + e2.taxAmount.value;
                    e2.taxSubtotal.forEach((e3)=>{
                        switch(e3.percent.value){
                            case 1:
                                obj['taxSummary'].vat1+=e3.taxAmount.value;
                                obj['taxSummary'].vat1TaxableAmount+=e3.taxableAmount.value;
                            break;
                            case 8:
                                obj['taxSummary'].vat8+=e3.taxAmount.value;
                                obj['taxSummary'].vat8TaxableAmount+=e3.taxableAmount.value;
                            break;
                            case 18:
                                obj['taxSummary'].vat18+=e3.taxAmount.value;
                                obj['taxSummary'].vat0TaxableAmount+=e3.taxableAmount.value;
                            break;
                            default:
                                obj['taxSummary'].vat18TaxableAmount+=e3.taxableAmount.value;
                            break;
                        }
                    });
                });
                e['withholdingTaxTotal'].forEach((e2)=>{
                    withholdingTaxTotal=withholdingTaxTotal + e2.taxAmount.value;
                });
                obj['taxTotal']=taxTotal;
                obj['withholdingTaxTotal']=withholdingTaxTotal;
                obj['documentCurrencyCode']=e['documentCurrencyCode'].value;
                obj['exchangeRate']=e['pricingExchangeRate'].calculationRate.value;

                obj['lineCountNumeric']=e['lineCountNumeric'].value;
                obj['localDocumentId']=e['localDocumentId'];
                obj['invoiceStatus']=e['invoiceStatus'];
                obj['invoiceErrors']=e['invoiceErrors'];
                obj['localStatus']=e['localStatus'];
                obj['localErrors']=e['localErrors'];
                

                liste.push(obj);
            });
            resp.docs=liste;
            callback({success: true,data: resp});
        } else {
            console.log('error:',err);
        }
    });


}
function getInvoice(activeDb,member,req,res,callback){
    var _id= req.params.param2 || req.query._id || '';
    if(_id=='') return callback({success:false,error:{code:'WRONG_PARAMETER',message:'Hatali Parametre'}});
    activeDb.e_invoices.findOne({_id:_id},(err,doc)=>{
        if(dberr(err,callback))
            if(dbnull(doc,callback)){
                var data=doc.toJSON();
                callback({success: true,data: data});
            }
        });
}

function invoiceView(activeDb,member,req,res,callback){
    var _id= req.params.param2 || req.query._id || '';
    if(_id=='') return callback({success:false,error:{code:'WRONG_PARAMETER',message:'Hatali Parametre'}});
    activeDb.e_invoices.findOne({_id:_id}).populate(['html']).exec((err,doc)=>{
        if(dberr(err,callback))
            if(dbnull(doc,callback)){
                callback({file: doc.html});
            }
        });
}

function invoicePdf(activeDb,member,req,res,callback){
    var _id= req.params.param2 || req.query._id || '';
    if(_id=='') return callback({success:false,error:{code:'WRONG_PARAMETER',message:'Hatali Parametre'}});
    activeDb.e_invoices.findOne({_id:_id}).populate(['pdf']).exec((err,doc)=>{
        if(dberr(err,callback))
            if(dbnull(doc,callback)){
                
                callback({file: doc.pdf});
            }
        });
}

function getInvoiceXmlXslt(activeDb,member,req,res,callback){
    var _id= req.params.param2 || req.query._id || '';
    if(_id=='') return callback({success:false,error:{code:'WRONG_PARAMETER',message:'Hatali Parametre'}});
    activeDb.e_invoices.findOne({_id:_id},(err,doc)=>{
        if(dberr(err,callback))
            if(dbnull(doc,callback)){
                var invoice=doc.toJSON();
                var xml=btoa(mrutil.e_invoice2xml(invoice));
                var xslt=mrutil.e_invoiceXslt(invoice);
                callback({success: true,data: {xml:xml,xslt:xslt}});
            }
        });
}



function isEInvoiceUser(activeDb,member,req,res,callback){
    callback({success:true,data:{value:'ok'}});
  // var vknTckn=req.query.vknTckn || req.query.vkntckn || '';
  // if(vknTckn.trim()=='') return callback({success:false,error:{code:'MISSING_PARAM',message:'\'vknTckn\' query parametresi bos olamaz.'}})
  // switch(eIntegratorDoc.eIntegrator){
  //   case 'uyumsoft':
  //     uyumsoft.isEInvoiceUser(eIntegratorDoc,vknTckn,callback);
  //   break;
  //   default:
  //     callback({success:false,error:{code:'INTEGRATOR_ERROR',message:'Integrator function not completed or unknown.'}})
  //   break;
  // }
}

