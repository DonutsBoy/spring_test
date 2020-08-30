<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>��ο����</title>
	<script src="https://code.jquery.com/jquery-1.7.2.js"></script>
	<script>
		//name : zet
		$(function(){
						
			//��ȸ
			$("#button1").click(function(){
				$.ajax({ 
					type: 'get', // http ����  method ����, get �Ǵ� post �Է°���, ���Է½� get
					url: "http://localhost:8000/hello2", // ȣ�� URL. GET ����ϰ�� URL �ڿ� �Ķ���͸� �ٿ��� ����ص� �ȴ�.
					data: {name: '���� minsu !@#$%', age: 30}, // ��û�� �Բ� ������ ������ string �Ǵ� map
					dataType:'json', // �������� ��ȯ�Ǵ� ������ ������ ����
					async: true, //�񵿱� ���μ���, true ��� �񵿱� ������� ����, false ��� ���� ������� ����
					error: function (xhr, status, error) {
						alert("��ȸ�� ������ �߻��Ͽ����ϴ�.\n\n" + xhr + " ===> " + error);
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
			
			//�߰�
			$("#button2").click(function(){
				$.ajax({ 
					type: 'get', // http ����  method ����, get �Ǵ� post �Է°���, ���Է½� get
					url: "http://localhost:8000/helloInsert", // ȣ�� URL. GET ����ϰ�� URL �ڿ� �Ķ���͸� �ٿ��� ����ص� �ȴ�.
					data: {name: '���� minsu !@#$%', age: 30}, // ��û�� �Բ� ������ ������ string �Ǵ� map
					dataType:'json', // �������� ��ȯ�Ǵ� ������ ������ ����
					async: true, //�񵿱� ���μ���, true ��� �񵿱� ������� ����, false ��� ���� ������� ����
					error: function (xhr, status, error) {
						alert("��ȸ�� ������ �߻��Ͽ����ϴ�.\n\n" + xhr + " ===> " + error);
					},
					success: function (data) {
						$("#button1").click();
					}
				});
			});

			//����
			$("#button3").click(function(){
				$.ajax({ 
					type: 'get', // http ����  method ����, get �Ǵ� post �Է°���, ���Է½� get
					url: "http://localhost:8000/helloDelete", // ȣ�� URL. GET ����ϰ�� URL �ڿ� �Ķ���͸� �ٿ��� ����ص� �ȴ�.
					data: {name: '���� minsu !@#$%', age: 30}, // ��û�� �Բ� ������ ������ string �Ǵ� map
					dataType:'json', // �������� ��ȯ�Ǵ� ������ ������ ����
					async: true, //�񵿱� ���μ���, true ��� �񵿱� ������� ����, false ��� ���� ������� ����
					error: function (xhr, status, error) {
						alert("��ȸ�� ������ �߻��Ͽ����ϴ�.\n\n" + xhr + " ===> " + error);
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
	<button type="button" id="button2">�߰�</button>
	<button type="button" id="button3">����</button>
	<button type="button" id="button1">�Ϲݹ�ư</button>
	<div id="div1"></div>
</body>
</html>

