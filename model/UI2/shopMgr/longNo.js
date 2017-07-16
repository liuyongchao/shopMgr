define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/shopMgr/jslib/echarts/echarts.min");
	var DateTools = require("jslib/DateTools");
	var option = {
		color:['#dd4b39','#00a65a','#f39c12','#00c0ef','#3c8dbc','#605ca8'],
		backgroundColor:'#fff',
    title : {
        text: '42000',
        subtext: '久未到店（人）',
        x:'center',
        y:'middle'
    },
    tooltip : {
    	show : true,
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    /*legend: {
        orient: 'vertical',
        left: 'left',
        top:'20',
        data: ['会员卡','现金','团购','银行卡','微信','赠送卡']
    },*/
    series : [
        {
            name: '久未到店',
            type: 'pie',
            startAngle: 180,
            radius: ['55%', '75%'],
            center: ['50%', '50%'],
            hoverAnimation: true,
            //selectedOffset: 20,
            silent : false,
            itemStyle: {
            	normal:{
            		borderColor : '#fff',
            		borderWidth : 1
            	},
                emphasis: {
                	borderWidth : 0,
                    shadowBlur: 5,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            },
           // data:params
        }
    ]
};
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var me = this;
		var store = event.params.data.store;
		var longNoDate = event.params.data.longNoDate;
		var personNum = event.params.data.personNum;
		longNoDate = DateTools.prototype.calculateDate(longNoDate);
		justep.Baas.sendRequest({
			"url" : "/shopMgr/shopMgr",
			"action" : "longNo",
			"async" : true,
			"params" : {"store":store},
			"success" : function(ret) {
				var params = ret.value;
				me.charts(params,personNum);
			}
		});
		
		
		
		var longNoData = this.comp("longNoData");
		longNoData.setFilter(null, "convert(varchar(180),lastxf_date,121) <= convert(varchar(180),'"+longNoDate+"',121) and bm_gsjg = '"+store+"'");
		this.comp("list1").refresh();
	};

	Model.prototype.charts = function(params,personNum){
		option.title.text = personNum;
		option.series[0].data = params;
		var myChart = echarts.init(this.getElementByXid("pieDiv"));
		myChart.setOption(option);
		$(window).resize(function(){
			myChart.resize();
		})
	}
	return Model;
});