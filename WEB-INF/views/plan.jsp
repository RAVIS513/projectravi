<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/abstract.jsp">
	<%-- スタイルシートリンク --%>
	<c:param name="addHeadStyleSheet">
		<link rel="stylesheet" type="text/css" href='<c:url value="/css/plan.css"></c:url>'>
	</c:param>

	<%-- スクリプトファイルリンク --%>
	<c:param name="addHeadScriptFile">

	</c:param>

	<%-- タイトル --%>
	<c:param name="addHeadTitle">
		Plan
	</c:param>

	<%-- 本文 --%>
	<c:param name="addBody">

		<!-- ************** Navbar ************** -->
		<c:import url="/WEB-INF/views/navbar.jsp"></c:import>

		<!-- ************** HeadContents ************** -->
		<div id="head-contents">
			<div class="container">
				<div id="head-contents-inner">
					<h1 id="head-title">
						企画 1 : <span class="text-blue">GUGENを目指す</span>
					</h1>
					<p id="head-detail">
						<span class="text-blue">GUGENとは</span><br>
						国内最大級の電子工作コンテスト<br>
						賞金総額は100万円<br>
						自作の電子工作であれば何でも応募可能（たぶん。。）<br>
						応募総数は毎年100~150件くらい<br>
						応募締切は11月中旬頃。審査および結果発表は12月<br>
						<a href="https://gugen.jp">リンク：https://gugen.jp</a><br><br>
						<span class="text-blue">目標</span><br>
						1. 応募する<br>
						2. 第＊選考に通って、プレゼンする！<br>
						3. 何かしら受賞する！！<br>

					</p>
				</div>
			</div>
		</div>

		<!-- ************** MainContents ************** -->
		<div class="container">

			<hr class="section-divider">
			<div class="row section">
				<div class="col-md-7">
					<h2 class="section-title">
						Product
						<span class="text-gray">No.1</span>
					</h2>
					<p class="section-detail">
						aaaabbbbcccc
					</p>
				</div>
				<div class="col-md-5">
					<img class="img-responsive center-block" alt="500x500" src='<c:url value="/img/500x500.svg"></c:url>' data-holder-rendered="true">
				</div>
			</div>

			<hr class="section-divider">
			<div class="row section">
				<div class="col-md-7">
					<h2 class="section-title">
						Product
						<span class="text-gray">No.2</span>
					</h2>
					<p class="section-detail">
						aaaabbbbcccc
					</p>
				</div>
				<div class="col-md-5">
					<img class="img-responsive center-block" alt="500x500" src='<c:url value="/img/500x500.svg"></c:url>' data-holder-rendered="true">
				</div>
			</div>

			<hr class="section-divider">
			<div class="row section">
				<div class="col-md-7">
					<h2 class="section-title">
						Product
						<span class="text-gray">No.3</span>
					</h2>
					<p class="section-detail">
						aaaabbbbcccc
					</p>
				</div>
				<div class="col-md-5">
					<img class="img-responsive center-block" alt="500x500" src='<c:url value="/img/500x500.svg"></c:url>' data-holder-rendered="true">
				</div>
			</div>

		</div>

	</c:param>
</c:import>