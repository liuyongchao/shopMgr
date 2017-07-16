<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:287px;left:410px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="qkStatisData" queryAction="queryV_qk_statis" url="/shopMgr/shopMgr" idColumn="bm_gsjg" tableName="v_qk_statis" limit="-1" saveAction="saveAccount" orderBy="rq:desc"><column label="bm_gsjg" name="bm_gsjg" type="String" xid="default6"></column>
  <column label="日期" name="rq" type="String" xid="default7"></column>
  <column label="消费欠款" name="je_total" type="Decimal" xid="default8"></column>
  <column label="je_yhk" name="je_yhk" type="Decimal" xid="default9"></column>
  <column label="充值欠款" name="je_qk" type="Decimal" xid="default10"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="background-color:#688CE4;" xid="titleBar" title="顾客欠款">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
       <i class="icon-chevron-left" xid="i1"></i>
       <span xid="span1"></span></a> </div> 
     <div class="x-titlebar-title" xid="title2">顾客欠款</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color: rgb(238, 238, 238); bottom: 0px;width:100%;" _xid="C78F66AF9E3000011EAA1610157A11A8">
    <div style="margin-bottom:10px" xid="div4"></div>
    <div xid="searchDiv" style="margin:0px 10px;padding:0;height:100px;position:relative;border-bottom:1px solid #eee;background-color:#839FE4;disaly:none" class="searchDiv">
     <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="欠款查询" style="background-color:#839FE4;">
      <div class="x-titlebar-title pull-left" xid="title1" style="text-align:left;margin-left:10px">欠款查询</div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin:0;padding:0">
      <div class="x-col" xid="col10">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="startInput" dataType="Date" style="background-color:#fff;" format="yyyy-MM-dd" onChange="startInputChange" max="js:new Date()"></input></div> 
      <div class="x-col x-col-fixed x-col-center" xid="col12" style="width:auto;">
       <label xid="label3">到</label></div> 
      <div class="x-col" xid="col11">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="endInput" dataType="Date" style="background-color:#fff;" format="yyyy-MM-dd" max="js:new Date()" onChange="endInputChange"></input></div> </div> 
     <div xid="div6"></div>
     <div xid="div7"></div>
     <div xid="div8"></div></div> 
    <div xid="lineDiv" style="height:40%;background-color:#fff;margin: 0px 10px 10px 10px"></div>
    <div xid="tableDiv" style="background-color:#fff;margin:10px">
     <div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" responsive="true" class="table table-condensed x-dt-title-center" xid="dataTables1" data="qkStatisData" showRowNumber="false" disableInfiniteLoad="true" disablePullToRefresh="false" onCellRender="dataTables1CellRender">
      <columns xid="columns1">
       <column name="rq" xid="column1" className="x-dt-cell-center"></column>
  <column name="je_total" xid="column2" className="x-dt-cell-center"></column>
  <column name="je_qk" xid="column3" className="x-dt-cell-center"></column></columns> </div> </div> </div> </div></div>