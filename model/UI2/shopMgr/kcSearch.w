<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:231px;left:363px;" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="typeData" queryAction="queryV_kc_type" url="/shopMgr/shopMgr" tableName="v_kc_type" idColumn="t_bm_spfl_mc" limit="-1"><column label="bm_gsjg" name="bm_gsjg" type="String" xid="default3"></column>
  <column label="t_bm_spfl_mc" name="t_bm_spfl_mc" type="String" xid="default4"></column>
  <rule xid="rule1">
   <col name="total" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default5">‘全部’</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="goodsData" idColumn="bm_cp" queryAction="queryV_kc_search" url="/shopMgr/shopMgr" tableName="v_kc_search" limit="10"><column label="bm_gsjg" name="bm_gsjg" type="String" xid="default11"></column>
  <column label="编号" name="bm_cp" type="String" xid="default12"></column>
  <column label="品名" name="mc" type="String" xid="default13"></column>
  <column label="mc_jc" name="mc_jc" type="String" xid="default14"></column>
  <column label="jldw" name="jldw" type="String" xid="default15"></column>
  <column label="gg" name="gg" type="String" xid="default31"></column>
  <column label="bm_spfl" name="bm_spfl" type="String" xid="default32"></column>
  <column label="库存" name="sl_qm" type="Decimal" xid="default33"></column>
  <column label="je_dj" name="je_dj" type="Decimal" xid="default34"></column>
  <column label="je_qm" name="je_qm" type="Decimal" xid="default35"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="49"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        title="库存查询" style="background-color:#688CE4;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="分类" xid="button6" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i6" class="icon-chevron-left"/>  
            <span xid="span6">分类</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title">库存查询</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div xid="content" class="x-panel-content x-cards"> 
      <div class="form-group has-feedback" xid="formGroup1">
   <input component="$UI/system/components/justep/input/input" class="form-control input-sm text-white" xid="keyInput" placeHolder="请输入商品名字" onBlur="keyInputBlur"></input>
   <i class="icon-ios7-search-strong form-control-feedback" xid="col3"></i></div><div component="$UI/system/components/bootstrap/row/row" class="row tb-box"> 
        <div class="col col-xs-4" xid="col10"> 
          <div component="$UI/system/components/justep/list/list" class="x-list tb-root"
            xid="rootClassList" data="typeData" dataItemAlias="rootClassRow" autoLoad="false" style="margin-top:10px"> 
           <ul class="x-list-template list-group" xid="listTemplateUl1"> 
              
              <li xid="li1" class="list-group-item text-center tb-nopadding" bind-css="{'current':  val(&quot;t_bm_spfl_mc&quot;)== $model.typeData.val(&quot;t_bm_spfl_mc&quot;)}" bind-click="li1Click"> 
                <h5 xid="h52" bind-text='ref("t_bm_spfl_mc")' class="text-black"><![CDATA[]]></h5> 
              </li> 
            </ul> 
          </div> 
        </div>  
        <div class="col col-xs-8  x-scroll-view" xid="col11">
   
  
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span2">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="goodsData" limit="10" autoLoad="false">
   <ul class="x-list-template" xid="listTemplateUl2">
   <li xid="li2" style="width:95%;background-color:#fff;border-bottom:2px solid #eee;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="color:#888；margin:5px;padding:5px;">
      <div class="x-col" xid="col1" style="margin:0;padding:0;">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="margin:0;padding:0;">
        <div class="x-col" xid="col8" style="font-weight:bold;font-size:large;margin:0;padding:0;">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("mc")' style="padding:0px;color:#000;font-size:14px;"></div></div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="margin:0;padding:0;">
        <div class="x-col" xid="col18" style="margin:0;padding:0;">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" format="0,000.00" bind-text='"库存金额：￥" +   Math.round(val("je_qm")*100)/100' style=" color:#FF0000;font-weight:bold;margin-left:5px;font-size:12px;"></div></div> 
        </div> 
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="margin:0;padding:0;">
   
   <div class="x-col" xid="col13" style="margin:0;padding:0;">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" style="color:#FF0000;font-weight:bold;margin-left:5px;font-size:12px;" format="0,000" bind-text="'库存数量：' +  val(&quot;sl_qm&quot;) "></div></div> </div></div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div></div> 
    </div> 
  </div> 
</div>