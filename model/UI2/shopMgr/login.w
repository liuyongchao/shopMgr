<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:297px;left:486px;" onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/baasData" autoLoad="false"
      xid="userData" queryAction="queryT_sys_user" saveAction="saveT_sys_user" url="/shopMgr/shopMgr"
      tableName="t_sys_user" idColumn="bm">
      <master xid="default46"/>  
      <filter name="filter0" xid="filter1"/>  
      <filter name="filter1" xid="filter2"/>  
      <column label="bm" name="bm" type="String" xid="default19"></column>
  <column label="mc" name="mc" type="String" xid="default20"></column>
  <column label="Password" name="Password" type="String" xid="default21"></column>
  <column label="Mobile_Password" name="Mobile_Password" type="String" xid="default22"></column>
  <column label="bm_gsjg" name="bm_gsjg" type="String" xid="default23"></column>
  <column label="ownrole" name="ownrole" type="String" xid="default24"></column>
  <column label="rq_new" name="rq_new" type="DateTime" xid="default25"></column>
  <column label="bm_user" name="bm_user" type="String" xid="default26"></column>
  <column label="is_stop" name="is_stop" type="Integer" xid="default27"></column>
  <column label="rq_stop" name="rq_stop" type="DateTime" xid="default28"></column>
  <column label="bm_stop" name="bm_stop" type="String" xid="default29"></column>
  <column label="rq_edit" name="rq_edit" type="DateTime" xid="default30"></column>
  <column label="bm_edit" name="bm_edit" type="String" xid="default31"></column>
  <column label="last_n" name="last_n" type="Integer" xid="default32"></column>
  <column label="bz" name="bz" type="String" xid="default33"></column>
  <column label="owngsjg" name="owngsjg" type="String" xid="default34"></column>
  <column label="ownskfa" name="ownskfa" type="String" xid="default35"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="memoryData" idColumn="username"><column label="用户名" name="username" type="String" xid="xid1"></column>
  <column label="密码" name="userpassword" type="String" xid="xid2"></column>
  <data xid="default9">[{}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="width:100%;height:100%;"> 
    <div class="x-panel-top" xid="top1" style="position:relative;z-index:3;">
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" title="用户登录" style="color:#000000;font-weight:bold;font-size:20px;vertical-align:middle;text-align:center;background-color:#E2E3E5;"> 
        <div class="x-titlebar-left" xid="left1">
          </div>  
        <div class="x-titlebar-title" xid="title1">用户登录</div>  
        <div class="x-titlebar-right reverse" xid="right1"/>
      </div>
    </div>  
     
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-panel-content" xid="content1" style="vertical-align:middle;text-align:center;width:100%;"> 
      <div xid="div1" style="height:40%;background-color:#ECEDEF;"><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row2" style="height:100%;position:relative;z-index:0;">
   <div class="x-col" xid="col4"></div>
   <div class="x-col" xid="col5">
  <img src="$UI/shopMgr/img/logo.png" alt="" xid="image2" style="width:100%;display:none"></img></div>
   <div class="x-col" xid="col6"></div></div>
  </div><div xid="div2" style="position:relative;background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row row-line" xid="row7"> 
        <div class="x-col" xid="col10">
          <div xid="div7" class="input-group "> 
            <span class="input-group-addon" xid="span6" style="color:#868686;vertical-align:middle;text-align:center;font-size:small;padding-right:4px;"><![CDATA[]]>  
              <i class="icon-person" xid="i7" />
            </span>  
            <span xid="span1" class="input-group-addon" style="color:#B8B8B8;font-size:small;padding-left:0px;"><![CDATA[账号 丨]]></span>
            <input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="usernameInput" style="vertical-align:middle;color:#5B5B5B;font-size:small;font-family:微软雅黑;background-color:#fff;" bind-ref='memoryData.ref("username")' /> 
          </div>
        </div> 
      </div><div xid="div3" style="border-top:1px solid #eee"></div><div component="$UI/system/components/justep/row/row" class="x-row row-line" xid="row8"> 
        <div class="x-col" xid="col16">
          <div class="input-group" xid="div8"> 
            <span class="input-group-addon" xid="span3" style="color:#868686;vertical-align:middle;text-align:center;font-size:small;padding-right:4px;"> 
              <i class="icon-locked" xid="i3" />
            </span>  
            <span xid="span4" class="input-group-addon" style="color:#B8B8B8;font-size:small;padding-left:0px;"><![CDATA[密码 丨]]></span>
            <input component="$UI/system/components/justep/input/password" class="form-control" xid="passwordInput" style="vertical-align:middle;color:#5B5B5B;font-size:small;font-family:微软雅黑;background-color:#fff;" bind-ref='memoryData.ref("userpassword")' />
          </div>
        </div> 
      </div>
  </div><div xid="div4" style="border-top:1px solid #eee"></div><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1" style="width:100%;position:relative;z-index:0;background-color:white;"> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
          <div class="x-col" xid="col9">
            <a component="$UI/system/components/justep/button/button" class="btn btn-default btn_login" label="登录" xid="loginBtn" style="background-color:#30B4FF;width:100%;" onClick="loginBtnClick"> 
              <i xid="i1" />  
              <span xid="span2">登录</span>
            </a>
          </div>
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"> 
          <div class="x-col x-col-fixed" xid="col13" style="width:auto;margin:5px;position:relative;">
            <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" label="记住密码" style="color:#808080;" xid="remember" onChange="rememberChange" checked="true" />
          </div>  
          <div class="x-col" xid="col14"></div>
          <div class="x-col" xid="col15" />  
          <div class="x-col x-col-fixed" xid="col8" style="width:auto;display:none;">
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label pull-right" label="用户注册" style="color:#808080;vertical-align:middle;text-align:center;" xid="register" onClick="registerClick"> 
              <i xid="i2" />  
              <span xid="span5">用户注册</span>
            </a>
          </div>
        </div> 
      </div> 
    </div></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog"
    style="top:8px;left:103px;" routable="true" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/messageDialog/messageDialog"
    xid="messageDialog" title="温馨提示：" message="用户名或密码输入不正确，请核对后重新输入！" style="top:18px;left:138px;"/>
</div>
