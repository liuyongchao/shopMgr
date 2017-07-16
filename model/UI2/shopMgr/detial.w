<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:360px;left:380px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="v_ys_dateData" queryAction="queryV_ys_statis" url="/shopMgr/shopMgr" saveAction="saveMds_airmonitor_info" limit="-1" tableName="v_ys_statis" idColumn="bm_gsjg" orderBy="rq:desc">
   <column isCalculate="true" label="营收" name="sum_total" type="Decimal" xid="xid1"></column>
  <column label="bm_gsjg" name="bm_gsjg" type="String" xid="default42"></column>
  <column label="bm_vip" name="bm_vip" type="String" xid="default43"></column>
  <column label="日期" name="rq" type="String" xid="default44"></column>
  <column label="je_cz" name="je_cz" type="Decimal" xid="default45"></column>
  <column label="je_zs" name="je_zs" type="Decimal" xid="default46"></column>
  <column label="je_jfdh" name="je_jfdh" type="Decimal" xid="default47"></column>
  <column label="je_qk" name="je_qk" type="Decimal" xid="default48"></column>
  <column label="je_xf_xj" name="je_xf_xj" type="Decimal" xid="default49"></column>
  <column label="je_xf_bank" name="je_xf_bank" type="Decimal" xid="default50"></column>
  <column label="je_xf_vipkye" name="je_xf_vipkye" type="Decimal" xid="default51"></column>
  <column label="je_xf_vipzsye" name="je_xf_vipzsye" type="Decimal" xid="default52"></column>
  <column label="je_xf_vipshye" name="je_xf_vipshye" type="Decimal" xid="default53"></column>
  <column label="je_xf_djj" name="je_xf_djj" type="Decimal" xid="default54"></column>
  <column label="je_xf_tg" name="je_xf_tg" type="Decimal" xid="default55"></column>
  <column label="je_xf_qk" name="je_xf_qk" type="Decimal" xid="default56"></column>
  <column label="je_xf_md" name="je_xf_md" type="Decimal" xid="default57"></column>
  <column label="je_xf_my" name="je_xf_my" type="Decimal" xid="default58"></column>
  <column label="je_xfhk_xj_sum" name="je_xfhk_xj_sum" type="Decimal" xid="default59"></column>
  <column label="je_xfhk_bank_sum" name="je_xfhk_bank_sum" type="Decimal" xid="default60"></column>
  <column label="je_czhk_xj_sum" name="je_czhk_xj_sum" type="Decimal" xid="default61"></column>
  <column label="je_czhk_bank_sum" name="je_czhk_bank_sum" type="Decimal" xid="default62"></column>
  <column label="je_xftk_xj" name="je_xftk_xj" type="Decimal" xid="default63"></column>
  <column label="je_xftk_bank" name="je_xftk_bank" type="Decimal" xid="default64"></column>
  <column label="je_xftk_vipkye" name="je_xftk_vipkye" type="Decimal" xid="default65"></column>
  <column label="je_xftk_vipzsye" name="je_xftk_vipzsye" type="Decimal" xid="default66"></column>
  <column label="je_xftk_vipshye" name="je_xftk_vipshye" type="Decimal" xid="default67"></column>
  <column label="je_xftk_djj" name="je_xftk_djj" type="Decimal" xid="default68"></column>
  <column label="je_xftk_tg" name="je_xftk_tg" type="Decimal" xid="default69"></column>
  <column label="je_xftk_cqk" name="je_xftk_cqk" type="Decimal" xid="default70"></column>
  <column label="je_xftk_md" name="je_xftk_md" type="Decimal" xid="default71"></column>
  <column label="je_xftk_my" name="je_xftk_my" type="Decimal" xid="default72"></column>
  <column label="bm_vipfl" name="bm_vipfl" type="String" xid="default73"></column>
  <filter name="filter0" xid="filter1"></filter>
  <rule xid="rule1">
   <col name="sum_total" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default10">$row.val(&quot;je_xf_xj&quot;) + $row.val(&quot;je_xf_bank&quot;) + $row.val(&quot;je_xf_vipshye&quot;) + $row.val(&quot;je_xf_djj&quot;) + $row.val(&quot;je_xf_tg&quot;) + $row.val(&quot;je_xf_qk&quot;) + $row.val(&quot;je_xf_md&quot;) + $row.val(&quot;je_xf_my&quot;)</expr></calculate> </col> 
   <col name="je_xf_xj" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default11"></expr></calculate> </col> 
   <col name="je_xf_bank" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default12"></expr></calculate> </col> 
   <col name="je_xf_vipshye" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default13"></expr></calculate> </col> 
   <col name="je_xf_djj" xid="ruleCol5">
    <calculate xid="calculate5">
     <expr xid="default14"></expr></calculate> </col> 
   <col name="je_xf_tg" xid="ruleCol6">
    <calculate xid="calculate6">
     <expr xid="default15"></expr></calculate> </col> 
   <col name="je_xf_qk" xid="ruleCol7">
    <calculate xid="calculate7">
     <expr xid="default16"></expr></calculate> </col> 
   <col name="je_xf_md" xid="ruleCol8">
    <calculate xid="calculate8">
     <expr xid="default17"></expr></calculate> </col> 
   <col name="je_xf_my" xid="ruleCol9">
    <calculate xid="calculate9">
     <expr xid="default18"></expr></calculate> </col> 
   <col name="rq" xid="ruleCol10">
    <calculate xid="calculate10">
     <expr xid="default1"></expr></calculate> </col> </rule></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full x-has-iosstatusbar" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="background-color:#688CE4;" xid="titleBar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color: rgb(238, 238, 238); bottom: 0px;width:100%;" _xid="C78F66AF9E3000011EAA1610157A11A8">
  
  
  <div style="margin-bottom:10px" xid="div4"></div><div xid="searchDiv" style="margin:0px 10px;padding:0;height:100px;position:relative;border-bottom:1px solid #eee;background-color:#839FE4;disaly:none" class="searchDiv">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="营收查询" style="background-color:#839FE4;">
    <div class="x-titlebar-title pull-left" xid="title1" style="text-align:left;margin-left:10px">营收查询</div></div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin:0;padding:0">
    <div class="x-col" xid="col10">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="startInput" dataType="Date" style="background-color:#fff;" format="yyyy-MM-dd" onChange="startInputChange" max="js:new Date()"></input></div> 
    <div class="x-col x-col-fixed x-col-center" xid="col12" style="width:auto;">
     <label xid="label3">到</label></div> 
    <div class="x-col" xid="col11">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="endInput" dataType="Date" style="background-color:#fff;" format="yyyy-MM-dd" max="js:new Date()" onChange="endInputChange"></input></div> </div> 
   <div xid="div6"></div>
   <div xid="div7"></div>
   <div xid="div8"></div></div><div xid="pieDiv" style="height:40%;background-color:#fff;margin: 0px 10px 10px 10px"></div>
  <div xid="tableDiv" style="background-color:#fff;margin:10px">
   <div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" responsive="true" class="table table-condensed x-dt-title-center" xid="dataTables1" data="v_ys_dateData" showRowNumber="false" disableInfiniteLoad="true" disablePullToRefresh="false" onCellRender="dataTables1CellRender">
    <columns xid="columns1">
     <column name="rq" xid="column3" className="x-dt-cell-center" orderable="false"></column>
     <column name="sum_total" xid="column4" className="x-dt-cell-center" orderable="false"></column></columns> </div> 
  </div>
  </div>
  </div> 
</div>