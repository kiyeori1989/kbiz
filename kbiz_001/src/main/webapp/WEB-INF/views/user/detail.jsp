<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
 <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<jsp:include page="../header.jsp"></jsp:include>
<jsp:include page="../nav.jsp"></jsp:include>



<script>
	$(document).ready(function(){
		$("#submit").on("click", function(){
			if($("#delivname").val()==""){
				alert("성명을 입력해주세요.");
				$("#delivname").focus();
				return false;
			}
			
			if($("#addrcd").val()==""){
				alert("우편번호를 입력해주세요.");
				$("#addrcd").focus();
				return false;
			}
			
			if($("#addrname").val()==""){
				alert("주소를 입력해주세요.");
				$("#addrname").focus();
				return false;
			}
			
// 			if($("#mobiletelno").val()==""){
// 				alert("휴대전화번호를 입력해주세요.");
// 				$("#mobiletelno").focus();
// 				return false;
// 			}
			
// 			if($("#mobiletelno").val()==""){
// 				alert("휴대전화번호를 입력해주세요.");
// 				$("#mobiletelno").focus();
// 				return false;
// 			}
			
// 			if($("#hometelno").val()==""){
// 				alert("집전화번호를 입력해주세요.");
// 				$("#hometelno").focus();
// 				return false;
// 			}
			
			if($("#hometelno").val()=="" && $("#mobiletelno").val()=="" ){
				alert("전화번호 둘중하나는 필수 사항입니다.");
				$("#mobiletelno").focus();
				return false;
			}
		
// 			if($("input[name=useyn]:checked").val() == null){
// 				$("input[name=useyn]:checked").val("N");
// 			}
			
			
			
		})
		
		$(document).on("click","#useyn1",function(){
			var ch = $("#useyn1").val();
			if(ch=='Y'){
				$("#useyn").val("N");
				$("#useyn1").val("N");
// 				console.log($("#useyn").val());
			}else{
				$("#useyn").val("Y");
				$("#useyn1").val("Y");
// 				console.log($("#useyn").val());
			}
		})
		
		
		
// 		if($("#useyn").is(":checked") != true){
// 			$("#useyn").val("N");
			
		
// 		}else{
// 			$("#useyn").val("Y");
	
// 		}	
		
		
	})

</script>


<h1 align="center">디테일 페이지</h1>

<div id="detail-section" align="center">
	<form action="detail" method="post">
		
		<input type="hidden" id="id"  name="id" value="${id}">
		<input type="hidden" id="insuser" name="insuser" value="${insuser}">
		
		
		<label>성명 : </label>
		<input type="text" id="delivname" name="delivname" placeholder="성명을 입력하세요.">
		<br><br>
		
		<label>관계 : </label>
		<select name="relcd">
			<option value="C0021">본인</option>
			<option value="C0022">부모님</option>
			<option value="C0023">동생</option>
			<option value="C0024">지인</option>
		</select>
		<br><br>
		
		<label>우편번호 : </label>
		<input type="text" id="addrcd" name="addrcd" placeholder="우편번호">
		<br><br>
		
		<label>주소 : </label>
		<input type="text" id="addrname" name="addrname" placeholder="주소를 입력하세요.">
		<br><br>
		
		<label>휴대전화번호 : </label>
		<input type="text" id="mobiletelno" name="mobiletelno" placeholder="휴대전화">
		<br><br>
		
		<label>집전화번호 : </label>
		<input type="text" id="hometelno" name="hometelno" placeholder="집번호">
		<br><br>
		
		<label>사용여부 : </label>
		<input type="checkbox" id="useyn1" name="useyn1" checked="checked" value="Y">
 		<input type="hidden" id="useyn" name="useyn" value="Y"> 
		<br><br>
		
		<button type="submit" id="submit">저장</button>
	</form>




</div>















<jsp:include page="../footer.jsp"></jsp:include>