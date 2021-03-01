
exports.tasks=require('./tasks/tasks')
exports.programs=require('./programs/programs')

exports.start=(cb)=>{
	Object.keys(repoDb).forEach((e)=>{
		exports.tasks.run(repoDb[e])
	})
	cb(null)
}
