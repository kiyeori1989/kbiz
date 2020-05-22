<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<jsp:include page="../header.jsp"></jsp:include>
<jsp:include page="../nav.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		$("#submit").on("click",function(){
		if($("#id").val()==""){
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
			
		}
		if($("#pass").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#pass").focus();
			return false;
			
		}	
		})
		
	})
</script>


<div id="login-section" align="center">
<form action="login" method="post">
<c:if test="${user ==null}">
	<label for="id"> 아이디 :</label>
	<input type="text" id="id" name="id" placeholder="아이디를 입력하세요.">
	<br><br>
	<label for="pass">비밀번호 :</label>
	<input type="password" id="pass" name="pass" placeholder="비밀번호를 입력하세요.">
	<br><br>
	<button type="submit" id="submit">로그인</button>
	<a href="${pageContext.request.contextPath}/user/join"><button type="button">회원가입</button></a>
</c:if>
</form>
</div>
	
	<c:if test="${msg == false }">
		<p>아이디와 비밀번호를 확인해주세요.</p>
	</c:if>


<jsp:include page="../footer.jsp"></jsp:include>