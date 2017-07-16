define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var DateTools = require("jslib/DateTools");
	var store;
	var Model = function(){
		this.callParent();
	};

	Model.prototype.changeDate = function(){
		
		startTime = this.comp("startInput").val().replace(/-/g,"");
		endTime = this.comp("endInput").val().replace(/-/g,"");
		if(startTime - endTime > 0){
			window.layui.use('layer', function(){
		  layer.alert('日期不合理！', {
			  icon: 1,
			  skin: 'layer-ext-moon', 
			  anim: 0,
			 });
		})
		 return false;
		}
		/*if(!startTime){
			startTime = new Date();
			this.comp("startInput").val(startTime);
			//startTime = DateTools.prototype.formatDate(this.comp("startInput").val());
		}	
		if(!endTime){
			endTime = new Date();
			this.comp("endInput").val(endTime);
			//endTime = DateTools.prototype.formatDate(this.comp("endInput").val());	
		}*/
		/*if(typeof(startTime) != 'string'){
			startTime = DateTools.prototype.formatDate(startTime);
			endTime = DateTools.prototype.formatDate(endTime);
		}	*/			

			var czStatisData = this.comp("czStatisData");
			justep.Baas.sendRequest({
				"url" : "/shopMgr/shopMgr",
				"action" : "czStatis",
				"async" : false,
				"params" : {"startTime":startTime,"endTime":endTime,"store":store},
				"success" : function(data) {
					czStatisData.loadData(data);
				}
			});
			
		if(!czStatisData.count()){
			window.layui.use('layer', function(){
		  layer.alert('暂无欠款数据！', {
			  icon: 1,
			  skin: 'layer-ext-moon', 
			  anim: 0,
			 });
		    
		})
		}else{
			this.comp("list1").refresh();
		}
		
	}


	Model.prototype.startInputChange = function(event){
		
		//var endTime = this.comp("endInput").val().replace(/-/g,"");
		if(!endTime){
			return false;
		}else{
			//startTime = this.comp("startInput").val().replace(/-/g,"");
			this.changeDate();
		}
		
	};

	Model.prototype.endInputChange = function(event){
		//startTime = this.comp("startInput").val().replace(/-/g,"");
		//endTime = this.comp("endInput").val().replace(/-/g,"");
		if(!startTime){
			return false;
		}else{
			this.changeDate();
		}
	};

	Model.prototype.modelParamsReceive = function(event){
		store = event.params.data.store;
		this.changeDate();
	};

	return Model;
});