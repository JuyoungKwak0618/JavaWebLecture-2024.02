<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<title>국내 도시</title>
	<style>
		th, td { padding: 3px; }
	</style>
</head>
<body style="margin: 50px;">
	<h1>국내 도시 목록
	<button style="margin-left:100px;" onclick="location.href='/jw/ch07/kcity/insert'"  class="btn btn-primary">추가</button>
	</h1>
	<hr>
	<table class ="table" border="1">
		<tr class="table-primary"><th>아이디</th><th>도시명</th><th>국가코드</th>
			<th>지역명</th><th>인구수</th><th>액션</th></tr>
			<c:forEach var="city" items="${list}">			<!-- for(City city:list) -->
				<tr>
					<td>${city.id}</td>		<!-- City class의 member 변수 이름과 동일해야 함 -->
					<td>${city.name}</td>
					<td>${city.countryCode}</td>
					<td>${city.district}</td>
					<td>${city.population}</td>
					<td>
						<a class="btn btn-primary" href="/jw/ch07/kcity/update?id=${city.id}">수정</a>
						<a class= "btn btn-secondary"href="/jw/ch07/kcity/delete?id=${city.id}">삭제</a>
					</td>
				</tr>
			</c:forEach>
	</table>
</body>
</html>