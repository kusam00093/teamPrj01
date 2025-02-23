<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
// 	import { Tab, initMDB } from "mdb-ui-kit";

// 	initMDB({ Tab });
	
	const triggerTabList = [].slice.call(document.querySelectorAll('#myTab a'));
	triggerTabList.forEach((triggerEl) => {
	  const tabTrigger = new Tab(triggerEl);

	  triggerEl.addEventListener('click', (event) => {
	    event.preventDefault();
	    tabTrigger.show();
	  });
	});
</script>

<div id="mypagetab">
	<ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="userinfo-tab" data-bs-toggle="tab"
				data-bs-target="#userinfo" type="button" role="tab" aria-controls="userinfo"
				aria-selected="true">회원 정보</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
				data-bs-target="#myreview" type="button" role="tab"
				aria-controls="myreview" aria-selected="false">공고 목록</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="wishlist-tab" data-bs-toggle="tab"
				data-bs-target="#wishlist" type="button" role="tab"
				aria-controls="wishlist" aria-selected="false">위시리스트</button>
		</li>
	</ul>

</div>

<script>
let key = "${param.key}";
console.log(key);
if(key === "userinfo"){
	
	$("#myreview-tab").removeClass("active");
	$("#wishlist-tab").removeClass("active");
	$("#userinfo-tab").addClass("active");
	
	$("#myreview").removeClass("show active");
	$("#wishlist").removeClass("show active");
	$("#userinfo").addClass("show active");
	
}else if(key === "myreview"){
	
	$("#wishlist-tab").removeClass("active");
	$("#userinfo-tab").removeClass("active");
	$("#myreview-tab").addClass("active");
	
	$("#userinfo").removeClass("show active");
	$("#wishlist").removeClass("show active");
	$("#myreview").addClass("show active");
	
}else if(key === "wishlist"){
	
	$("#userinfo-tab").removeClass("active");
	$("#myreview-tab").removeClass("active");
	$("#wishlist-tab").addClass("active");
	
	$("#myreview").removeClass("show active");
	$("#userinfo").removeClass("show active");
	$("#wishlist").addClass("show active");
	
}
</script>