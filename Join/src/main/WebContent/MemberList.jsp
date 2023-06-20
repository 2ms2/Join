<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/common.css">
	</head>
	
	<body>
		<div class="wrap">
			<div class="conts">
				<h2>회원 목록</h2>
				<table class="member-table">
					<colgroup>
						<col style="width:20%">
						<col style="width:10%">
						<col style="width:15%">
						<col style="width:20%">
						<col style="width:10%">
						<col style="width:25%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">아이디</th>
							<th scope="col">연령대</th>
							<th scope="col">전화</th>
							<th scope="col">이메일</th>
							<th scope="col">직업</th>
							<th scope="col">취미</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bean" items="${v}">
							<tr>
								<td>${bean.id}</td>
								<td>${bean.age}</td>
								<td>${bean.tel}</td>
								<td><a href="#none">${bean.email}</a></td>
								<td>${bean.job}</td>
								<td>${bean.hobby}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>