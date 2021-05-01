var createError = require('http-errors')
var express = require('express')
var path = require('path')
var cookieParser = require('cookie-parser')
var bodyParser = require('body-parser')
var logger = require('morgan')
var favicon = require('serve-favicon')
var methodOverride = require('method-override')

var indexRouter = require('./routes/index')
var dbLoader = require('./db/db-loader')
var httpServer=require('./bin/http-server.js')

global.fileImporter = require('./lib/file_importer')
global.documentHelper = require('./lib/document_helper')
global.printHelper = require('./lib/print_helper')
global.programs=require('./services/programs/programs')

global.app = express()
var cors = require('cors')
app.use(cors())
var flash = require('connect-flash')

app.use(logger('dev'))
app.use(bodyParser.json({limit: "100mb"}))
app.use(bodyParser.urlencoded({limit: "100mb", extended: true, parameterLimit:50000}))
app.use(cookieParser())
app.use(methodOverride())
app.use(methodOverride())

indexRouter(app)
testControllers(false)

app.set('name',require('./package').name)
app.set('version',require('./package').version)
app.set('port',config.httpserver.port)



process.on('uncaughtException', function (err) {
	errorLog('Caught exception: ', err)
	
	if(config.status!='development'){
		mail.sendErrorMail(`${(new Date()).yyyymmddhhmmss()} ${app.get('name')} Error`,errObj)
		
	}
})


module.exports=()=>{
	httpServer(app,(err,server,port)=>{
		dbLoader((err)=>{
			if(!err){
				
			}else{
				errorLog(err)
			}
		})
	})
}


/* [CONTROLLER TEST] */
function testControllers(log){
	moduleLoader(path.join(__dirname,'controllers'),'.controller.js',(log?'master controllers testing':''),(err,holder)=>{
		if(!err){
			eventLog(`test master controllers OK ${Object.keys(holder).length.toString().yellow}`)
			moduleLoader(path.join(__dirname,'controllers/system'),'.controller.js',(log?'system controllers testing':''),(err,holder)=>{
				if(!err){
					eventLog(`test system controllers OK ${Object.keys(holder).length.toString().yellow}`)
					moduleLoader(path.join(__dirname,'controllers/web'),'.controller.js',(log?'web controllers testing':''),(err,holder)=>{
						if(!err){
							eventLog(`test web controllers OK ${Object.keys(holder).length.toString().yellow}`)
							moduleLoader(path.join(__dirname,'controllers/repo'),'.controller.js',(log?'repo controllers testing':''),(err,holder)=>{
								if(!err){
									eventLog(`test repository controllers OK ${Object.keys(holder).length.toString().yellow}`)
								}else{
									throw err
								}
							})
						}else{
							throw err
						}
					})
					
				}else{
					throw err
				}
			})
		}else{
			throw err
		}
	})
}


loadCategoryList()

function loadCategoryList(){
	global.webCategoryList = require(path.join(__root,'resources','web-category-list.json'))
	global.webCategoryList2={}
	global.webCategoryFormTypes = require(path.join(__root,'resources','web-category-form-types.json'))
	modifyWebCategoryList(webCategoryList)
	
	tempLog('webCategoryList.json',JSON.stringify(webCategoryList,null,2))
	tempLog('webCategoryList2.json',JSON.stringify(webCategoryList2,null,2))
}

function modifyWebCategoryList(obj,currentKey='',parentKey=''){
	obj.pathKey=(parentKey!=''?parentKey+'.':'') + currentKey
	if(obj.pathKey!=''){
		webCategoryList2[obj.pathKey]={
			pathKey:obj.pathKey,
			path:'/' + (obj.pathKey.replaceAll('.','/')),
			text:obj.text || '',
			fields:{}
		}
		let formObj={}
		if(typeof obj.form=='string'){
			if(webCategoryFormTypes[obj.form]==undefined){
				formObj={}
			}else{
				formObj=Object.assign({},webCategoryFormTypes[obj.form])
			}
			
		}else{
			formObj=Object.assign({},obj.form)
		}
		webCategoryList2[obj.pathKey].fields=getFormFieldList(formObj)
	}
	if(obj.nodes!=undefined){
		Object.keys(obj.nodes).forEach((key)=>{
			modifyWebCategoryList(obj.nodes[key],key,obj.pathKey)
		})
	}
}

function getFormFieldList(formObj){
	let fields=objectToListObject(formObj)

	return fields
}