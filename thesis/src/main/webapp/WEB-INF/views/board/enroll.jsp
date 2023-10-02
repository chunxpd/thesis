<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
  <link href="../resources/css/style.css?ver=15" rel="stylesheet">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
<script>

function validate(){ 
	 
	if($("#title").val()==""){
		alert("제목을 입력하세요");
		$("#title").focus();
		return false;
	} 
	if($("#content").val()==""){
		alert("내용을 입력하세요");
		$("#content").focus();
		return false;
	} 
	if($("#writer").val()==""){
		alert("작성자를 입력하세요");
		$("#writer").focus();
		return false;
	} 
	if($("#passwd").val()==""){
		alert("비밀번호를 입력하세요");
		$("#passwd").focus();
		return false;
	} 
	
	
	
}

$(document).ready(function(){
	

    	
});
 </script>

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

<h1>글쓰기</h1>

<!-- <form action="/thesis/board/enroll" method="post"> -->
<form onsubmit="return validate()" action="/thesis/board/enroll" method="post">
    <div class="input_wrap">
        <label>제 목</label>
        <input type="text" name="title" id="title"  >
    </div>
    <div class="input_wrap">
        <label>내 용</label>
        <textarea rows="3" name="content" id="content" ></textarea>
    </div>
    <div class="input_wrap">
        <label>작성자이름</label>
        <input type="text"  name="writer" id="writer" >
    </div>
    
    <div class="input_wrap">
        <label>비밀번호</label>
        <input type="text"  name="passwd" id="passwd" >
    </div>
    
    <input type="submit" value="등록">
   <!--  <button class="btn">등록</button> -->
</form>

</body>
</html>