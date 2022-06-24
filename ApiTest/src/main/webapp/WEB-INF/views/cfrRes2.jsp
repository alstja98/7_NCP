<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img{
	width: 100px;
	length: 100px;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		let res = ${res};
		
		console.log(res);
		for(let i=0; i<res.faces.length; i++){
			$("div").append("얼굴의 나이: <span>"+res.faces[i].age.value+"</span><br>");
			$("div").append("성별: <span>"+(res.faces[i].gender.value)+"</span><br>");
			$("div").append("감정: <span>"+(res.faces[i].emotion.value)+"</span><br>");
		}
	});
</script>
</head>
<body>
	<img src="/resources/island01.jpg">
	<div>
	</div>
	<br>
</body>
</html>