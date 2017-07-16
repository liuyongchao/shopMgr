<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:250px;left:812px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="storeData" idColumn="bm">
   <column name="bm" type="Integer" xid="xid1"></column>
   <column name="mc" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="我的个人中心"
          class="x-titlebar" style="background-color:#688CE4;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">我的个人中心</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div style="padding:20px 0px 5px;background-color:#839FE4;"><img src="$UI/shopMgr/img/persion.jpg" alt="" xid="image1" class="center-block img-circle img-thumbnail" style="width:30%;border:none;background-color:#688CE4;"></img>
  <p xid="p1" style="text-align:center;color:#fff;margin-top:10px"><![CDATA[励恒店铺-17600600600]]></p></div>
  <div xid="shooseShop" style="height:48px;border-bottom:2px solid #ddd;" bind-click="shooseShopClick">
  
  <div xid="div2" style="height:48px;position:relative;width:auto;left:10px;" class="pull-left"><div xid="div4" style="background-color:#ff9900;height:36px;width:36px;margin-top:6px;" class="pull-left img-circle img-thumbnail"><i xid="i1" class="glyphicon glyphicon-home center-block " style="font-size:18px;color:#fff;text-align:Center;line-height:24px"></i></div><span xid="span1" style="font-size:16px;color:#000;padding-left:10px;line-height:48px;" class="pull-right">当前店铺</span></div>
  <div xid="div1" style="color:#8e8e93;font-size:16px;line-height:48px;height:48px;" class="pull-right ">
   <span xid="span3" style="padding-left:10px"><![CDATA[]]></span><i xid="i2" style="text-align:Center;padding-right:10px" class="dataControl dataControl-arrowrightl"></i>
  </div>
  </div>
  </div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog" onClose="setShopName"></span></div>