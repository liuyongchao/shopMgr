<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:398px;left:704px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="czStatisData" idColumn="bm_gsjg"><column isCalculate="false" label="店铺编号" name="bm_gsjg" type="String" xid="xid1"></column>
  <column label="数量" name="count" type="String" xid="xid2"></column>
  <column label="卡余额" name="cz" type="String" xid="xid3"></column>
  <column label="赠送金" name="zs" type="String" xid="xid4"></column>
  <column label="积分金" name="jfdh" type="String" xid="xid5"></column>
  <column label="占比" name="pre" type="String" xid="xid6"></column>
  <column label="名称" name="mc" type="String" xid="xid7"></column>
  <column label="名称编号" name="bm_vipfl" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="充值统计"
          class="x-titlebar" style="background-color:#688CE4;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">充值统计</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C794611131E00001E8DA7BD3173C12C6" style="bottom: 0px;background-color:#eee;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div xid="searchDiv" style="margin:10px 10px 0px;padding:0;height:100px;position:relative;border-bottom:1px solid #eee;background-color:#839FE4;disaly:none" class="searchDiv">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="充值查询" style="background-color:#839FE4;">
    <div class="x-titlebar-title pull-left" xid="title1" style="text-align:left;margin-left:10px">充值查询</div></div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin:0;padding:0">
    <div class="x-col" xid="col10">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="startInput" dataType="Date" style="background-color:#fff;" onChange="startInputChange" max="js:new Date()" bind-value=" justep.Date.toString(new Date(), justep.Date.STANDART_FORMAT_SHOT)"></input></div> 
    <div class="x-col x-col-fixed x-col-center" xid="col12" style="width:auto;">
     <label xid="label3">到</label></div> 
    <div class="x-col" xid="col2">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="endInput" dataType="Date" style="background-color:#fff;" max="js:new Date()" onChange="endInputChange" bind-value=" justep.Date.toString(new Date(), justep.Date.STANDART_FORMAT_SHOT)"></input></div> </div> 
   <div xid="div6"></div>
   <div xid="div7"></div>
   <div xid="div8"></div></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="czStatisData" limit="10" autoLoad="false">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="margin:10px auto;width:95%;background-color:#fff;">
     
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="color:#888；margin:5px;padding:5px;">
   <div class="x-col" xid="col6" style="margin:0;padding:0;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="margin:0;padding:0;">
     <div class="x-col" xid="col5" style="font-weight:bold;font-size:large;margin:0;padding:0;">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("mc")' style="padding:0px;color:#000;font-size:14px;"></div></div> 
  <div class="x-col" xid="col8" style="font-weight:bold;font-size:large;margin:0;padding:0;"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output12" style="padding:0px;color:#000;font-size:14px;text-align:right;" bind-text=" val(&quot;count&quot;) + '人'"></div></div></div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="margin:0;padding:0;">
     <div class="x-col" xid="col4" style="margin:0;padding:0;">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" format="0,000.00" bind-text='"卡余额：￥" +   val("cz")' style=" color:#FF0000;font-weight:bold;margin-left:5px;font-size:12px;"></div></div> 
  <div class="x-col" xid="col11"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" format="0,000.00" bind-text='"赠送金：￥" +   val("zs")' style=" color:#FF0000;font-weight:bold;margin-left:5px;font-size:12px;text-align:right;"></div></div></div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="margin:0;padding:0;">
     <div class="x-col" xid="col13" style="margin:0;padding:0;">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" style="color:#FF0000;font-weight:bold;margin-left:5px;font-size:12px;" format="0,000" bind-text="'积分金：' +   val(&quot;jfdh&quot;)"></div></div> 
  <div class="x-col" xid="col9"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" format="0,000.00" bind-text="&quot;　占比：￥&quot; +   Math.round(val(&quot;pre&quot;)/ $model.czStatisData.sum(&quot;pre&quot;)*100) + '%'" style=" color:#FF0000;font-weight:bold;margin-left:5px;font-size:12px;text-align:right;"></div></div></div> </div> </div></li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>