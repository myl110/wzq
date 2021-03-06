<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>  
<html>
<head>
  <!-- Standard Meta -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

  <!-- Site Properties -->
  <title>五子棋OnLine</title>
  <link rel="stylesheet" type="text/css" href="${path}dist/components/reset.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/site.css">

  <link rel="stylesheet" type="text/css" href="${path}dist/components/container.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/grid.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/header.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/image.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/menu.css">

  <link rel="stylesheet" type="text/css" href="${path}dist/components/divider.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/segment.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/form.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/input.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/button.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/list.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/message.css">
  <link rel="stylesheet" type="text/css" href="${path}dist/components/icon.css">

  <script src="${path}page/assets/library/jquery.min.js"></script>
  <script src="${path}dist/components/form.js"></script>
  <script src="${path}dist/components/transition.js"></script>

  <style type="text/css">
    body {
      background-color: #DADADA;
    }
    body > .grid {
      height: 100%;
    }
    .image {
      margin-top: -100px;
    }
    .column {
      max-width: 450px;
    }
  </style>
  <script>
  $(document)
    .ready(function() {
      $('.ui.form').form
      ({
          fields: {
            us102: {
              rules: [
                {
                  type   : 'empty',
                  prompt : '请输入用户名'
                }
              ]
            },
            password: {
              identifier  : 'us103',
              rules: [
                {
                  type   : 'empty',
                  prompt : '请输入密码'
                }
              ]
            }
          }
        })
      ;
    })
  ;
  </script>
</head>
<body onclick="refresh()">

<div class="ui middle aligned center aligned grid">
  <div class="column">
    <h2 class="ui teal image header">
      <img src="${path}images/logo.png" class="image">
      <div class="title">
        	<div style="color:#111111">五子棋<i>ONLINE</i></div>
      </div>
    </h2>
    <form class="ui large form" action="${path }login.html" method="post" >
      <div class="ui stacked segment">
        <div class="field">
          <div class="ui left icon input">
            <i class="user icon"></i>
            <input type="text" name="us102" placeholder="用户名">
          </div>
        </div>
        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="us103" placeholder="密码">
          </div>
        </div>
        <div class="ui fluid large teal submit button" style="background-color: #111111;color: white"onclick='changeText()'>登录</div>
      </div>

      <div class="ui error message"></div>
    </form>

    <div class="ui message">
      	没有账号? <a href="#">注册</a>
    </div>
  </div>
</div>
<script type="text/javascript">
window.beforeunload=function changeText(){
	alert(document.getElementById('msg').innerHTML);
	document.getElementById('msg').innerHTML = '';
}
</script>
</body>
</html>
