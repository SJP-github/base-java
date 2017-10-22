<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统登录 - 超市账单管理系统</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	//ready函数
	 $(function(){
		$("#myform").submit(function(e){
			var un=$("#un").val();
			var pw=$("#pw").val();
			var flag1=false;
			var flag2=false;
			
			if(un==null||un==""){
				$("#sp1").html("用户名不能为空");
			}else{
				$("#sp1").html("");
				flag1="true";
			}
			if(pw==null||pw==""){
				$("#sp2").html("密码名不能为空");
			}else{
				$("#sp2").html("");
				flag2="true";
			}
			//alert(un);
			//阻止登录
			e.preventDefault();
			
			if(flag1&&flag2){
				var param={"username":un,"password":pw};
				//ajax提交表单
				
				$.ajax({
					url:"${pageContext.request.contextPath}/login.action",
					data:param,
					dataType:"json",
					cache:"false",
					type:"post",
					success:function(data){
						var info=data.msg;
						//alert(data)
						if(info==0){
							$("#sp1").html("用户名不能为空");
						}else if(info==1){
							$("#sp2").html("密码不能为空");
						}else if(info==2){
							$("#sp1").html("用户名或密码错误");
						}else{
						
							location.href="${pageContext.request.contextPath}/index.jsp";
						}
					},
					error:function(){
						location.href="${pageContext.request.contextPath}/login.jsp";
						//alert(2);
					}
				});
			}
			
									
			
			
		});
	}) 
</script>
</head>
<body class="blue-style">
<div id="login">
	<div class="icon"></div>
	<div class="login-box">
		<form method="post" action="${pageContext.request.contextPath }/login.action" id="myform">
			<dl>
				<dt>用户名：</dt>
				<dd><input type="text" id="un" name="username" class="input-text" /><span id="sp1"></span></dd>
				<dt>密　码：</dt>
				<dd><input type="password" id="pw" name="password" class="input-text" /><span id="sp2"></span></dd>
			</dl>
			<div class="buttons">
				<input type="submit" name="submit" value="登录系统" class="input-button" />
				<input type="reset" name="reset" value="重　　填" class="input-button" />
			</div>
		</form>
	</div>
</div>
</body>
</html>