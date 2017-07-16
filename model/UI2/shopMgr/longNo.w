<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:304px;left:176px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="longNoData" queryAction="queryV_longNo" url="/shopMgr/shopMgr" tableName="v_longNo" idColumn="bm_gsjg" saveAction="saveAccount" limit="10">
   <column label="bm_gsjg" name="bm_gsjg" type="String" xid="default86"></column>
  <column label="bm" name="bm" type="String" xid="default87"></column>
  <column label="mc" name="mc" type="String" xid="default88"></column>
  <column label="mc_eng" name="mc_eng" type="String" xid="default89"></column>
  <column label="bm_vipfl" name="bm_vipfl" type="String" xid="default90"></column>
  <column label="state" name="state" type="String" xid="default91"></column>
  <column label="mobile" name="mobile" type="String" xid="default92"></column>
  <column label="tel" name="tel" type="String" xid="default93"></column>
  <column label="address" name="address" type="String" xid="default94"></column>
  <column label="email" name="email" type="String" xid="default95"></column>
  <column label="qqmsn" name="qqmsn" type="String" xid="default96"></column>
  <column label="fax" name="fax" type="String" xid="default97"></column>
  <column label="qt" name="qt" type="String" xid="default98"></column>
  <column label="xb" name="xb" type="String" xid="default99"></column>
  <column label="zy" name="zy" type="String" xid="default100"></column>
  <column label="mz" name="mz" type="String" xid="default101"></column>
  <column label="jg" name="jg" type="String" xid="default102"></column>
  <column label="hyzk" name="hyzk" type="String" xid="default103"></column>
  <column label="zjxy" name="zjxy" type="String" xid="default104"></column>
  <column label="sg" name="sg" type="Integer" xid="default105"></column>
  <column label="tz" name="tz" type="Integer" xid="default106"></column>
  <column label="xx" name="xx" type="String" xid="default107"></column>
  <column label="xz" name="xz" type="String" xid="default108"></column>
  <column label="bs" name="bs" type="String" xid="default109"></column>
  <column label="jj" name="jj" type="String" xid="default110"></column>
  <column label="ddtj" name="ddtj" type="String" xid="default111"></column>
  <column label="tjr" name="tjr" type="String" xid="default112"></column>
  <column label="gx" name="gx" type="String" xid="default113"></column>
  <column label="ah" name="ah" type="String" xid="default114"></column>
  <column label="yd" name="yd" type="String" xid="default115"></column>
  <column label="is_jsz" name="is_jsz" type="Integer" xid="default116"></column>
  <column label="is_sjc" name="is_sjc" type="Integer" xid="default117"></column>
  <column label="cph" name="cph" type="String" xid="default118"></column>
  <column label="cx" name="cx" type="String" xid="default119"></column>
  <column label="salo" name="salo" type="String" xid="default120"></column>
  <column label="lyhd" name="lyhd" type="String" xid="default121"></column>
  <column label="hope" name="hope" type="String" xid="default122"></column>
  <column label="half" name="half" type="String" xid="default123"></column>
  <column label="half_nn" name="half_nn" type="Integer" xid="default124"></column>
  <column label="half_work" name="half_work" type="String" xid="default125"></column>
  <column label="half_rq_birth_type" name="half_rq_birth_type" type="String" xid="default126"></column>
  <column label="half_rq_birth" name="half_rq_birth" type="DateTime" xid="default127"></column>
  <column label="half_zjxy" name="half_zjxy" type="String" xid="default128"></column>
  <column label="half_xx" name="half_xx" type="String" xid="default129"></column>
  <column label="half_xz" name="half_xz" type="String" xid="default130"></column>
  <column label="half_yyah" name="half_yyah" type="String" xid="default131"></column>
  <column label="half_smoke" name="half_smoke" type="String" xid="default132"></column>
  <column label="half_drink" name="half_drink" type="String" xid="default133"></column>
  <column label="half_sr" name="half_sr" type="String" xid="default134"></column>
  <column label="wedd" name="wedd" type="DateTime" xid="default135"></column>
  <column label="children" name="children" type="String" xid="default136"></column>
  <column label="children_nn" name="children_nn" type="Integer" xid="default137"></column>
  <column label="children_xb" name="children_xb" type="String" xid="default138"></column>
  <column label="children_school" name="children_school" type="String" xid="default139"></column>
  <column label="children_rq_birth_type" name="children_rq_birth_type" type="String" xid="default140"></column>
  <column label="children_rq_birth" name="children_rq_birth" type="DateTime" xid="default141"></column>
  <column label="children_xx" name="children_xx" type="String" xid="default142"></column>
  <column label="children_xz" name="children_xz" type="String" xid="default143"></column>
  <column label="children_xh" name="children_xh" type="String" xid="default144"></column>
  <column label="family_other" name="family_other" type="String" xid="default145"></column>
  <column label="is_password" name="is_password" type="Integer" xid="default146"></column>
  <column label="password" name="password" type="String" xid="default147"></column>
  <column label="jf_qc" name="jf_qc" type="Decimal" xid="default148"></column>
  <column label="jf_in" name="jf_in" type="Decimal" xid="default149"></column>
  <column label="jf_out" name="jf_out" type="Decimal" xid="default150"></column>
  <column label="jf_qm" name="jf_qm" type="Decimal" xid="default151"></column>
  <column label="je_xf_sum" name="je_xf_sum" type="Decimal" xid="default152"></column>
  <column label="lastxf_date" name="lastxf_date" type="DateTime" xid="default153"></column>
  <column label="rq_birth_type" name="rq_birth_type" type="String" xid="default154"></column>
  <column label="rq_birth" name="rq_birth" type="DateTime" xid="default155"></column>
  <column label="rq_out" name="rq_out" type="DateTime" xid="default156"></column>
  <column label="bm_py" name="bm_py" type="String" xid="default157"></column>
  <column label="bm_wb" name="bm_wb" type="String" xid="default158"></column>
  <column label="bm_jbr" name="bm_jbr" type="String" xid="default159"></column>
  <column label="rq_new" name="rq_new" type="DateTime" xid="default160"></column>
  <column label="bm_user" name="bm_user" type="String" xid="default161"></column>
  <column label="rq_edit" name="rq_edit" type="DateTime" xid="default162"></column>
  <column label="bm_edit" name="bm_edit" type="String" xid="default163"></column>
  <column label="last_n" name="last_n" type="Integer" xid="default164"></column>
  <column label="bz" name="bz" type="String" xid="default165"></column>
  <column label="bm_tjr" name="bm_tjr" type="String" xid="default166"></column>
  <column label="cradno" name="cradno" type="String" xid="default167"></column>
  <column label="is_zk" name="is_zk" type="Integer" xid="default168"></column>
  <column label="is_leap" name="is_leap" type="Integer" xid="default169"></column>
  <column label="mc_bm_vipfl" name="mc_bm_vipfl" type="String" xid="default170"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="久未到店"
          class="x-titlebar" style="background-color:#688CE4;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">久未到店</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C78F767F15E0000170DB1B201910A3C0" style="background-color:#eee;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div xid="pieDiv" style="height:40%;background-color:#fff;margin:0px 10px 10px 10px;position:relative;"></div><div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="longNoData" limit="10" autoLoad="false">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="margin:10px auto;width:95%;background-color:#fff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="color:#888">
   <div class="x-col" xid="col1">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col8"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("mc")' style="font-size:16px;padding:0px;color:#000"></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col18">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("tel")' style="padding:0px"></div></div> </div></div>
   <div class="x-col" xid="col3">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
    <div class="x-col" xid="col11"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("mc_bm_vipfl")' style="padding:0px;text-align:right;"></div></div>
    </div> 
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col14"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='ref("lastxf_date")' style="padding:0px;text-align:right;"></div></div>
   </div></div></div></li></ul> </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>