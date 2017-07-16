define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	require("jslib/layUI/layui");
	 require("css!jslib/layUI/css/layui").load();
	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"login" : {
					url : require.toUrl('./login.w')
				},
				"main" : {
					url : require.toUrl('./main.w')
				}
			}
		})

	};

	Model.prototype.modelLoad = function(event){
		 window.layui.config({
	      dir: 'jslib/layUI/', //layui.js 所在路径（注意，如果是script单独引入layui.js，无需设定该参数。），一般情况下可以无视
		  version: false, //一般用于更新组件缓存，默认不开启。设为true即让浏览器不缓存。也可以设为一个固定的值，如：201610
		  debug: false, //用于开启调试模式，默认false，如果设为true，则JS模块的节点会保留在页面
		  base: '', //设定扩展的Layui组件的所在目录，一般用于外部组件扩展
	     });
		justep.Shell.showPage("login");
	};

	return Model;
});