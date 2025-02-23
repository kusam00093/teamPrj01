<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
	<div class="container mt-5" >
		<section class="container">
			<h2 class="mb-3">회원 정보</h2>
			<div id="total">
				<div id="profile">
					<img src="${cvo.logo}" class="img-thumbnail" alt="프로필없음">
				</div>
				<div id="info" class="ml-3">
					<div class="input-group mb-3">
						<input type="hidden" id="user_idx" name="user_idx" value="${vo.user_idx}">
					  <span class="input-group-text" id="inputGroup-sizing-default">아이디</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${vo.id}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">이메일</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${vo.email}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">기업 이름</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${cvo.name}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">사업자 번호</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${cvo.cnum}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">대표자 이름</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${cvo.representative}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">우편번호</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${cvo.zip_code}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">주소</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${cvo.address}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">기업 구분</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${cvo.ctype}">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="inputGroup-sizing-default">설립연도</span>
					  <input readonly type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${cvo.bdate}">
					</div>
				</div>
			</div>
			<div class="">
        <a id="info-update" name="info-update" class="btn btn-primary" href="/Company/InfoUpdateForm?user_idx=${vo.user_idx}">수정</a>
      </div>
		</section>
	</div>
