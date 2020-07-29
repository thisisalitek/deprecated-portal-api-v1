module.exports = (dbModel, member, req, res, next, cb)=>{
	switch(req.method){
		case 'GET':
		if(req.params.param1!=undefined){
			getOne(dbModel, member, req, res, next, cb)
		}else{
			getList(dbModel, member, req, res, next, cb)
		}
		break
		case 'POST':
		post(dbModel, member, req, res, next, cb)
		break
		case 'PUT':
		put(dbModel, member, req, res, next, cb)
		break
		case 'DELETE':
		deleteItem(dbModel, member, req, res, next, cb)
		break
		default:
		error.method(req)
		break
	}
}

function getList(dbModel, member, req, res, next, cb){
	var options={page: (req.query.page || 1)}
	if(!req.query.page){
		options.limit=50000
	}
	var filter = {partyType:'Vendor'}

	if((req.query.passive || '')!='')
		filter['passive']=req.query.passive

	if((req.query.name || req.query.partyName || '')!='')
		filter['partyName.name.value']={ $regex: '.*' + (req.query.name || req.query.partyName) + '.*' ,$options: 'i' }

	if((req.query.cityName || '')!='')
		filter['postalAddress.cityName.value']={ $regex: '.*' + req.query.cityName + '.*' ,$options: 'i' }

	if((req.query.district || '')!='')
		filter['postalAddress.district.value']={ $regex: '.*' + req.query.district + '.*' ,$options: 'i' }

	dbModel.parties.paginate(filter,options,(err, resp)=>{
		if(dberr(err,next)){
			resp.docs.forEach((e)=>{
				e.vknTckn=''
				e.mersisNo=''
				e.partyIdentification.forEach((e2)=>{
					switch(e2.ID.attr.schemeID.toUpperCase()){
						case 'VKN':
						case 'TCKN':
						e.vknTckn=e2.ID.value
						break
						case 'MERSISNO':
						case 'MERSİSNO':
						e.mersisNo=e2.ID.value
						break
					}
				})
			})
			cb(resp)
		}
	})
}

function getOne(dbModel, member, req, res, next, cb){
	dbModel.parties.findOne({_id:req.params.param1},(err,doc)=>{
		if(dberr(err,next)){
			cb(doc)
		}
	})
}

function post(dbModel, member, req, res, next, cb){
	var data = req.body || {}
	data._id=undefined

	if((data.account || '')=='')
		data.account=undefined

	var newDoc = new dbModel.parties(data)
	newDoc.partyType='Vendor'
	if(!epValidateSync(newDoc,next))
		return

	newDoc.save((err, newDoc2)=>{
		if(dberr(err,next)){
			cb(newDoc2)
		} 
	})
}

function put(dbModel, member, req, res, next, cb){
	if(req.params.param1==undefined)
		return error.param1(req, next)
	var data=req.body || {}
	data._id = req.params.param1
	data.modifiedDate = new Date()

	if((data.account || '')=='')
		data.account=undefined

	dbModel.parties.findOne({ _id: data._id},(err,doc)=>{
		if(dberr(err,next)){
			if(dbnull(doc,next)){
				if(doc.partyType!='Vendor' &&  doc.partyType!='VendorAgency')
					return next({code: 'WRONG_PARAMETER', message: 'Yanlis partyType'})

				var doc2 = Object.assign(doc, data)
				var newDoc = new dbModel.parties(doc2)
				if(!epValidateSync(newDoc,next))
					return

				newDoc.save((err, newDoc2)=>{
					if(dberr(err,next)){
						cb(newDoc2)
					} 
				})
			}
		}
	})
}

function deleteItem(dbModel, member, req, res, next, cb){
	if(req.params.param1==undefined)
		return error.param1(req, next)
	var data = req.body || {}
	data._id = req.params.param1
	dbModel.parties.removeOne(member,{ _id: data._id},(err,doc)=>{
		if(dberr(err,next)){
			cb(null)
		}
	})
}