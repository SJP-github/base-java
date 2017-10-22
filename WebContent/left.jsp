<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript">
	function checkLogout(){
		var flag=confirm("确定要退出吗？");
		if(flag){
			top.location.href="${pageContext.request.contextPath}/logout"
		}
		
	}
</script>
</head>
<body class="frame-bd">
<ul class="left-menu">
	<li><a href="admin_bill_list.html" target="mainFrame"><img src="images/btn_bill.gif" /></a></li>
	<li><a href="providerAdmin.html" target="mainFrame"><img src="images/btn_suppliers.gif" /></a></li>
	<li><a href="${pageContext.request.contextPath }/findall.action" target="mainFrame"><img src="images/btn_users.gif" /></a></li>
	<li><a href="#" onClick="javaScript:checkLogout()"><img src="images/btn_exit.gif" /></a></li>
</ul>
</body>
</html>