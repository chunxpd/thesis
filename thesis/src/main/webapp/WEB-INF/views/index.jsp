<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>평가 시스템</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .question {
            display: inline-block;
            width: 48%; /* 두 개의 질문을 한 줄에 배치하기 위한 너비 조정 */
            margin: 10px;
            vertical-align: top;
        }
        .question-label {
            font-weight: bold;
        }
        .answer-options {
            margin-top: 10px;
            margin-bottom: 15px;
        }
    </style>

  <!-- Favicons -->
  <link href="../thesis/resources/img/n.png" rel="icon">
  <link href="../thesis/resources/img/n.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../thesis/resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="../thesis/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../thesis/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../thesis/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../thesis/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../thesis/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../thesis/resources/css/style.css?ver=4" rel="stylesheet">
  <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

<script> 
$(document).ready(function(){
	 
	$("#sendmail").on("click", function(e){ 
		e.preventDefault();
		fn_search();
	});
});
	 
function fn_search(){
	if ( $("#name").val() =="" ){
		alert("이름이 누락됐습니다."); 
		$("#name").focus();
		return;
	}
	if ( $("#email").val() =="" ){
		alert("이메일이 누락됐습니다.");
		$("#email").focus();
		return;
	}else{
		
		var email =$("#email").val();
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

		if(exptext.test(email)==false){
			//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우			
			alert("이 메일형식이 올바르지 않습니다.");
			document.addjoin.email.focus();
			return false;
		}
		
	}
	if ( $("#number").val() =="" ){
		alert("전화번호가 누락됐습니다.");
		$("#number").focus();
		return;
	}
	
	if ( $("#subject").val() =="" ){
		alert("제목이 누락됐습니다.");
		$("#subject").focus();
		return;
	}
	
	if ( $("#content").val() =="" ){
		alert("내용이 누락됐습니다.");
		$("#content").focus();
		return;
	}
	
    var comSubmit = new ComSubmit("frm");
    comSubmit.setUrl("/thesis/board/mailsend");
    comSubmit.submit();
}
function gfn_isNull(str) {
    if (str == null) return true;
    if (str == "NaN") return true;
    if (new String(str).valueOf() == "undefined") return true;   
    var chkStr = new String(str);
    if( chkStr.valueOf() == "undefined" ) return true;
    if (chkStr == null) return true;   
    if (chkStr.toString().length == 0 ) return true;  
    return false;
}
 
function ComSubmit(opt_formId) {
    this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
    this.url = "";
     
    if(this.formId == "commonForm"){
        $("#commonForm")[0].reset();
    }
     
    this.setUrl = function setUrl(url){
        this.url = url;
    };
     
    this.addParam = function addParam(key, value){
        $("#"+this.formId).append($("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"' >"));
    };
     
    this.submit = function submit(){
        var frm = $("#"+this.formId)[0];
        frm.action = this.url;
        frm.method = "post";
        frm.submit();  
    };
}


 

</script>

 
    
<body>
<div class="container">
        <h1>질문에 답하세요</h1>
        
        <form id="evaluation-form" action="/thesis/board/submit" method="post">
             <div class="question">
                <p class="question-label">성별</p>
                <div class="answer-options">
                    <label><input type="radio" name="sex" value="1">남자</label><br>
                    <label><input type="radio" name="sex" value="2">여자</label><br>
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">나이</p>
                <div class="answer-options">
                    <label><input type="radio" name="birth" value="10"> 10대</label><br>
                    <label><input type="radio" name="birth" value="20"> 20대</label><br>
                    <label><input type="radio" name="birth" value="30"> 30대</label><br>
                    <label><input type="radio" name="birth" value="40"> 40대</label><br>
                    <label><input type="radio" name="birth" value="50"> 50대</label><br>
                    <label><input type="radio" name="birth" value="60"> 60대</label>
                </div>
            </div>

			<div class="question">
				<p class="question-label">장애유형</p>
				<div class="answer-options">
			        <select id="disabled" name="disabled">
			            <option value="1">지체장애</option>
			            <option value="2">뇌병변장애</option>
			            <option value="3">시각장애</option>
			            <option value="4">언어장애</option>
			            <option value="5">안면장애</option>
			            <option value="6">신장장애</option>
			            <option value="7">심장장애</option>
			            <option value="8">간장애</option>
			            <option value="9">호흡기장애</option>
			            <option value="10">장루요루장애</option>
			            <option value="11">뇌전증장애</option>
			            <option value="12">지적장애</option>
			            <option value="13">자폐성장애</option>
			            <option value="14">정신장애</option>
			        </select>
				</div>
			</div>
			
				<div class="question">
				<p class="question-label">등급</p>
				<div class="answer-options">
			        <select id="diabledGrade" name="diabledGrade">
			            <option value="1">경증</option>
			            <option value="2">중증</option>
			        </select>
				</div>
			</div>

            <!-- ... Repeat the structure for other questions -->
            
            <div class="question">
                <p class="question-label">국어점수</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="korean">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">영어점수</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="english">
                </div>
            </div>
            
                  <div class="question">
                <p class="question-label">수학점수</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="math">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">우세(소)</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="oose1">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">비우세(소)</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="bioose1">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">양손(소)</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="yangson1">
                </div>
            </div>
            
                  <div class="question">
                <p class="question-label">우세(중)</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="oose2">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">비우세(중)</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="bioose2">
                </div>
            </div>
            
           <div class="question">
                <p class="question-label">우세(대)</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="oose3">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">비우세(대)</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="bioose3">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">KEAD2</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="kead2">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">심리</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="simri">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">면접</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="interview">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">평가소견</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="testdiscuss">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">면접소견</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="interviewdiscuss">
                </div>
            </div>
            
            <div class="question">
                <p class="question-label">의료관찰소견</p>
                <div class="answer-options">
                    <input type="text" class="form-control" name="medicaldiscuss">
                </div>
            </div>
            <div class="question">
           	 	<button type="submit" class="btn btn-primary">제출</button>
            </div>
        </form>
        <div id="result"></div>
    </div>
    
    <script>
        let mForm = $("#evaluation-form"); // 페이지 데이터 수정 from
        $("submit").on("click", function(e) {
    		if($("#passwd").val()==""){
        		alert("비밀번호를 입력하세요");
        		$("#passwd").focus();
        		return false;
        	} 
    		mForm.submit();
    	});

        
        
        // 평가 결과를 받아와서 처리하는 JavaScript 코드를 추가하세요
        
   //     mForm.submit();
     /*    document.getElementById("submit-btn").addEventListener("click", function() {
            const data = {
                q1: document.querySelector('input[name="q1"]:checked').value,
                q2: document.querySelector('input[name="q2"]:checked').value,
                // ... 다른 질문들 처리
            };
            
            fetch("/thesis/board/submit", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(data)
            })
            .then(response => response.text())
            .then(message => {
                document.getElementById("result").innerText = message;
            });
        }); */
    </script>
    

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="../thesis/resources/vendor/aos/aos.js"></script>
  <script src="../thesis/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../thesis/resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../thesis/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../thesis/resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../thesis/resources/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="../thesis/resources/js/main.js"></script>

</body>

</html>