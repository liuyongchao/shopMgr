define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/shopMgr/jslib/echarts/echarts.min");
	var DateTools = require("jslib/DateTools");
	var arrayParam = new Array();
	var data;
	var option = {
		color:['#dd4b39','#00a65a','#f39c12','#00c0ef','#3c8dbc','#605ca8'],
		backgroundColor:'#fff',
    title : {
        text: '42000',
        subtext: '今日营收（元）',
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
            name: '营收统计',
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
            }
        }
    ]
};
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.changeData = function(event){
		var v_ys_dateData = this.comp("v_ys_dateData");
		v_ys_dateData.filters.clear();
		v_ys_dateData.setFilter(null, "bm_gsjg = '"+data.storeCode+"' and rq between '"+data.date.startTime+"' and '"+data.date.endTime+"'");
		//v_ys_dateData.setFilter(null, "rq between 20170425 and 20170428");
		v_ys_dateData.refreshData();
		if(v_ys_dateData.count() > 0){
			var arrayCol = ["je_xf_xj","je_xf_bank","je_xf_djj","je_xf_md","je_xf_my","je_xf_qk","je_xf_tg","je_xf_vipshye"];
			var arrayName = ["现金","银行","代金券","免单","免零","欠款","团购","积分兑换"];
			for(var i = 0; i< 8;i++){
			var pieParams = {name:null,value:null};
			var value = v_ys_dateData.sumByAll(arrayCol[i]);
			pieParams["name"] = arrayName[i];
			pieParams["value"] = value;
			arrayParam[i] = pieParams;
			}
			this.charts();
		}else{
		
		window.layui.use('layer', function(){
		  layer.alert('暂无营收数据！', {
			  icon: 1,
			  skin: 'layer-ext-moon', 
			  anim: 0,
			 });
		    
		})
		}
	
	
	}
	
	Model.prototype.modelParamsReceive = function(event){
		data = event.params.data;
		$(this.getElementByXid("searchDiv")).css("dispaly","block");
		switch (data.operate) {
		case "todayIn":
			this.comp("titleBar").set("title","今日营收");
			option.series[0].name = '今日营收';
			option.title.subtext = '今日营收（元）';
			break;
		case "weekIn":
			this.comp("titleBar").set("title","本周营收");
			option.series[0].name = '本周营收';
			option.title.subtext = '本周营收（元）';
			break;
		case "monthIn":
			this.comp("titleBar").set("title","本月营收");
			option.series[0].name = '本月营收';
			option.title.subtext = '本月营收（元）';
			break;
		case "moreIn"://默认30天内数据
			this.comp("titleBar").set("title","更多营收");
			$(this.getElementByXid("searchDiv")).removeClass("searchDiv");
			option.title.subtext = '更多营收（元）';
			var start = DateTools.prototype.calculateDate(30);
			var end = new Date();
			this.comp("startInput").val(start);
			this.comp("endInput").val(end);
			
			data.date.startTime = DateTools.prototype.formatDate(start);
			data.date.endTime = DateTools.prototype.formatDate(end);
			break;
		default:
			break;
		}
		this.changeData();
	};

	Model.prototype.charts = function(params,options){
		option.title.text = Math.round((this.comp("v_ys_dateData").sumByAll("sum_total")*100))/100;
		option.series[0].data = arrayParam;
		var myChart = echarts.init(this.getElementByXid("pieDiv"));
		myChart.setOption(option);
		$(window).resize(function(){
			myChart.resize();
		})
	}
	Model.prototype.startInputChange = function(event){
		if(!data.date.startTime){
			return false;
		}else{
			data.date.startTime = this.comp("startInput").val().replace(/-/g,"");
			this.changeData();
		}
		
		
	};
	Model.prototype.endInputChange = function(event){
	if(!data.date.startTime){
		return false;
	}else{
		data.date.endTime = this.comp("endInput").val().replace(/-/g,"");
		this.changeData();
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