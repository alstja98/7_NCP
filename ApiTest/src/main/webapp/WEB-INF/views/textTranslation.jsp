<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			let text = $("#inputText").val();
			console.log(text);
			$.ajax({
				url:"/api/trans",
				data:JSON.stringify({"text":text}),
				method:"post",
				dataType:"json",
				contentType:"application/json",
				success:function(data){
					console.log(data.data);
					//console.log(data.data.message)가 안되는 이유는 data.data 값이 string이기 때문. 따라서 json으로 바꿔줘야함.
					let res = JSON.parse(data.data);
					console.log(res);
					console.log(res.message);
					let res1 = JSON.parse(data.data).message.result.translatedText;
					console.log(res1);
					
					$("#res").text(res1);
				},
				error:function(){
					alert("통신 실패");
				}
			});
		});
	});
</script>
</head>
<body>
	<div>
		<div>
			<input type="text" id="inputText"> &nbsp; <button id="btn">번역</button>
		</div>
	</div>
	<div>
		<div id="res"></div>
	</div>
</body>
</html>