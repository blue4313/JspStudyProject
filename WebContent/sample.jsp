<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>스타터 템플릿</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<style type="text/css">
* { font-family: NanumGothic, 'Malgun Gothic'; }
body { padding-top: 50px; }
.starter-template {
  padding: 40px 15px;
  text-align: center;
}
</style>
</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">토글 네비게이션</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">스타터</a>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">홈</a></li>
        <li><a href="#about">소개</a></li>
        <li><a href="#contact">연락</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="container">
  <div class="starter-template">
    <h1>부트스트랩 스타터 템플릿</h1>
    <p class="lead">새 프로젝트를 빠르게 시작하려면 이 문서를 활용해보세요.<br> HTML 문서 기본 뼈대가 갖추어져 있습니다.</p>
    	<table class="table table-bordered table table-hover"> 
			<thead> 
				<tr> 
					<th>아이디</th> 
					<th>패스워드</th> 
					<th>이름</th>
					<th>가입일자</th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
				</tr> 
			</thead> 
			<tbody> 
				
				<tr>
					<td>aaa</td>
					<td>ddd</td>
					<td>ccc</td>
					<td>dddd</td>
					<td><button type="button">수정</button></td>
					<td><button type="button">삭제</button></td>
				</tr>
				<tr>
					<td>aaa</td>
					<td>ddd</td>
					<td>ccc</td>
					<td>dddd</td>
					<td><button type="button">수정</button></td>
					<td><button type="button">삭제</button></td>
				</tr>
				<tr>
					<td>aaa</td>
					<td>ddd</td>
					<td>ccc</td>
					<td>dddd</td>
					<td><button type="button">수정</button></td>
					<td><button type="button">삭제</button></td>
				</tr>
				
				<tr>
					<td colspan="6">
						<a href="insertBeanTestForm.jsp">사용자 등록</a>
					</td>
				</tr>
			</tbody> 
		</table>
  </div>
</div>

</body>
</html>