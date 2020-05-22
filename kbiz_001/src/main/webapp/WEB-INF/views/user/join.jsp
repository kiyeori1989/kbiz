<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
 <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
			if($("#pass").val().length < 5 || $("#pass").val().length > 10 ){
				alert("비밀번호는 5자이상 10자 이하로 작성해주세요.");
				$("#pass").focus();
				return false;
			}
			if($("#name").val()==""){
				alert("이름를 입력해주세요.");
				$("#name").focus();
				return false;
			}
			var idchkVal = $("#idchk").val();
			if(idchkVal == "N"){
				alert("아이디 중복확인을 해주세요.");
				return false;
				
			}else if (idchkVal == "Y"){
				$("#joinForm").submit();
				
			}
		});
	})
		
		function fn_idchk(){
			$.ajax({
				url : "${pageContext.request.contextPath}/user/idchk",
				type : "post",
				dataType : "json",
				data : {"id" : $("#id").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idchk").attr("value","Y");
						alert("사용가능한 아이디입니다.");
					}
				}
				
			})
		}
		
		$(function(){
			
			$("#pass").keyup(function(){
				var pw = $("#pass").val();
				if(pw.length < 5 || pw.length > 10 ){
					$("#passChk").html("비밀번호는 5~10 자리만 가능합니다<br><br>");
					$("#passChk").attr('color','#f82a2aa3');
				}else{
					$('#passChk').html('가능한 비밀번호입니다<br><br>');
					$('#passChk').attr('color', '#199894b3');
				}
			})
		})
	
	
		$(function(){
			$("#pass").keyup(function(){
				$("#pass-check").html('');
			});
			
			$("#pass-check").keyup(function(){
				if($("#pass").val() != $("#pass-check").val()){
					$("#idchk-font").html("비밀번호 일치하지 않음<br><br>");
					$("#idchk-font").attr('color','#f82a2aa3');
				}else{
					 $('#idchk-font').html('비밀번호 일치<br><br>');
			          $('#idchk-font').attr('color', '#199894b3');
				}
			})
		})
		
		$()
		


</script>



<h1 align="center">회원가입 페이지</h1>

<div id="join-section" align="center">
	<form action="join" method="post" id="joinForm">
		<label>아이디 : </label>
		<input class="join-input" type="text" id="id" name="id">
		<button type="button" class="idchk" id="idchk" onclick="fn_idchk();" value="N">중복확인</button><br>
		
		<p class="pass-info">#비밀번호는 5자리 이상 10자리 이하여야 합니다.</p><br>
		<label>비밀번호 : </label>
		<input class="join-input" type="password" id="pass" name="pass"><br><br>
		<font id="passChk" size="2"></font>
		
		<label>비밀번호확인 : </label>
		<input class="join-input" type="password" id="pass-check" name="pass-check"><br><br>
		<font id="idchk-font" size="2"></font>
		
		<label>성명 : </label>
		<input class="join-input" type="text" id="name" name="name"><br><br>
		
	
		<button type="submit" id="submit">저장</button>
	</form>
</div>



<jsp:include page="../footer.jsp"></jsp:include>