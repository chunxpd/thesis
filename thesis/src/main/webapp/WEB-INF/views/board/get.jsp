<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <style>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
</style>


  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Next Generation Network Laboratory</title>
  <meta content="" name="다양한 모바일 기기와 유선 네트워크 기기간의 효율적인 통신을 위한 융합 네트워크 기술">
  <meta content="" name="Next Generation Network Laboratory">

  <!-- Favicons -->
  <link href="../resources/img/n.png" rel="icon">
  <link href="../resources/img/n.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../resources/css/style.css?ver=13" rel="stylesheet">
  
  
</head>
<body>

<!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <a href="/thesis"><img src="../resources/img/thesislogo.png" alt="" class="img-fluid"></a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="/thesis">Home</a></li>
          <li><a class="nav-link scrollto" href="/thesis#about">연구실 개요</a></li>
          <li><a class="nav-link scrollto" href="/thesis#services">교수님 소개</a></li>
          <li><a class="nav-link scrollto" href="/thesis#portfolio">연구진행 현황</a></li>
          <li class="dropdown"><a href="/thesis#team"><span>연구실 구성원</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/thesis#team">현재</a></li>
              <li><a href="/thesis#teamDoctor">박사</a></li>
              <li><a href="/thesis#teamMaster">석사</a></li>
            
            </ul>
          </li>
       
          <li><a class="nav-link scrollto" href="/thesis#faq">FAQ</a></li> 
          <li><a class="nav-link scrollto" href="/thesis#contact">Contact</a></li>
          <li><a class="nav-link scrollto" href="/thesis/board/list">담벼락</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->


<h1>조회 페이지</h1>
	<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" name="content" readonly="readonly"><c:out value="${pageInfo.content}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 등록일</label>
		<input name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 수정일</label>
	
	</div>	
	<div class="input_wrap">
			<label>비밀번호</label> <input name="passwd1" id = "passwd1" value=''>
	</div>	
	<div class="btn_wrap">
		<a class="btn" id="list_btn">목록 페이지</a> 
		<a class="btn" id="modify_btn">수정 하기</a>
		<a class="btn" id="delete_btn">삭제</a>
	</div>
	<form id="infoForm" action="/thesis/board/modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="keyword" value="${cri.keyword }">
		<input type="hidden" name="type" value="${cri.type }">
		<input type="hidden" id="passwd" name="passwd" value="">
		
	</form>
<script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/thesis/board/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/thesis/board/modify");
		form.submit();
	});

	
	 /* 삭제 버튼 */
    $("#delete_btn").on("click", function(e){
    	if($("#passwd1").val()==""){
    		alert("비밀번호를 입력하세요");
    		$("#passwd1").focus();
    		return false;
    	} 
    	var pw = $("#passwd1").val();
    	$("#passwd").val(pw);
    
    	form.attr("action", "/thesis/board/delete");
    	form.attr("method", "post");
    	form.submit();
    });
	
</script>	
</body>
</html>