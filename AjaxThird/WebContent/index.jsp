<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#eid").blur(function(){
		
		var data = "empid="+$("#eid").val();
		
	//	alert(data);
		
		$.ajax({
			
			url:'FetchData.jsp',
			type:'post',
			data:data,
			success:function(result){
				//alert(result);
				var obj = JSON.parse(result);
				$("#ename").val(obj.ename);
				$("#salary").val(obj.salary);
				$("#email").val(obj.email);
				$("#mobile").val(obj.mobile);
				
			}
			
		});
		
	});
	
});
</script>

</head>
<body>
<table>
	<tbody>
		
			<tr><td>EID </td><td><input type="text" name="eid" id="eid"/></td></tr>
			
			<tr><td>Quantity</td><td colspan="2"><input type="text" name="ename" id="ename"/></td></tr>
			
			<tr><td>price</td><td colspan="2"><input type="text" name="salary" id="salary"/></td></tr>
			
			<tr><td>product_name</td><td colspan="2"><input type="text" name="email" id="email"/></td></tr>
			
			<tr><td>Ipaddress</td><td colspan="2"><input type="text" name="mobile" id="mobile"/></td></tr>
					
	</tbody>
</table>
</body>
</html>