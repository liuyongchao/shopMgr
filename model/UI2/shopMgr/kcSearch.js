define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var store;
	var Model = function() {
		this.callParent();
	};
	
	
	
	//商品点击事件
	Model.prototype.listClick = function(event){
		/*
		 1、获取当前商品ID
		 2、转到商品详细信息页，带参数
		 3、在详细页的接收事件中，从服务端过滤数据

		 显示页面代码如下：
		 justep.Shell.showPage("list",{
			keyValue : this.comp("threeClassData").getValue("fClassName")
		 }); 
		 */
	};

	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		var type = row.val('t_bm_spfl_mc');
		var goodsData = this.comp("goodsData");
			goodsData.setFilter(null, "bm_gsjg = '"+store+"' and t_bm_spfl_mc = '"+type+"'");
			goodsData.refreshData();
			console.log(goodsData.count());
			this.comp("list1").refresh();
			
	};







	Model.prototype.modelParamsReceive = function(event){
		store = event.params.data.store;
		var typeData = this.comp("typeData");
		typeData.setFilter(null, "bm_gsjg = '"+store+"'");
		this.comp("rootClassList").refresh();
		typeData.refreshData();
		var type = typeData.getFirstRow().val("t_bm_spfl_mc");
		var goodsData = this.comp("goodsData");
		goodsData.setFilter(null, "bm_gsjg = '"+store+"' and t_bm_spfl_mc = '"+type+"'");
		goodsData.refreshData();
		this.comp("list1").refresh();
	};

	Model.prototype.keyInputBlur = function(event){
		var value = this.comp("keyInput").val();
		var goodsData = this.comp("goodsData");
		goodsData.setFilter(null, "bm_gsjg = '"+store+"' and mc like '%"+value+"%'");
		goodsData.refreshData();
		this.comp("list1").refresh();
	};


	return Model;
});