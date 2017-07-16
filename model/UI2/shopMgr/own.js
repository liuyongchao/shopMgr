define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var store;
	var bm;
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var storeName = window.localStorage.getItem('currentStore') || store[0];
		$(this.getElementByXid("span3")).text(storeName);//设置当前店铺名称
		var currentUser = event.params.data.currentUser;
		bm = currentUser.val("bm");
		var mc = currentUser.val("mc");
		$(this.getElementByXid("p1")).text(mc + '-' + bm);//设置个人信息
		store = currentUser.val("owngsjg");
		store = this.tools(store);
		
		var storeData = this.comp("storeData");
		for (var i = 0; i < store.length; i++) {
			storeData.newData({
			"defaultValues" : [ {
				"bm" : bm,
				"mc" : store[i]
			} ]
		})
			
		}
		//alert(storeData.count())
	};
//店铺信息转化工具
Model.prototype.tools = function(store){
	var store_array;
	store = store.substr(1).replace(/[\;]/g, ",");
	store = "[" + store.substr(0,store.length - 1) + "]";
	return stringArray(store);
	
}

//字符串转化数组
function stringArray(stringObj) {
	stringObj = stringObj.replace(/\[([\w, ]*)\]/, "$1");
	if (stringObj.indexOf("[") == 0) {// if has chinese
		stringObj = stringObj.substring(1, stringObj.length - 1);
	}
	var arr = stringObj.split(",");
	var newArray = [];//new Array();
	for ( var i = 0; i < arr.length; i++) {
		var arrOne = arr[i];
		newArray.push(arrOne);
	}
	return newArray;
};
	Model.prototype.shooseShopClick = function(event){
		this.comp("windowDialog").open({
			"src" : "chooseShop.w",
			"data" : {
				"bm" : bm,
				"store" : store
			}
		})
	};
	Model.prototype.setShopName = function(event){
		$(this.getElementByXid("span3")).text(window.localStorage.getItem("currentStore"));//设置当前店铺名称
	}
	
	return Model;
});