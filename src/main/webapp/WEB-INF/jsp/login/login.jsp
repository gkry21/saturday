<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<jsp:include page="../common/common.jsp" flush="false" />
<script type="text/javascript">
	$(document).ready(function() {
			}); 
	
	function login(){
		ajaxCall('/common/login.do', 'POST', $("#login-form"),
				function success(data) {
					if(data.result == "0000"){
						localStorage.setItem('userId', data.userId); 
						var form = document.createElement("form");
					    form.setAttribute("method", "POST");
					    form.setAttribute("action", "cmm10000/openCMM10000List.do");
					    document.body.appendChild(form);
					    form.submit();
					    
					}else{
						 alert("존재하지않습니다.")
					}
				}); 
	}
</script>
<title> 로그인</title>
</head>
<body>
<div>
	<div class="container">
	    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
	        <div class="panel panel-success">
	            <div class="panel-heading">
	                <div class="panel-title">환영합니다!</div>
	            </div>
	            <div class="panel-body">
	                <form id="login-form" >
	                    <div>
	                        <input type="text" class="form-control" name="username"autofocus>
	                    </div>
	                    <div>
	                        <input type="password" class="form-control" name="password" >
	                    </div>
	                    <div>
	                        <a href="#" class="form-control btn btn-primary" onclick="login()">로그인</a>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
</div>
</body>
</html>