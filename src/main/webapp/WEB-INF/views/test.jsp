<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>헬로우월드</title>
	<script src="https://code.jquery.com/jquery-1.7.2.js"></script>
	<script>
		//name : zet
		$(function(){
						
			//조회
			$("#button1").click(function(){
				$.ajax({ 
					type: 'get', // http 전송  method 설정, get 또는 post 입력가능, 미입력시 get
					url: "http://localhost:8000/hello2", // 호출 URL. GET 방식일경우 URL 뒤에 파라미터를 붙여서 사용해도 된다.
					data: {name: '하이 minsu !@#$%', age: 30}, // 요청과 함께 서버에 보내는 string 또는 map
					dataType:'json', // 서버에서 반환되는 데이터 형식을 지정
					async: true, //비동기 여부설정, true 라면 비동기 방식으로 동작, false 라면 동기 방식으로 동작
					error: function (xhr, status, error) {
						alert("조회중 오류가 발생하였습니다.\n\n" + xhr + " ===> " + error);
					},
					success: function (data) {
						var div1_html = "<table>";
						$.each(data.etc,function(key,value) {
							div1_html = div1_html + "<tr><td>"+value.A+"</td><td>"+value.B+"</td></tr>"
						});
						div1_html = div1_html + "</table>";
						$("#div1").html(div1_html);
					}
				});
			});
			
			//추가
			$("#button2").click(function(){
				$.ajax({ 
					type: 'get', // http 전송  method 설정, get 또는 post 입력가능, 미입력시 get
					url: "http://localhost:8000/helloInsert", // 호출 URL. GET 방식일경우 URL 뒤에 파라미터를 붙여서 사용해도 된다.
					data: {name: '하이 minsu !@#$%', age: 30}, // 요청과 함께 서버에 보내는 string 또는 map
					dataType:'json', // 서버에서 반환되는 데이터 형식을 지정
					async: true, //비동기 여부설정, true 라면 비동기 방식으로 동작, false 라면 동기 방식으로 동작
					error: function (xhr, status, error) {
						alert("조회중 오류가 발생하였습니다.\n\n" + xhr + " ===> " + error);
					},
					success: function (data) {
						$("#button1").click();
					}
				});
			});

			//삭제
			$("#button3").click(function(){
				$.ajax({ 
					type: 'get', // http 전송  method 설정, get 또는 post 입력가능, 미입력시 get
					url: "http://localhost:8000/helloDelete", // 호출 URL. GET 방식일경우 URL 뒤에 파라미터를 붙여서 사용해도 된다.
					data: {name: '하이 minsu !@#$%', age: 30}, // 요청과 함께 서버에 보내는 string 또는 map
					dataType:'json', // 서버에서 반환되는 데이터 형식을 지정
					async: true, //비동기 여부설정, true 라면 비동기 방식으로 동작, false 라면 동기 방식으로 동작
					error: function (xhr, status, error) {
						alert("조회중 오류가 발생하였습니다.\n\n" + xhr + " ===> " + error);
					},
					success: function (data) {
						//$("#button1").click();
						$("#button1").trigger("click");
					}
				});
			});			
		});
	</script>
</head>
<body>
	<button type="button" id="button2">추가</button>
	<button type="button" id="button3">삭제</button>
	<button type="button" id="button1">일반버튼</button>
	<div id="div1"></div>
</body>
</html>

