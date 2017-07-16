<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:505px;left:732px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="storeData" idColumn="bm" limit="-1"><column name="bm" type="Integer" xid="xid1"></column>
  <column name="mc" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="inComeData" queryAction="queryV_ys_statis" url="/shopMgr/shopMgr" saveAction="saveMds_airmonitor_info" limit="-1" tableName="v_ys_statis" idColumn="bm_gsjg"></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="longNoData" queryAction="queryV_bm_vip" url="/shopMgr/shopMgr" tableName="v_bm_vip" idColumn="bm_gsjg" saveAction="saveMds_airmonitor_info"><column label="bm_gsjg" name="bm_gsjg" type="String" xid="default5"></column>
  <column label="bm" name="bm" type="String" xid="default6"></column>
  <column label="mc" name="mc" type="String" xid="default7"></column>
  <column label="mc_eng" name="mc_eng" type="String" xid="default8"></column>
  <column label="bm_vipfl" name="bm_vipfl" type="String" xid="default9"></column>
  <column label="state" name="state" type="String" xid="default10"></column>
  <column label="mobile" name="mobile" type="String" xid="default11"></column>
  <column label="tel" name="tel" type="String" xid="default12"></column>
  <column label="address" name="address" type="String" xid="default13"></column>
  <column label="email" name="email" type="String" xid="default14"></column>
  <column label="qqmsn" name="qqmsn" type="String" xid="default15"></column>
  <column label="fax" name="fax" type="String" xid="default16"></column>
  <column label="qt" name="qt" type="String" xid="default17"></column>
  <column label="xb" name="xb" type="String" xid="default18"></column>
  <column label="zy" name="zy" type="String" xid="default19"></column>
  <column label="mz" name="mz" type="String" xid="default20"></column>
  <column label="jg" name="jg" type="String" xid="default21"></column>
  <column label="hyzk" name="hyzk" type="String" xid="default22"></column>
  <column label="zjxy" name="zjxy" type="String" xid="default23"></column>
  <column label="sg" name="sg" type="Integer" xid="default24"></column>
  <column label="tz" name="tz" type="Integer" xid="default25"></column>
  <column label="xx" name="xx" type="String" xid="default26"></column>
  <column label="xz" name="xz" type="String" xid="default27"></column>
  <column label="bs" name="bs" type="String" xid="default28"></column>
  <column label="jj" name="jj" type="String" xid="default29"></column>
  <column label="ddtj" name="ddtj" type="String" xid="default30"></column>
  <column label="tjr" name="tjr" type="String" xid="default31"></column>
  <column label="gx" name="gx" type="String" xid="default32"></column>
  <column label="ah" name="ah" type="String" xid="default65"></column>
  <column label="yd" name="yd" type="String" xid="default66"></column>
  <column label="is_jsz" name="is_jsz" type="Integer" xid="default67"></column>
  <column label="is_sjc" name="is_sjc" type="Integer" xid="default68"></column>
  <column label="cph" name="cph" type="String" xid="default69"></column>
  <column label="cx" name="cx" type="String" xid="default70"></column>
  <column label="salo" name="salo" type="String" xid="default71"></column>
  <column label="lyhd" name="lyhd" type="String" xid="default72"></column>
  <column label="hope" name="hope" type="String" xid="default73"></column>
  <column label="half" name="half" type="String" xid="default74"></column>
  <column label="half_nn" name="half_nn" type="Integer" xid="default75"></column>
  <column label="half_work" name="half_work" type="String" xid="default76"></column>
  <column label="half_rq_birth_type" name="half_rq_birth_type" type="String" xid="default77"></column>
  <column label="half_rq_birth" name="half_rq_birth" type="DateTime" xid="default78"></column>
  <column label="half_zjxy" name="half_zjxy" type="String" xid="default79"></column>
  <column label="half_xx" name="half_xx" type="String" xid="default80"></column>
  <column label="half_xz" name="half_xz" type="String" xid="default81"></column>
  <column label="half_yyah" name="half_yyah" type="String" xid="default82"></column>
  <column label="half_smoke" name="half_smoke" type="String" xid="default83"></column>
  <column label="half_drink" name="half_drink" type="String" xid="default84"></column>
  <column label="half_sr" name="half_sr" type="String" xid="default85"></column>
  <column label="wedd" name="wedd" type="DateTime" xid="default86"></column>
  <column label="children" name="children" type="String" xid="default87"></column>
  <column label="children_nn" name="children_nn" type="Integer" xid="default88"></column>
  <column label="children_xb" name="children_xb" type="String" xid="default89"></column>
  <column label="children_school" name="children_school" type="String" xid="default90"></column>
  <column label="children_rq_birth_type" name="children_rq_birth_type" type="String" xid="default91"></column>
  <column label="children_rq_birth" name="children_rq_birth" type="DateTime" xid="default92"></column>
  <column label="children_xx" name="children_xx" type="String" xid="default93"></column>
  <column label="children_xz" name="children_xz" type="String" xid="default94"></column>
  <column label="children_xh" name="children_xh" type="String" xid="default95"></column>
  <column label="family_other" name="family_other" type="String" xid="default96"></column>
  <column label="is_password" name="is_password" type="Integer" xid="default97"></column>
  <column label="password" name="password" type="String" xid="default98"></column>
  <column label="jf_qc" name="jf_qc" type="Decimal" xid="default99"></column>
  <column label="jf_in" name="jf_in" type="Decimal" xid="default100"></column>
  <column label="jf_out" name="jf_out" type="Decimal" xid="default101"></column>
  <column label="jf_qm" name="jf_qm" type="Decimal" xid="default102"></column>
  <column label="je_xf_sum" name="je_xf_sum" type="Decimal" xid="default103"></column>
  <column label="lastxf_date" name="lastxf_date" type="DateTime" xid="default104"></column>
  <column label="rq_birth_type" name="rq_birth_type" type="String" xid="default105"></column>
  <column label="rq_birth" name="rq_birth" type="DateTime" xid="default106"></column>
  <column label="rq_out" name="rq_out" type="DateTime" xid="default107"></column>
  <column label="bm_py" name="bm_py" type="String" xid="default108"></column>
  <column label="bm_wb" name="bm_wb" type="String" xid="default109"></column>
  <column label="bm_jbr" name="bm_jbr" type="String" xid="default110"></column>
  <column label="rq_new" name="rq_new" type="DateTime" xid="default111"></column>
  <column label="bm_user" name="bm_user" type="String" xid="default112"></column>
  <column label="rq_edit" name="rq_edit" type="DateTime" xid="default113"></column>
  <column label="bm_edit" name="bm_edit" type="String" xid="default114"></column>
  <column label="last_n" name="last_n" type="Integer" xid="default115"></column>
  <column label="bz" name="bz" type="String" xid="default116"></column>
  <column label="bm_tjr" name="bm_tjr" type="String" xid="default117"></column>
  <column label="cradno" name="cradno" type="String" xid="default118"></column>
  <column label="is_zk" name="is_zk" type="Integer" xid="default119"></column>
  <column label="is_leap" name="is_leap" type="Integer" xid="default120"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="qkStatisData" queryAction="queryV_qk_statis" url="/shopMgr/shopMgr" idColumn="bm_gsjg" tableName="v_qk_statis" limit="-1">
   <column label="bm_gsjg" name="bm_gsjg" type="String" xid="default3"></column>
  <column label="日期" name="rq" type="String" xid="default1"></column>
  <column label="消费欠款" name="je_total" type="Decimal" xid="default2"></column>
  <column label="je_yhk" name="je_yhk" type="Decimal" xid="default33"></column>
  <column label="充值欠款" name="je_qk" type="Decimal" xid="default4"></column>
  <column isCalculate="true" label="顾客欠款" name="sum_total" type="Decimal" xid="xid3"></column>
  <rule xid="rule1">
   <col name="sum_total" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default34"></expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="gsjgData" queryAction="queryT_bm_gsjg" url="/shopMgr/shopMgr" tableName="t_bm_gsjg" idColumn="bm" limit="-1">
   <column label="bm" name="bm" type="String" xid="default40"></column>
   <column label="mc" name="mc" type="String" xid="default39"></column>
   <column label="js" name="js" type="Integer" xid="default38"></column>
   <column label="bm_1" name="bm_1" type="String" xid="default37"></column>
   <column label="bm_2" name="bm_2" type="String" xid="default36"></column>
   <column label="bm_3" name="bm_3" type="String" xid="default35"></column>
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
   <column label="address" name="address" type="String" xid="default56"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="czStatisData" queryAction="queryV_cz_statis" url="/shopMgr/shopMgr" tableName="v_cz_statis" idColumn="bm_gsjg" saveAction="saveMds_classrooom_info" limit="-1"><column label="bm_gsjg" name="bm_gsjg" type="String" xid="default136"></column>
  <column label="count" name="count" type="Integer" xid="default137"></column>
  <column label="rq" name="rq" type="String" xid="default138"></column>
  <column label="cz" name="cz" type="Decimal" xid="default139"></column>
  <column label="zs" name="zs" type="Decimal" xid="default140"></column>
  <column label="jfdh" name="jfdh" type="Decimal" xid="default141"></column>
  <column label="pre" name="pre" type="Decimal" xid="default142"></column>
  <column label="mc" name="mc" type="String" xid="default143"></column>
  <column label="bm_vipfl" name="bm_vipfl" type="String" xid="default144"></column>
  <column isCalculate="true" label="充值统计" name="sum_total" type="String" xid="xid10"></column>
  <rule xid="rule3">
   <col name="sum_total" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default145">$model.czStatisData.sum(&quot;cz&quot;) + $model.czStatisData.sum(&quot;zs&quot;) + $model.czStatisData.sum(&quot;jfdh&quot;)</expr></calculate> </col> </rule></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full x-has-iosstatusbar" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#688CE4;">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
   <i class="icon-chevron-left" xid="i4"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1" style="background-color:#eee;">      <!-- Small boxes (Stat box) -->
      <div xid="div6">
   
   
   <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2" style="margin: 10px 0px 0px 0px;padding:0;">
   <div class="col col-xs-4" xid="todayIn" bind-click="todayInClick" style="padding:5px;"><div xid="div27" style="height:100%;background-color:#38A1DB;" class="img-rounded">
   <div xid="div33" style="height:70%;">
    <p xid="p27" style="text-align:center;line-height:84px;font-size:20px;">0</p></div> 
   <div xid="div28" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h35" style="padding:0;margin:0;text-align:center;line-height:36px;">今日营收</h4></div> </div></div>
   <div class="col col-xs-4" xid="weekIn" bind-click="weekInClick" style="padding:5px;"><div xid="div35" style="height:100%;background-color:#688CE4;" class="img-rounded">
   <div xid="div34" style="height:70%;">
    <p xid="p29" style="text-align:center;line-height:84px;font-size:20px;">0</p></div> 
   <div xid="div36" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h41" style="padding:0;margin:0;text-align:center;line-height:36px;">本周营收</h4></div> </div></div>
   <div class="col col-xs-4" xid="monthIn" bind-click="monthInClick" style="padding:5px;"><div xid="div38" style="height:100%;background-color:#8D67E0;" class="img-rounded">
   <div xid="div37" style="height:70%;">
    <p xid="p30" style="text-align:center;line-height:84px;font-size:20px;">0</p></div> 
   <div xid="div39" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h42" style="padding:0;margin:0;text-align:center;line-height:36px;">本月营收</h4></div> </div></div>
  <div class="col col-xs-4" xid="czStatis" bind-click="czStatisClick" style="padding:5px;"><div xid="div41" style="height:100%;background-color:#14C763;" class="img-rounded">
   <div xid="div40" style="height:70%;">
    <p xid="p35" style="text-align:center;line-height:84px;font-size:20px;">0</p></div> 
   <div xid="div45" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h44" style="padding:0;margin:0;text-align:center;line-height:36px;">充值统计</h4></div> </div>
  </div>
  <div class="col col-xs-4" xid="qkStatis" bind-click="qkStatisClick" style="padding:5px;"><div xid="div7" style="height:100%;background-color:#F4B613;" class="img-rounded">
   <div xid="div5" style="height:70%;">
    <p xid="p2" style="text-align:center;line-height:84px;font-size:20px;">0</p></div> 
   <div xid="div8" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h411" style="padding:0;margin:0;text-align:center;line-height:36px;">顾客欠款</h4></div> </div></div>
  <div class="col col-xs-4" xid="longNo" bind-click="longNoClick" style="padding:5px;"><div xid="div56" style="height:100%;background-color:#FF8A4A;" class="img-rounded">
   <div xid="div51" style="height:70%;">
    <p xid="p31" style="text-align:center;line-height:84px;font-size:20px;">0</p></div> 
   <div xid="div57" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h46" style="padding:0;margin:0;text-align:center;line-height:36px;">久未到店</h4></div> </div></div>
  <div class="col col-xs-4" xid="kcSearch" bind-click="kcSearchClick" style="padding:5px;"><div xid="div50" style="height:100%;background-color:#FC5366;" class="img-rounded">
   <div xid="div49" style="height:70%;" align="center">
    <i xid="i1" class="linear linear-book" style="font-size:48px;text-align:center;line-height:84px;color:#fff"></i></div> 
   <div xid="div54" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h47" style="padding:0;margin:0;text-align:center;line-height:36px;">库存查询</h4></div> </div></div>
  <div class="col col-xs-4" xid="moreIn" bind-click="moreInClick" style="padding:5px;"><div xid="div47" style="height:100%;background-color:#85CF18;" class="img-rounded">
   <div xid="div42" style="height:70%;" align="center">
    <i xid="i12" class="dataControl dataControl-rmb" style="font-size:48px;text-align:center;line-height:84px;color:#fff"></i></div> 
   <div xid="div48" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h43" style="padding:0;margin:0;text-align:center;line-height:36px;">更多营收</h4></div> </div></div>
  <div class="col col-xs-4" xid="ownBtn" bind-click="ownBtnClick" style="padding:5px;"><div xid="div10" style="height:100%;background-color:#38A1DB;" class="img-rounded">
   <div xid="div11" style="height:70%;" align="center">
    <i xid="i3" class="dataControl dataControl-userl" style="font-size:48px;text-align:center;line-height:84px;color:#fff"></i></div> 
   <div xid="div1" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;">
    <h4 xid="h410" style="padding:0;margin:0;text-align:center;line-height:36px;">个人中心</h4></div> </div></div>
  <div class="col col-xs-4" xid="employees" style="padding:5px;display:none"><div xid="div52" style="height:100%;background-color:#38A1DB;" class="img-rounded">
   <div xid="div55" style="height:70%;" align="center">
    <i xid="i13" class="dataControl dataControl-appquality" style="font-size:48px;text-align:center;line-height:84px;color:#fff"></i></div> 
   <div xid="div53" style="height:30%;background-color:#fff;border-bottom-left-radius:6px;border-bottom-right-radius:6px;" id="search">
    <h4 xid="h48" style="padding:0;margin:0;text-align:center;line-height:36px;">员工业绩</h4></div> </div></div></div></div>
  </div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog" style="top:500px;left:485px;" forceRefreshOnOpen="true" onClose="windowDialogClose"></span>
  </div>