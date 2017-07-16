define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var arr_store = [];
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var store = event.params.data.store;
		var bm = event.params.data.bm;
		var storeData = this.comp("storeData");
		storeData.clear();
		var gsjgData = this.comp("gsjgData");
		var store_state = [];
		for (var i = 0; i < store.length; i++) {
			gsjgData.each(function(param){
				var k = param.row.val('bm');
				var _store = param.row.val('mc');
				if(store[i] === k){
				arr_store.push(_store);
				store_state.push(0);
				}
				
				
			})
			//console.log(arr_store);
			storeData.newData({
			"defaultValues" : [ {
				"bm" : bm,
				"mc" : arr_store[i],
				"state" : store_state[i]
			} ]
		})
		}
		if(!window.localStorage.getItem("currentStore")){
			window.localStorage.setItem("currentCode", store[1]);
			window.localStorage.setItem("currentStore", arr_store[1]);
			var rows = storeData.find(['mc'],[arr_store[1]],true,true,true);
			storeData.setValue('state',1,rows[0]);
		}else{
			var rows = storeData.find(['mc'],[window.localStorage.getItem("currentStore")],true,true,true);
			storeData.setValue('state',1,rows[0]);
		}
			
	};

	Model.prototype.chooseShopChange = function(event){
		var row = event.bindingContext.$object;
		var storeData = this.comp("storeData");	
			storeData.each(function(param){
				if(param.row.val('state') === 1)
					storeData.setValue('state', 0, param.row);
			})
		storeData.setValue('state', 1,row);
		var storeName = storeData.getValue('mc', row);
		window.localStorage.setItem("currentIndex", arr_store.indexOf(storeName));
		window.localStorage.setItem("currentStore", storeName);		
	};

	return Model;
});