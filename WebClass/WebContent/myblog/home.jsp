<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap 실습</title>

    <!-- Bootstrap CSS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="/WebClass/css/blog.css">

</head>
<body>
<!--  메뉴바 -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">종상이의<br> 블로그</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="#kk">좋아하는 것<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="#pp">특기</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="#dd">꿈</a>
      </li>
    </ul>
    <% if(session.getAttribute("id") == null){ %>
    <form class="form-inline my-2 my-lg-0" id="loginForm" action="/WebClass/bloglogin" method="post">
      <input class="form-control mr--sm-2" type="text" placeholder="ID" aria-label="ID" id="id" name="id" required>
       <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" name="pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
    <% }else { %>
    <div class="nav-item dropdown">
      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    	이종상님
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
      	<form action="/WebClass/bloglogout" method="post">
      		<button type="submit" class="dropdown-item">Sign out</button>
   		</form>   	
    	</div> 
    </div>
	<% } %>
    <!-- <form class="form-inline my-2 my-lg-0" id="loginForm2">
	    <p id="text1">
	    	<input type="radio" name="grade" value="1" checked required>1학년
			<input type="radio" name="grade" value="2" required>2학년
			<input type="radio" name="grade" value="3" required>3학년</p>
			<select>
		<option value="1">1반
		</option>Z
		<option value="2">2반
		</option>
		<option value="3">3반
		</option>
		<option  value="4">4반
		</option>
		<option value="5">4반
		</option>
		<option value="6">6반
		</option>
		</select>
	      <input class="form-control mr--sm-2" type="text" placeholder="번호" aria-label="PWD2" id="pwd2" required>
	       <input class="form-control mr-sm-2" type="text" placeholder="이름" aria-label="ID2" id="id2" required>
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign</button>
    </form> -->
  		</div>
	</nav>
	<div class="container">
	    <br> <h1>종상이의 블로그</h1> <br>
	    <h2>출신:원미중</h2>
	    <h2>나이:18</h2>
	    <h2>성별:남</h2>
	    <h2>(영어로 south)</h2>
	    <h2>키:165</h2>
	    <h2>몸무게:46</h2>
	    <h2>학번:2424</h2>
	    <h2>(영어로 move move)</h2>
	    <img src="/WebClass/image/7.jpg" alt="이사"><img src="/WebClass/image/7.jpg" alt="이사"><br>
	    <h2>과:웹프로그래밍</h2>
	    <h2>아리아리동아리:바우스토리</h2>
	    <h2>포지션: 학습부장</h2>
	    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	    <a id=kk></a>
	    <h1>좋아하는 것</h1><br>
	    <h2>쇼미더머니6-우원재</h2>
	    <h2>5년 만에 등장한 일반인 파이널 진출자<br>행주와 더불어 본 시즌 최대 수혜자</h2><br><br>
	    <a class="nav-link" href="http://tv.naver.com/v/1820273">http://tv.naver.com/v/1820273</a>
	    <h2>1차예선</h2><br>
	    <a class="nav-link" href="http://tv.naver.com/v/1840811">http://tv.naver.com/v/1840811</a>
	    <h2>2차예선</h2><br>
	    <a class="nav-link" href="http://tv.naver.com/v/1861927">http://tv.naver.com/v/1861927</a>
	    <h2>3차예선</h2><br>
	    <a class="nav-link" href="http://tv.naver.com/v/1947963">http://tv.naver.com/v/1947963</a>
	    <h2>팀배틀</h2><br>
	    <a class="nav-link" href="http://tv.naver.com/v/1969378">http://tv.naver.com/v/1969378</a>
	    <h2>1차공연</h2><br>
	    <a class="nav-link" href="http://tv.naver.com/v/1992533">http://tv.naver.com/v/1992533</a>
	    <h2>세미파이널</h2><br>
	    <a class="nav-link" href="http://tv.naver.com/v/2017793">http://tv.naver.com/v/2017793</a>
	    <h2>파이널</h2><br><br>
	     <img src="/WebClass/image/4.gif" alt="우원재"><br>
	    <h2>요즘 쇼미더머니를 보다가 우원재의 랩에 빠져들었다.</h2>
	    <a href="#">위로</a>
	    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	    <a id=pp></a>
	    <h1>특기</h1><br>
    	<h2>애교</h2><br>
    	<a class="nav-link" href="https://www.youtube.com/watch?v=wUnwCH3Rblc">https://www.youtube.com/watch?v=wUnwCH3Rblc</a>
    	<h2>황정음의 치즈버거 사주세요</h2><br>
    	<a class="nav-link" href="https://www.youtube.com/watch?v=D3aVl6I8evA">https://www.youtube.com/watch?v=D3aVl6I8evA</a>
    	<h2>쌈마이웨이 애교</h2>
     	<a class="nav-link" href="https://www.youtube.com/watch?v=0XLrOxo-sSE">https://www.youtube.com/watch?v=0XLrOxo-sSE</a>
    	<h2>사나의 치즈김밥</h2><br>
     	<img src="/WebClass/image/5.gif" alt="사나"><br>
    	<a href="#">위로</a>
    	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    	<a id=dd></a>
    	<h1>꿈</h1><br>
    	<h2>10년후:선생님</h2><br><br>
    	<h2>30년후:떡볶이 가게집 사장</h2><br>
    	<h2>떡볶 떡볶</h2>
    	<h2>떡볶 떡볶</h2>
   		<img src="/WebClass/image/3.jpg" width="300" height="200" alt="떡볶이1"><br><br>
		<img src="/WebClass/image/6.png" width="300" height="200" alt="떡볶이2"><br>
    	<a href="#">위로</a>
	</div>

<!-- 모달창 -->
	<div class="modal" id="myModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title">result</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <p></p>
	      </div>
	      <div class="modal-footer">
	            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script>
    <%-- 로그인이 실패한 경우 처리 추가 --%>
	<% if("error".equals(request.getAttribute("msg"))) { %>
		document.getElementById('id').value = <%= request.getAttribute("w_id") %>;
		document.getElementById('pwd').value = <%= request.getAttribute("w_pwd") %>;
		
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
	<% } %>
    
    </script>
</body>
</html>