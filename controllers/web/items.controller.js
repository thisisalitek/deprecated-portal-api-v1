module.exports = (member, req, res, next, cb)=>{
	if(!member && (req.method=='POST' || req.method=='PUT' || req.method=='DELETE')){
		return error.auth(req,next)
	}
	switch(req.method){
		case 'GET':
		if(req.params.param1!=undefined){
			if(req.params.param1.indexOf(',')>-1 || req.params.param1.indexOf(';')>-1){
				getIdList(member, req, res, next, cb)
			}else{
				getOne(member, req, res, next, cb)
			}
		}else{
			getList(member, req, res, next, cb)
		}
		break
		case 'POST':
		if(req.params.param1=='copy'){
			copy(member, req, res, next, cb)
		}else{
			post(member, req, res, next, cb)
		}

		break
		case 'PUT':
		put(member, req, res, next, cb)
		break
		case 'DELETE':
		deleteItem(member, req, res, next, cb)
		break
		default:
		error.method(req, next)
		break
	}
}


function copy(member, req, res, next, cb){
	var id=req.params.param2 || req.body['id'] || req.query.id || ''
	var newName=req.body['newName'] || req.body['name'] || ''

	if(id=='')
		error.param2(req,next)

	dbWeb.items.findOne({ _id: id},(err,doc)=>{
		if(dberr(err,next)){
			if(dbnull(doc,next)){
				var data=doc.toJSON()
				data._id=undefined
				delete data._id
				if(newName!=''){
					data.title=newName
				}else{
					data.title +=' copy'
				}
				data.createdDate=new Date()
				data.modifiedDate=new Date()

				var newDoc = new dbWeb.items(data)
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

function getList(member, req, res, next, cb){
	var options={page: (req.query.page || 1), limit:10
		
	}
	
	if((req.query.pageSize || req.query.limit))
		options.limit=req.query.pageSize || req.query.limit
	if(options.limit>50){
		options.limit=50
	}
	var filter = {}
	options.sort={}


	if((req.query.passive || '')!='*'){
		if((req.query.passive || '')!=''){
			filter.passive=req.query.passive
		}else{
			filter.passive=true
		}
	}

	if((req.query.category || '')!='')
		filter['category']=req.query.category

	if((req.query.title || '')!='')
		filter.title={ $regex: '.*' + req.query.title + '.*' ,$options: 'i' }

	if((req.query.description || '')!='')
		filter.description={ $regex: '.*' + req.query.description + '.*' ,$options: 'i' }

	if((req.query.search || '').trim()!=''){
		filter['$or']=[
		{title:{ $regex: '.*' + req.query.search + '.*' ,$options: 'i' }},
		{description:{ $regex: '.*' + req.query.search + '.*' ,$options: 'i' }}
		]
	}

	dbWeb.items.paginate(filter,options,(err, resp)=>{
		if(dberr(err,next)){
			cb(resp)
		}
	})
}

function getIdList(member, req, res, next, cb){
	
	var filter = {}
	var idList=req.params.param1.replaceAll(';',',').split(',')

	filter['_id']={$in:idList}

	dbWeb.items.find(filter,(err, docs)=>{
		if(dberr(err,next)){
			cb(docs)
		}
	})
}


function getOne(member, req, res, next, cb){
	dbWeb.items.findOne({_id:req.params.param1}).exec((err,doc)=>{
		if(dberr(err,next)){
			if(dbnull(doc,next)){
				cb(doc)
			}
		}
	})
}

function post(member, req, res, next, cb){
	var data = req.body || {}
	data._id=undefined

	data.memberId=member._id
	data=dataDuzenle(data,req)

	saveFiles(dbWeb,data,(err,data)=>{
		var newDoc = new dbWeb.items(data)
		if(!epValidateSync(newDoc,next))
			return
		newDoc.save((err, newDoc2)=>{
			if(dberr(err,next)){
				cb(newDoc2)
			} 
		})
	})
}


function put(member, req, res, next, cb){
	if(req.params.param1==undefined)
		return error.param1(req, next)
	var data=req.body || {}
	data._id = req.params.param1
	data.modifiedDate = new Date()
	data=dataDuzenle(data,req)

	dbWeb.items.findOne({ _id: data._id},(err,doc)=>{
		if(dberr(err,next)){
			if(dbnull(doc,next)){
				saveFiles(dbWeb,data,(err,data)=>{
					var doc2 = Object.assign(doc, data)
					var newDoc = new dbWeb.items(doc2)
					if(!epValidateSync(newDoc,next))
						return

					newDoc.save((err, newDoc2)=>{
						if(dberr(err,next)){
							cb(newDoc2)
						} 
					})
				})
			}
		}
	})
}

function dataDuzenle(data,req){
	let schemaKeys=Object.keys(dbWeb.items.schema.obj)
	if(data.params==undefined){
		data.params={}
	}
	Object.keys(data).forEach((key)=>{
		if(!schemaKeys.includes(key)){
			data.params[key]=data[key]
		}
	})


	return data
}

function deleteItem(member, req, res, next, cb){
	if(req.params.param1==undefined)
		return error.param1(req, next)
	var data = req.body || {}
	data._id = req.params.param1
	dbWeb.items.removeOne(member,{ _id: data._id},(err,doc)=>{
		if(dberr(err,next)){
			cb(null)
		}
	})
}


function saveFiles(dbWeb,data,cb){
	cb(null,data)
}
