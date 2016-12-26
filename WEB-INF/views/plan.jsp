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
						No.1
						<span class="text-gray">エフェクターネットワーク</span>
					</h2>
					<p class="section-detail-title">
						概要
					</p>
					<p class="section-detail-contents">
						・エフェクター設定をスマホで一括管理<br>
						・専用アプリで設定の保存・呼び出しが可能<br>
					</p>
					<p class="section-detail-title">
						主な技術
					</p>
					<p class="section-detail-contents">
						・wifiネットワーク確立<br>
						・エフェクター単位でマイコン実装<br>
						・エフェクターの個別識別用にPROM実装<br>
						※出来れば、マイコンソース用PROMと共通化したい<br>
						・エフェクターのつまみのデジタル化<br>
					</p>
					<p class="section-detail-title">
						最低限目標
					</p>
					<p class="section-detail-contents">
						・複数台エフェクターの一括操作<br>
						・エフェクターはRATモデルなど簡易なもの（つまみがGAIN、ボリュームのみ）<br>
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
						No.2
						<span class="text-gray">ハイパーカンペン</span>
					</h2>
					<p class="section-detail-title">
						概要
					</p>
					<p class="section-detail-contents">
						・ペンケースの底に液晶を装備<br>
						・ペンまたは消しゴム操作で表示内容を切替<br>
						・これがあれば、授業中の暇つぶし、テストのカンニングも容易く・・・<br>
					</p>
					<p class="section-detail-title">
						主な技術
					</p>
					<p class="section-detail-contents">
						・マイコンでの画像表示（内臓SDカードまたはUSBからの読出し）<br>
						※無理ならゲートアレイ使うか・・・<br>
						・ペンなどの外部ツールとの連携<br>
						※ペンの振る動作の検知（磁気検知でいけるか・・・？）<br>
						・内臓SDカード（USB）は取り出し可能する<br>
						※ここにデータを入れれば、勝手にマイコンから読み込む<br>
						・他にも何か簡易ゲームなど実装できればいいな<br>
					</p>
					<p class="section-detail-title">
						最低限目標
					</p>
					<p class="section-detail-contents">
						・ペンケース本体の完成<br>
						・ペンなどの外部ツールでの操作可<br>
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
						No.3
						<span class="text-gray">ドロイド零号機</span>
					</h2>
					<p class="section-detail-title">
						概要
					</p>
					<p class="section-detail-contents">
						・球型ロボット<br>
						・スマホの傾きに応じて前後左右に動く<br>
						・音声認識で簡単な会話（蛍光表示管）<br>
					</p>
					<p class="section-detail-title">
						主な技術
					</p>
					<p class="section-detail-contents">
						・wifiネットワーク確率<br>
						・マイコンでのモーター制御<br>
						・前後左右動作機構の実装（機械分野でよくわからん）<br>
						・球型筐体（機械分野でよくわからん）<br>
						・音声認識<br>
					</p>
					<p class="section-detail-title">
						最低限目標
					</p>
					<p class="section-detail-contents">
						・前後左右移動<br>
						・スマホから操作<br>
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
						No.4
						<span class="text-gray">XXX</span>
					</h2>
					<p class="section-detail-title">
						概要
					</p>
					<p class="section-detail-contents">

					</p>
					<p class="section-detail-title">
						主な技術
					</p>
					<p class="section-detail-contents">
					</p>
					<p class="section-detail-title">
						最低限目標
					</p>
					<p class="section-detail-contents">
					</p>
				</div>
				<div class="col-md-5">
					<img class="img-responsive center-block" alt="500x500" src='<c:url value="/img/500x500.svg"></c:url>' data-holder-rendered="true">
				</div>
			</div>

		</div>

	</c:param>
</c:import>