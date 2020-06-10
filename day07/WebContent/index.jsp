<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<style>
	table{border-collapse:collapse; border:1px solid black;}
	th, td{text-align:center; border:1px solid black; padding-left:30px; padding-right:30px;}
</style>
<script>
	window.addEventListener("DOMContentLoaded", function(){
		document.querySelectorAll("button")[0].onclick = function(){
			var xhr = new XMLHttpRequest(); //ajax 요청을 보내는 XMLHttpRequest객체 생성
			xhr.onreadystatechange = function(){ //ajax 요청에 대한 응답을 받는 이벤트 리스너
				if(xhr.readyState == xhr.DONE && xhr.status == 200){ 
					//readyState : AJAX 요청시 XMLHttpRequest객체는 각 상태별로 readyState가 변화
					//0(xhr.UNSENT), 1(xhr.OPEN), 2(xhr.HEADERS_RECEIVED), 3(xhr.LOADING), 4(xhr.DONE)

					
					//var text = xhr.responseText;
					//document.querySelector("#rs").innerHTML = text;
					var json = JSON.parse(xhr.responseText);
					for(var i = 0; i < json.length; i++){
						console.log(json[0].id);
						console.log(json[0].name);
						console.log(json[0].age);
					}
					
					var str = "<table>"
						+"<thead>"
							+"<tr>"
								+"<th>id</th>"
								+"<th>이름</th>"
								+"<th>나이</th>"
							+"</tr>"
						+"</thead>"
						+"<tbody>";	
					for(var i = 0; i < json.length; i++){
						str += "<tr>"
						str += "<td>"+json[i].id+"</td>";
						str += "<td>"+json[i].name+"</td>";
						str += "<td>"+json[i].age+"</td>";
						str += "</tr>";
					}
					str += "</tbody>";
					document.querySelector("#rs").innerHTML = str;			
				}
			}
			xhr.open("get", "/day07/person?id=1", true);
			xhr.send();
		}
		
		//리스트 가져오기 기능
		document.querySelectorAll("button")[1].onclick = function(){
			var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function(){
				if(xhr.readyState == xhr.DONE && xhr.status == 200){ 
					var json = xhr.responseText;
					var personObject = JSON.parse(json);
					
					console.dir(json);
					console.dir(personObject);
					var str = "<table>"
						+"<thead>"
							+"<tr>"
								+"<th>id</th>"
								+"<th>이름</th>"
								+"<th>나이</th>"
							+"</tr>"
						+"</thead>"
						+"<tbody>";	
					for(var i = 0; i < personObject.length; i++){
						str += "<tr>"
						str += "<td>"+personObject[i].id+"</td>";
						str += "<td>"+personObject[i].name+"</td>";
						str += "<td>"+personObject[i].age+"</td>";
						str += "</tr>";
					}
					str += "</tbody>";
					
					document.querySelector("#rs").innerHTML 
					= str;
				}
			}
			xhr.open("get", "/day07/personlist", true);
			xhr.send();
		}
		
	});
</script>
</head>
<body>
	<button>AJAX 실행</button>
	<button>AJAX 리스트 가져오기</button>
	<hr>
	<div id="rs"></div>
</body>
</html>