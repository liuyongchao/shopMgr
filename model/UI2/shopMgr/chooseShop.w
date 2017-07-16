<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:216px;left:607px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="storeData" idColumn="bm">
   <column name="bm" type="Integer" xid="xid1"></column>
  <column name="mc" type="String" xid="xid2"></column>
  <column name="state" type="Integer" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="gsjgData" queryAction="queryT_bm_gsjg" url="/shopMgr/shopMgr" tableName="t_bm_gsjg" idColumn="bm" limit="-1"><column label="bm" name="bm" type="String" xid="default29"></column>
  <column label="mc" name="mc" type="String" xid="default30"></column>
  <column label="js" name="js" type="Integer" xid="default31"></column>
  <column label="bm_1" name="bm_1" type="String" xid="default32"></column>
  <column label="bm_2" name="bm_2" type="String" xid="default33"></column>
  <column label="bm_3" name="bm_3" type="String" xid="default34"></column>
  <column label="bm_4" name="bm_4" type="String" xid="default35"></column>
  <column label="bm_5" name="bm_5" type="String" xid="default36"></column>
  <column label="bm_6" name="bm_6" type="String" xid="default37"></column>
  <column label="qdxz" name="qdxz" type="Integer" xid="default38"></column>
  <column label="bm_kh" name="bm_kh" type="String" xid="default39"></column>
  <column label="bm_gsjgfl" name="bm_gsjgfl" type="String" xid="default40"></column>
  <column label="bm_dqfl" name="bm_dqfl" type="String" xid="default41"></column>
  <column label="bm_jbr" name="bm_jbr" type="String" xid="default42"></column>
  <column label="bm_ck" name="bm_ck" type="String" xid="default43"></column>
  <column label="qddj" name="qddj" type="Integer" xid="default44"></column>
  <column label="is_default" name="is_default" type="Integer" xid="default45"></column>
  <column label="is_stop" name="is_stop" type="Integer" xid="default46"></column>
  <column label="rq_stop" name="rq_stop" type="DateTime" xid="default47"></column>
  <column label="bm_stop" name="bm_stop" type="String" xid="default48"></column>
  <column label="rq_new" name="rq_new" type="DateTime" xid="default49"></column>
  <column label="bm_user" name="bm_user" type="String" xid="default50"></column>
  <column label="rq_edit" name="rq_edit" type="DateTime" xid="default51"></column>
  <column label="bm_edit" name="bm_edit" type="String" xid="default52"></column>
  <column label="last_n" name="last_n" type="Integer" xid="default53"></column>
  <column label="bz" name="bz" type="String" xid="default54"></column>
  <column label="tel" name="tel" type="String" xid="default55"></column>
  <column label="address" name="address" type="String" xid="default56"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="选择店铺"
          class="x-titlebar" style="background-color:#688CE4;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">选择店铺</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C78F66481A80000134811850E0101C95" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="storeData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div4" style="height:48px;border-bottom:2px solid #ddd;position:relative">
   
   <div xid="div5" style="height:48px;position:relative;width:auto;left:10px;" class="pull-left">
   <div xid="div4" style="background-color:#ff9900;height:36px;width:36px;margin-top:6px;" class="pull-left img-circle img-thumbnail">
    <i xid="i2" class="glyphicon glyphicon-home center-block " style="font-size:18px;color:#fff;text-align:Center;line-height:24px"></i></div> 
   </div><span xid="span3" style="font-size:16px;color:#000;line-height:48px;position:absolute;left:45%;" bind-text='ref("mc")'><![CDATA[]]></span><div xid="div6" class="pull-right" style="margin:10px 10px 0px 0px;">
    <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="chooseShop" style="margin:0;padding:0" onChange="chooseShopChange" bind-checked='val("state") == 1'></span></div> 
  </div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>