<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고 상세 보기</title>
<link rel="stylesheet" href="/css/common.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
	#container {
		
	}

	#container > .aside {
		float: left;
		position: sticky
		margin: 0;
	}
</style>
<link rel="icon" href="/img/CaTchWorkFavicon.png">
</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp" %>

   <%@include file="/WEB-INF/include/nav.jsp" %>
   
<!--    <aside> -->
<!--    		<a>이력서</a> -->
<!--    		<a>지원현황</a> -->
<!--    		<a>추천 이력서</a> -->
<!--    		<a>맨위로</a> -->
<!--    </aside> -->
<div id="container">
<div class="d-flex flex-column flex-shrink-0 p-3 bg-light aside" style="width: 250px;">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
      <span class="fs-4">Sidebar</span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
        <a href="#postdetail" class="nav-link link-dark" aria-current="page">
          <svg class="bi me-2" width="16" height="16"></svg>
          공고
        </a>
      </li>
      <li>
        <a href="#mypost" class="nav-link link-dark">
          <svg class="bi me-2" width="16" height="16"></svg>
          지원 현황
        </a>
      </li>
      <li>
        <a href="#postrec" class="nav-link link-dark">
          <svg class="bi me-2" width="16" height="16"></svg>
          추천 이력서
        </a>
      </li>
      <li>
        <a href="#postdetail" class="nav-link link-dark">
          <svg class="bi me-2" width="16" height="16"></svg>
          맨위로 △
        </a>
      </li>
    </ul>
  </div>

<div class="section">
	<div class="" id="postdetail" name="postdetail">
  <div class="">
    <div class="">
    <form class="needs-validation container"
				action="/Company/PostUpdateForm" method="post">
				<input type="hidden" id="post_idx" name="post_idx" value="${post.post_idx}">
      <div class="">
					<div class="my-1 mx-auto row">
						<h2 class="form-control" id="title" name="title">${post.title}</h2>
					</div>
					<hr>
					<div class="my-1 mx-auto row">
						<div class="row">
							<div class="col-6 row d-flex align-items-center">
								<div class="col-md-auto">
									<h5>지원 자격</h5>
								</div>
								<div class="col-md-8">
									<input type="text" class="form-control" id="career"
										name="career" readonly="readonly" value="${post.career}">
								</div>
							</div>
							<div class="col-6 row d-flex align-items-center ms-4">
								<div class="col-md-4">
									<h5>연봉</h5>
								</div>
								<div class="col-md-8">
									<input type="text" class="form-control" id="salary" name="salary" readonly="readonly" value="${post.salary}">
								</div>
							</div>
						</div>
						<div class="row mt-4">
							<div class="col-6 row d-flex align-items-center">
								<div class="col-md-auto">
									<h5>근무 조건</h5>
								</div>
								<div class="col-md-8">
									<input type="text" class="form-control" id="jobtype" name="jobtype" readonly="readonly" value="${post.jobtype}">
								</div>
							</div>
							<div class="col-6 row d-flex align-items-center ms-4">
								<div class="col-md-4">
									<h5>근무 시간</h5>
								</div>
								<div class="col-md-8 d-flex">
									<input class="form-control" type="time" name="gowork" 
										id="gowork" readonly="readonly" value="${post.gowork}"> <input
										class="form-control ms-3" type="time" name="gohome"
										id="gohome" readonly="readonly" value="${post.gohome}">
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-4"">
							<div class="col-6 row d-flex align-items-center">
								<div class="col-md-auto">
									<h5>담당자</h5>
								</div>
								<div class="col-md-8">
									<input type="text" class="form-control" id="manager"
										name="manager" readonly="readonly" value="${post.manager}">
								</div>
							</div>
							<div class="col-6 row d-flex align-items-center ms-4">
								<div class="col-md-4">
									<h5>담당자 번호</h5>
								</div>
								<div class="col-md-8">
									<input type="text" class="form-control" id="mphone" name="mphone" readonly="readonly" value="${post.mphone}">
								</div>
							</div>
						</div>
						<div class="row mt-4"">
							<div class="col-6 row d-flex align-items-center">
								<div class="col-md-auto">
									<h5>부서</h5>
								</div>
								<div class="col-md-8">
									<input type="text" class="form-control" id="department"
										name="department" readonly="readonly" value="${post.department}">
								</div>
							</div>
						</div>
					<div class="my-1 mx-auto row">
						<label for="deadline" class="form-label">마감 일자</label> <input
							type="text" class="form-control" id="deadline" name="deadline" readonly="readonly" value="${post.deadline}">
					</div>
					<div class="my-1 mx-auto row">
						<label for="c_intro" class="form-label">기업 소개</label>
						<textarea rows="10" class="form-control" id="intro"
							name="intro" readonly="readonly">${post.intro}</textarea>

					</div>
					<div class="my-1 mx-auto row">
						<label for="job_intro" class="form-label">업무 소개</label>
						<textarea rows="10" class="form-control" id="explain"
							name="explain" readonly="readonly">${post.explain}</textarea>
					</div>
					<div class="mt-3 mx-auto row">
						<c:forEach var="skill" items="${skill}">
							<div class="col-auto">
								<button type="button" class="btn btn-primary">${skill.name}</button>
							</div>
						</c:forEach>
						<input type="hidden" id="defaultSkillIdx" name="skillIdx" value="0">
					</div>
      </div>
      <div class="">
        <a id="post-update" class="btn btn-primary" href="/Company/PostUpdateForm?post_idx=${post.post_idx}">수정</a>
        <button type="button" id="post-delete" class="btn btn-danger">삭제</button>
        <a type="button" class="btn btn-secondary" href="javascript:window.history.back();">뒤로</a>
      </div>
      </form>
    </div>
  </div>
</div>
	
	<hr class="container mt-5 mb-3">
	<%@include file="/WEB-INF/views/company/post/post_participateList.jsp" %>
	<hr class="container mt-5 mb-3">
	<%@include file="/WEB-INF/views/company/post/post_recommendList.jsp" %>
	</div>
	</div>
	<%@include file="/WEB-INF/include/footer.jsp" %>

	<script>
		const body = document.body;
		const html = document.documentElement;
		const height = Math.max(
								    body.scrollHeight,
								    body.offsetHeight,
								    html.clientHeight,
								    html.scrollHeight,
								    html.offsetHeight
								);
		//console.log(height)
		
		document.getElementById("container").style.height = height
	</script>
	
	<script>
		const stateBtnEl = document.getElementById("post-delete")
	
		stateBtnEl.addEventListener('click', (e) => {
		    let url = '/Company/PostDelete'
		    const post = {
		        post_idx: document.querySelector("#post_idx").value
		    }
		    
		    const param = {
            method  : 'POST',
            headers : {"Content-Type": "application/json" },
            body    : JSON.stringify(post)
        }
	
		    
		    fetch(url, param)
		    .then(response => {
		        const msg = (response.ok) ? "공고가 삭제되었습니다." : "공고 삭제에 실패하였습니다."
		        alert(msg)
		        window.location.href("http://localhost:9086/Company/Mypage?nowpage=1")
		    })
		})
	</script>

</body>
</html>