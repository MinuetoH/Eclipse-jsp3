<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%-- /jsp3/src/main/webapp/view/member/list.jsp  --%>
<!DOCTYPE html>
<html><head>
<meta charset="UTF-8">
<title>회원 목록 보기</title></head>
<body><table><caption>회원 목록</caption>
<tr><th>아이디</th><th>사진</th><th>이름</th><th>성별</th><th>전화</th>
<th>&nbsp;</th></tr>
<c:forEach var="m" items="${list}">
<tr>
<td><a href="info?id=${m.id}">${m.id}</a></td>
<td><img src="../picture/${m.picture}" width="20" height="30"></td>
<td>${m.name}</td><td>${m.gender==1?"남":"여"}</td>
<td>${m.tel}</td>
<td><a href="updateForm?id=${m.id}">[수정]</a>
    <a href="deleteForm?id=${m.id}">[강제탈퇴]</a></td></tr>
</c:forEach>
</table></body></html>