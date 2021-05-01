module.exports=function(conn){
	let collectionName=path.basename(__filename,'.collection.js')
	let schema = mongoose.Schema({
		memberId: {type: mongoose.Schema.Types.ObjectId, default:null, index:true},
		category:{type: String, trim:true, required:[true,'Kategori gereklidir'], index:true},
		title:{type: String, trim:true, required:[true,'Başlık gereklidir'], index:true},
		description:{type: String, trim:true, default:'', index:true},
		params:{type: Object, default:{}, index:true},
		createdDate: { type: Date,default: Date.now, index:true },
		modifiedDate:{ type: Date,default: Date.now, index:true },
		passive: {type: Boolean, default: false, index:true}
	})

	schema.pre('save', (next)=>next())
	schema.pre('remove', (next)=>next())
	schema.pre('remove', true, (next, done)=>next())
	schema.on('init', (model)=>{})
	schema.plugin(mongoosePaginate)
	schema.plugin(mongooseAggregatePaginate)
	let model=conn.model(collectionName, schema)
	model.removeOne=(member, filter,cb)=>{ sendToTrash(model,collectionName,member,filter,cb) }
	
	return model
}
