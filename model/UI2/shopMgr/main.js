define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var own = require("own.js");
	var DateTools = require("jslib/DateTools");
	var currentUser;
	var storeCode;
	var personNum;
	var Model = function(){
		this.callParent();	
	var longNoDate;
	var Month;
	var Week;
	var today;
	var store;
	};
	
	Model.prototype.modelParamsReceive = function(event){
		var me = this;
		if(!currentUser)
		currentUser = event.params.data.currentUser;
		//var currentStore = this.localStorage();
		var inComeData = this.comp("inComeData");
		
		store = currentUser.val("owngsjg");
		store = own.prototype.tools(store);
		//获取本月日期范围
		var MonthStart = DateTools.prototype.getMonthStartDate();
		var MonthEnd = DateTools.prototype.getMonthEndDate();
		Month = {"startTime":MonthStart,"endTime":MonthEnd};
		
		//获取本周日期范围
		var WeekStart = DateTools.prototype.getWeekStartDate();
		var WeekEnd = DateTools.prototype.getWeekEndDate();
		Week = {"startTime":WeekStart,"endTime":WeekEnd};
		//var today_sum = inComeData.sum("je_xf_xj");
		//$(this.getElementByXid("p29")).text(today_sum);
		
		//获取当前天日期范围
		today = justep.Date.toString(new Date(),"yyyyMMdd");
		today = {"startTime":today,"endTime":today};
		
		//storeCode
		storeCode = store[window.localStorage.getItem('currentIndex')] || store[0];
		var oStore = {"storeCode" : storeCode};
		//顾客欠款
		
		var qkStatisData = this.comp("qkStatisData");
		qkStatisData.setFilter(null, "bm_gsjg = '"+storeCode+"' and rq = '"+today.startTime+"'");
		qkStatisData.refreshData();
		var sum_total = qkStatisData.sumByAll("je_total");
		$(this.getElementByXid("p2")).text(sum_total);//顾客欠款	
		
		//充值统计
		var czStatisData = this.comp("czStatisData");
		czStatisData.setFilter(null, "bm_gsjg = '"+storeCode+"' and rq = '"+today.startTime+"'");
		czStatisData.refreshData();
		var cz_total = czStatisData.getValue("sum_total");
		$(this.getElementByXid("p35")).text(cz_total);//充值统计
		
		justep.Baas.sendRequest({
		"url" : "/shopMgr/shopMgr",
		"action" : "inCome",
		"async" : false,
		"params" : {"data":[today,Week,Month],"oStore":[oStore]},
		"success" : function(ret) {
			var  param = ret.params;
			$(me.getElementByXid("p27")).text(param[0]);//获取本月营收
			$(me.getElementByXid("p29")).text(param[1]);//获取本周营收
			$(me.getElementByXid("p30")).text(param[2]);//获取当前天营收
			$(me.getElementByXid("p31")).text(param[3]);//久未到店
			longNoDate = param[4];
			personNum = param[3];
		}
	});
	
	
		
	var title = this.localStorage();
	this.comp("titleBar1").set('title',title);
	};
	



	Model.prototype.localStorage = function(event){
		if(!window.localStorage.getItem('currentStore')){
			//currentStore显示店铺第一行记录;
			var bm = currentUser.val("bm");
			store = currentUser.val("owngsjg");
			store = own.prototype.tools(store);
			var gsjgData = this.comp("gsjgData");
			gsjgData.setFilter(null, "bm = '"+store[0]+"'");
			gsjgData.refreshData();
			store = gsjgData.getValue("mc");
			window.localStorage.setItem('currentStore',store);
			return store;
		}
		else
			return window.localStorage.getItem('currentStore');
};
	Model.prototype.todayInClick = function(event){
		this.comp("windowDialog").open({
			"src" : "detial.w",
			"data" : {
				"operate" : "todayIn",
				"date" : today,
				"storeCode" : storeCode
			}
		})
	};
	
	Model.prototype.weekInClick = function(event){
		this.comp("windowDialog").open({
			"src" : "detial.w",
			"data" : {
				"operate" : "weekIn",
				"date" : Week,
				"storeCode" : storeCode
			}
		})
	};
	
	Model.prototype.monthInClick = function(event){
		this.comp("windowDialog").open({
			"src" : "detial.w",
			"data" : {
				"operate" : "monthIn",
				"date" : Month,
				"storeCode" : storeCode
			}
		})
	};
	
	Model.prototype.moreInClick = function(event){
		this.comp("windowDialog").open({
			"src" : "detial.w",
			"data" : {
				"operate" : "moreIn",
				"date" : {"startTime":null,"endTime":null},
				"storeCode" : storeCode
			}
		})
	};
	
	Model.prototype.ownBtnClick = function(event){
		this.comp("windowDialog").open({
			"src" : "own.w",
			"data" : {
				"operate" : "own",
				"currentUser" : currentUser
			}
		})
	};
	Model.prototype.longNoClick = function(event){
		var longNoData = this.comp("longNoData");
		this.comp("windowDialog").open({
			"src" : "longNo.w",
			"data" : {
				"longNoDate" : longNoDate,
				"store" : storeCode,
				"personNum":personNum
			}
		})
	};
	
	Model.prototype.czStatisClick = function(event){
		var longNoData = this.comp("longNoData");
		this.comp("windowDialog").open({
			"src" : "czStatis.w",
			"data" : {
				"store" : storeCode
			}
		})
	};
	
	Model.prototype.qkStatisClick = function(event){
		this.comp("windowDialog").open({
			"src" : "qkStatis.w",
			"data" : {
				"store" : storeCode
			}
		})
	};
	
	Model.prototype.kcSearchClick = function(event){
	this.comp("windowDialog").open({
			"src" : "kcSearch.w",
			"data" : {
				"store" : storeCode
			}
		})
	};
	
	Model.prototype.windowDialogClose = function(event){
		this.modelParamsReceive();
	};
	
	Model.prototype.role = function(role){
		switch(role){
			case 'm_顾客消费明细':$(this.getElementByXid('todayIn')).css("display","none");
			$(this.getElementByXid('weekIn')).css("display","none");
			$(this.getElementByXid('monthIn')).css("display","none");
			$(this.getElementByXid('moreIn')).css("display","none");
				break;
			case 'm_会员充值汇总表':$(this.getElementByXid('czStatis')).css("display","none");
				break;
			case 'm_29':$(this.getElementByXid('qkStatis')).css("display","none");
				break;
			case 'm_22':$(this.getElementByXid('longNo')).css("display","none");
				break;
			case 'm_159a':$(this.getElementByXid('kcSearch')).css("display","none");
				break;
			case 'm_38':$(this.getElementByXid('employees')).css("display","none");
				break;
				
		}
	};
	
	
	
	
	return Model;
});