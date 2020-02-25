module.exports=function(conn){
    var schema = mongoose.Schema({
        module: {type :String, trim:true, enum:['recipe','recipe-list','items','items-list','items-product'], required: true},
        name: {type :String, trim:true, default:''},
        design: {type :String, default:''},
        createdDate: { type: Date,default: Date.now},
        modifiedDate:{ type: Date,default: Date.now},
        isDefault: {type: Boolean, default: true},
        passive: {type: Boolean, default: false}
    });

    schema.pre('save', function(next) {
       next();
      
    });
    schema.pre('remove', function(next) {
        next();
    });

    schema.pre('remove', true, function(next, done) {
        next();
        //bir seyler ters giderse 
        // next(new Error('ters giden birseyler var'));
    });

    schema.on('init', function(model) {

    });
    schema.plugin(mongoosePaginate);
    

    var collectionName='print_designs';
    var model=conn.model(collectionName, schema);
    
    model.removeOne=(member, filter,cb)=>{ sendToTrash(conn,collectionName,member,filter,cb); }
    
    //model.relations={pos_devices:'localConnector'}

    return model;
}
