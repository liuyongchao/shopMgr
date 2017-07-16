define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/shopMgr/jslib/echarts/echarts.min");
	var DateTools = require("jslib/DateTools");
	var store;
	//var startTime;
	//var endTime;
//data
//var data = [220, 182, 191, 234, 190, 330, 310];
/*var markLineData = [];
for (var i = 1; i < data.length; i++) {
    markLineData.push([{
        xAxis: i - 1,
        yAxis: data[i - 1],
        value: (data[i] + data[i-1]).toFixed(2)
    }, {
        xAxis: i,
        yAxis: data[i]
    }]);
}*/

//option
 var option = {
	color:['#dd4b39','#00a65a','#f39c12','#00c0ef','#3c8dbc','#605ca8'],
	backgroundColor:'#fff',
   /* title: {
        text: '顾客欠款',
         x:'center',
    },*/
    grid:{
    	left:'20%'
    },
    tooltip : {
        trigger: 'axis'
    },    
    xAxis: {
    	axisLabel: {
    		rotate: 45,
    	}
        //data: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
    },
    yAxis: {},
    series: [{
    	name:'消费欠款',
        type: 'line',
        //data:data,
        markPoint: {
            data: [
                {type: 'max', name: '最大值'},
                {type: 'min', name: '最小值'}
            ]
        },
        /*markLine: {
            smooth: true,
                    effect: {
                        show: true
                    },
                    distance: 10,
            label: {
                normal: {
                    position: 'middle'
                }
            },
            symbol: ['none', 'none'],
            data: markLineData
        }*/
    },{
    	name:'充值欠款',
        type: 'line',
        //data:data,
        markPoint: {
            data: [
                {type: 'max', name: '最大值'},
                {type: 'min', name: '最小值'}
            ]
        },
        /*markLine: {
            smooth: true,
                    effect: {
                        show: true
                    },
                    distance: 10,
            label: {
                normal: {
                    position: 'middle'
                }
            },
            symbol: ['none', 'none'],
            data: markLineData
        }*/
    }]
};
	var Model = function(){
		this.callParent();
	};





	Model.prototype.modelParamsReceive = function(event){
		store = event.params.data.store;
		this.changeDate();
		
	};

	Model.prototype.changeDate = function(){

		//var today = DateTools.prototype.formatDate(new Date());
		startTime = this.comp("startInput").val();
		endTime = this.comp("endInput").val();
		if(!startTime){
			startTime = DateTools.prototype.calculateDate(7);
			this.comp("startInput").val(startTime);
			//startTime = DateTools.prototype.formatDate(this.comp("startInput").val());
		}	
		if(!endTime){
			endTime = new Date();
			this.comp("endInput").val(endTime);
			//endTime = DateTools.prototype.formatDate(this.comp("endInput").val());	
		}
		if(typeof(startTime) != 'string'){
			startTime = DateTools.prototype.formatDate(startTime);
		endTime = DateTools.prototype.formatDate(endTime);
		}				
		var qkStatisData = this.comp("qkStatisData");
		qkStatisData.setFilter(null, "bm_gsjg = '"+store+"' and rq between '"+startTime+"' and '"+endTime+"'");
		qkStatisData.refreshData();
		if(!qkStatisData.count()){
			window.layui.use('layer', function(){
		  layer.alert('暂无欠款数据！', {
			  icon: 1,
			  skin: 'layer-ext-moon', 
			  anim: 0,
			 });
		    
		})
		echarts.dispose(this.getElementByXid("lineDiv"));
		}else{
			var rq = [];
		var je_total = [];
		var je_qk = [];
		qkStatisData.eachAll(function(param){
			rq.push(param.row.val('rq'));
			je_total.push(param.row.val('je_total'));
			je_qk.push(param.row.val('je_qk'));
		})
		var params = {"rq":rq,"je_total":je_total,"je_qk":je_qk};
		this.charts(params);		
		}
		
	}
	
	Model.prototype.charts = function(params){
		//option.title.text = Math.round((this.comp("v_ys_dateData").sumByAll("sum_total")*100))/100;
		option.xAxis.data = params.rq;
		option.series[0].data = params.je_total;
		option.series[1].data = params.je_qk;
		//option.series[1].data = params.je_qk;
		var myChart = echarts.init(this.getElementByXid("lineDiv"));
		myChart.setOption(option);
		$(window).resize(function(){
			myChart.resize();
		})
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
	
	Model.prototype.dateStr = function(str){
		return str.substr(0,4)+'/' + str.substr(4,2) + '/' + str.substr(6.2);
	};
	
	
	Model.prototype.dataTables1CellRender = function(event){
		if(event.colName == 'rq'){
			event.html = this.dateStr(event.colVal);
		}
	};
	return Model;
});