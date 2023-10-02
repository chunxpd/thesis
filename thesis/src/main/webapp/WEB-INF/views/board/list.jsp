<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

  <!-- 라이브러리 코드 -->
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
  a{
  	text-decoration : none;
  }
  table{
 	border-collapse: collapse;
 	width: 1000px;    
 	margin-top : 20px;
 	text-align: center;
	border-bottom: 2px solid black !important;
	/* box-shadow: 1px 1px 1px #ddd; */
  }
  thead{
	border-top : 2px solid black !important;
  }
  tbody tr{
  	border-bottom : 1px dotted #ddd !important;
  	height: 50px;
  }
  th{
	background-color: #ddd;
  }
  td,th{
	height: 50px;
  	font-size : 17px;
  }
  thead{
  	font-weight: 700;
  }
  .table_wrap{
    width: 1100px;
  	margin : 30px auto;
  }
  .bno_width{
  	width: 12%;
  }
  .writer_width{
  	width: 20%;
  }
  .regdate_width{
  	width: 15%;
  }
  .updatedate_width{
  	width: 15%;
  }


  .top_btn{
  	font-size: 20px;
    padding: 6px 12px;
    background-color: pink;
	color:#fff !important;
    border: 1px solid pink;
    font-weight: bold;

  }
  
   .pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
 
  .active{
      background-color: #cdd5ec;
  }
  
  
  .search_area{
    display: inline-block;
    margin-top: 30px;
    margin-left: 260px;
  }
  .search_area input{
      height: 30px;
    width: 250px;
  }
  .search_area button{
     width: 100px;
    height: 36px;
  }
  
  .search_area select{
    height: 35px;
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
  <link href="../resources/css/style.css?ver=11" rel="stylesheet">
</head>

<style>
      body { padding: 0px; margin: 0px; }
      .jb-box { width: 100%; height: 800px; overflow: hidden;margin: 0px auto; position: relative; }
      video { width: 100%; 
			  object-fit: cover;
			  position: absolute;
			  z-index: 1;
      }
      .jb-text { position: absolute; top: 100%; width: 100%; }
      .jb-text p { margin-top: -24px; text-align: center; font-size: 48px; color: #ffffff; }
    </style>
    
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

<div class="table_wrap">
	<div class="title">
		<h3> 자유게시판 </h3>
	</div>
	<table>
		<thead>
			<tr>
				<th class="bno_width">번호</th>
				<th class="title_width">제목</th>
				<th class="writer_width">작성자</th>
				<th class="regdate_width">작성일</th>
				<th class="updatedate_width">수정일</th>
			</tr>
		</thead>
		<!-- 	<tr>
				<td>번호 내용</td>
				<td>제목 내용</td>
				<td>작성자 내용</td>
				<td>작성일 내용</td>
				<td>수정일 내용</td>
			</tr>
			 -->
		<c:forEach items="${list}" var="list">
            <tr>
                <td><c:out value="${list.bno}"/></td>
                <td>
                	<a class="move" href='<c:out value="${list.bno}"/>'>
                        <c:out value="${list.title}"/>
                    </a>
                    
                  
                </td>
                <td><c:out value="${list.writer}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regdate}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updateDate}"/> </td>
            </tr>
        </c:forEach>
	</table>
	
	<div class="search_wrap">
        <div class="search_area">
       		 <select name="type">
                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
            </select>   
            <input type="text" name="keyword" value="${pageMaker.cri.keyword }">
            <button>Search</button>

        </div>
		<a href="../board/enroll" class="top_btn">글쓰기</a>
    </div>    
	
	<div class="pageInfo_wrap" >
		<div class="pageInfo_area">
			<ul id="pageInfo" class="pageInfo">
				<!-- 이전페이지 버튼 -->
				<c:if test="${pageMaker.prev}">
					<li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
				</c:if>

				<!-- 각 번호 페이지 버튼 -->
				<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
				</c:forEach>

				<!-- 다음페이지 버튼 -->
				<c:if test="${pageMaker.next}">
					<li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
				</c:if>				

			</ul>
		</div>
	</div>
	
	
	<form id="moveForm" method="get">    
	 	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">    
        <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
        <input type="hidden" name="type" value="${pageMaker.cri.type }">
   	</form>
</div>

 

<script>
    $(document).ready(function(){
    
    	let result =  '<c:out value="${result}"/>'
		checkAlert(result);
		function checkAlert(result) {
			if (result === '') {
				return;
			}
			if (result === "enrol success") {
				alert("등록이 완료되었습니다.");
			}

	        if(result === "modify success"){
	            alert("수정이 완료되었습니다.");
	        }
	        if(result === "delete success"){
	            alert("삭제가 완료되었습니다.");
	        }
	        
	        if(result === "passwd wrong"){
	            alert("비밀번호가 틀렸습니다.");
	        }
	 

		}
	});
    

    let moveForm = $("#moveForm");
 
    $(".move").on("click", function(e){
        e.preventDefault();

        moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
        moveForm.attr("action", "/thesis/board/get");
 
        moveForm.submit();
    });
    
 	$(".pageInfo a").on("click", function(e){
 		 e.preventDefault();
         moveForm.find("input[name='pageNum']").val($(this).attr("href"));
         moveForm.attr("action", "/thesis/board/list");
         moveForm.submit();
 
        
    });
    
 	  $(".search_area button").on("click", function(e){
        e.preventDefault();
        
        let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("검색 종류를 선택하세요.");
            return false;
        }
        
        if(!keyword){
            alert("키워드를 입력하세요.");
            return false;
        }        
        
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });
 	 

 	
</script>

</body>
</html>