define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
	};

	/**
	 * 获取本周、本季度、本月、上月的开始日期、结束日期
	 */
	var now = new Date(); // 当前日期
	var nowDayOfWeek = now.getDay(); // 今天本周的第几天
	var nowDay = now.getDate(); // 当前日
	var nowMonth = now.getMonth(); // 当前月
	var nowYear = now.getYear(); // 当前年
	nowYear += (nowYear < 2000) ? 1900 : 0; //

	var lastMonthDate = new Date(); // 上月日期
	lastMonthDate.setDate(1);
	lastMonthDate.setMonth(lastMonthDate.getMonth() - 1);
	var lastYear = lastMonthDate.getYear();
	var lastMonth = lastMonthDate.getMonth();
	// 格式化日期：yyyyMMdd
	Model.prototype.formatDate = function(date) {
		var myyear = date.getFullYear();
		var mymonth = date.getMonth() + 1;
		var myweekday = date.getDate();

		if (mymonth < 10) {
			mymonth = "0" + mymonth;
		}
		if (myweekday < 10) {
			myweekday = "0" + myweekday;
		}
		return (myyear + mymonth + myweekday);
	}

	// 获得某月的天数
	 Model.prototype.getMonthDays = function(myMonth) {
		var monthStartDate = new Date(nowYear, myMonth, 1);
		var monthEndDate = new Date(nowYear, myMonth + 1, 1);
		var days = (monthEndDate - monthStartDate) / (1000 * 60 * 60 * 24);
		return days;
	}

	// 获得本季度的开始月份
	 Model.prototype.getQuarterStartMonth = function() {
		var quarterStartMonth = 0;
		if (nowMonth < 3) {
			quarterStartMonth = 0;
		}
		if (2 < nowMonth && nowMonth < 6) {
			quarterStartMonth = 3;
		}
		if (5 < nowMonth && nowMonth < 9) {
			quarterStartMonth = 6;
		}
		if (nowMonth > 8) {
			quarterStartMonth = 9;
		}
		return quarterStartMonth;
	}

	// 获得本周的开始日期
	 Model.prototype.getWeekStartDate = function() {
		var weekStartDate = new Date(nowYear, nowMonth, nowDay - nowDayOfWeek);
		return this.formatDate(weekStartDate);
	}

	// 获得本周的结束日期
	 Model.prototype.getWeekEndDate = function() {
		var weekEndDate = new Date(nowYear, nowMonth, nowDay + (6 - nowDayOfWeek));
		return this.formatDate(weekEndDate);
	}

	// 获得本月的开始日期
	 Model.prototype.getMonthStartDate = function() {
		var monthStartDate = new Date(nowYear, nowMonth, 1);
		return this.formatDate(monthStartDate);
	}

	// 获得本月的结束日期
	 Model.prototype.getMonthEndDate = function() {
		var monthEndDate = new Date(nowYear, nowMonth, this.getMonthDays(nowMonth));
		return this.formatDate(monthEndDate);
	}

	// 获得上月开始时间
	 Model.prototype.getLastMonthStartDate = function() {
		var lastMonthStartDate = new Date(nowYear, lastMonth, 1);
		return this.formatDate(lastMonthStartDate);
	}

	// 获得上月结束时间
	 Model.prototype.getLastMonthEndDate = function() {
		var lastMonthEndDate = new Date(nowYear, lastMonth, this.getMonthDays(lastMonth));
		return this.formatDate(lastMonthEndDate);
	}

	// 获得本季度的开始日期
	 Model.prototype.getQuarterStartDate = function() {
		var quarterStartDate = new Date(nowYear, getQuarterStartMonth(), 1);
		return this.formatDate(quarterStartDate);
	}

	// 或的本季度的结束日期
	 Model.prototype.getQuarterEndDate = function() {
		var quarterEndMonth = getQuarterStartMonth() + 2;
		var quarterStartDate = new Date(nowYear, quarterEndMonth, this.getMonthDays(quarterEndMonth));
		return this.formatDate(quarterStartDate);
	}
	 
	//获取N天前(-N天后)的日期
	  Model.prototype. calculateDate = function(days){
		   var now=new Date();   
		   if(days>=1)
		   return new Date(now.getTime()-86400000*days);
		  }
	return Model;
});