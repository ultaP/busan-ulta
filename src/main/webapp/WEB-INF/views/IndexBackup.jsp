<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 슬라이더 -->
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

	<!-- Indicators/dots -->
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
			class="active"></button>
		<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
		<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
	</div>

	<!-- The slideshow/carousel -->
	<div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/광안대교.png" alt="" class="d-block"
					style="width: 100%">
			</div>
			<div class="carousel-item">
				<img src="images/20201206-EX7A2469.jpg" alt="" class="d-block"
					style="width: 100%">
			</div>
			<div class="carousel-item">
				<img src="images/66.jpg" alt="" class="d-block" style="width: 100%">
			</div>
		</div>
	</div>

	<!-- Left and right controls/icons -->
	<button class="carousel-control-prev" type="button"
		data-bs-target="#demo" data-bs-slide="prev">
		<span class="carousel-control-prev-icon"></span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#demo" data-bs-slide="next">
		<span class="carousel-control-next-icon"></span>
	</button>
</div>

<div class="container-fluid mt-3">
	<p class="ment1">당신의 여행을 계획하세요</p>
</div>



<!-- 앨범형 -->
<div class="row row-cols-1 row-cols-md-3 g-4 r-style">
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/카드1.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h6 class="card-title">여행정보</h6>
				<p class="card-text">부산의 관광명소, 음식점 등의 정보를 확인하세요.</p>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/카드2.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h6 class="card-title">여행일정</h6>
				<p class="card-text">여행자들이 올려놓은 여행일정을 확인하고 나만의 일정을 계획해보세요.</p>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/카드3.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h6 class="card-title">팀구하기</h6>
				<p class="card-text">여행자들과 정보를 공유하고 나만의 팀을 구해보세요.</p>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid mt-3">
	<p class="ment2">인기 여행일정</p>
	<p class="ment3">다른 사용자들의 일정을 참고해 나만의 여행을 계획해보세요!</p>
</div>


<!-- 인기 여행일정 -->
<div class="row row-cols-1 row-cols-md-3 g-4 r-style">
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/케이블카.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/케이블카.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/케이블카.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div>
</div>
<div class="row row-cols-1 row-cols-md-3 g-4 r-style">
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/케이블카.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/케이블카.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="card h-100">
			<img src="images/해운대풍경6.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div>
</div>



<%@ include file="footer.jsp"%>