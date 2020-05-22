<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
 <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<jsp:include page="../header.jsp"></jsp:include>
<jsp:include page="../nav.jsp"></jsp:include>


<script>
	$(document).ready(function(){
		$("#tab-text tr").click(function(){
			
		
			var tr = $(this);
			var td = tr.children();
			
			var cdno = td.eq(0).text();
			var cdlvl = td.eq(1).text();
			var upcd = td.eq(2).text();
			var cdname= td.eq(3).text();
			var useyn = td.eq(4).val();
	
// 			console.log(cdno);
			$("#input-cdno").val(cdno);
			$("#input-cdlvl").val(cdlvl);
			$("#input-upcd").val(upcd);
			$("#input-cdname").val(cdname);
			
			$("#input-useyn").val(useyn);
			
			
		})
		
		$("#btn-update").click(function(){
		var frm = document.fomr1;
		frm.
		})
		
		
	})

</script>



<h1 align="center">리스트 페이지</h1>

	<div id="list-section" align="center">
	<form id="form1" name="form1">
		<table id="tab-text"   style="border: 1px solid #444444; border-collapse: collapse; width: 30%; text-align: center;" >
			<caption>전체리스트</caption>
			<thead>
				<tr>
					<th style="border-bottom: 1px solid #444444; padding: 10px; background-color: gray;">코드번호</th>
					<th style="border-bottom: 1px solid #444444; padding: 10px; background-color: gray;">코드레벨</th>
					<th style="border-bottom: 1px solid #444444; padding: 10px; background-color: gray;">상위코드</th>
					<th style="border-bottom: 1px solid #444444; padding: 10px; background-color: gray;">코드이름</th>
					<th style="border-bottom: 1px solid #444444; padding: 10px; background-color: gray;">사용여부</th>
				</tr>
			</thead>
			
			<c:forEach var="list" items="${list }">
	
			<tbody id="tbody">
				<tr>
					<td id="td1" style="border-bottom: 1px solid #444444; padding: 10px;">${list.cdno}</td>
					<td id="td2" style="border-bottom: 1px solid #444444; padding: 10px;">${list.cdlvl}</td>
					<td id="td3" style="border-bottom: 1px solid #444444; padding: 10px;">${list.upcd}</td>
					<td id="td4" style="border-bottom: 1px solid #444444; padding: 10px;">${list.cdname}</td>
					<td id="td5" style="border-bottom: 1px solid #444444; padding: 10px;"><input type="checkbox" checked="checked"></td>
				</tr>
			</tbody>
				
		</c:forEach>
		</table>
	</form>
		
		
		
		
	</div>
<br><br><br><br>

	<div id="code-section" align="center" style="border: 1px solid #444444; border-collapse: collapse;width: 30%;margin: auto;">
		<div style="border-bottom: 1px solid #444444;background-color: gray;">코드내용</div><br>
		<div class="code-text-section">
			<div>코드번호 : <input type="text" id="input-cdno" name="input-cdno" readonly="readonly"></div>
			<div>코드레벨 : <input type="text" id="input-cdlvl" name="input-cdlvl" readonly="readonly"></div>
			<div>상위코드 : <input type="text" id="input-upcd" name="input-upcd" readonly="readonly"></div>
			<div>코드이름 : <input type="text" id="input-cdname" name="input-cdname" readonly="readonly"></div>
			<div>사용여부 : <input type="checkbox" id="input-useyn" name="input-useyn" checked="checked"></div>
		</div>
		<br>
		<div class="btn-section">
			<button id="btn-insert" type="button" style="width: 25%;">추가</button>
			<button id="btn-update" type="button" style="width: 25%;">수정</button>
			<button id="submit" type="submit" style="width: 25%;">저장</button>
		</div>
	</div>








<jsp:include page="../footer.jsp"></jsp:include>