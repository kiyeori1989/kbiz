<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




    <div align="center">
      <a href="${pageContext.request.contextPath}">홈으로</a>
    <c:choose>
	<c:when test="${not empty sessionScope.user }">
	<a href="${pageContext.request.contextPath }/user/logout">로그아웃</a>
	</c:when>
    
    <c:otherwise>
	<a href="${pageContext.request.contextPath }/user/join">회원가입</a>
	<a href="${pageContext.request.contextPath }/user/login">로그인</a>
	</c:otherwise>
	</c:choose>
	
    <c:if test="${user.id eq 'adminkky'}">
   <a href="${pageContext.request.contextPath }/shop/code_list">상품 리스트</a>
	</c:if>
	
	<c:if test="${user != null }">
	<p>${user.id}님 안녕하세요.</p>
</c:if>
	
	</div>
	<br><br><br><br>