<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
        <link href="<%=application.getContextPath() %>/resources/css/purchaseList.css" rel="stylesheet" type="text/css"/>
        <link href="<%=application.getContextPath() %>/resources/css/mypage.css" rel="stylesheet" type="text/css"/>


<script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/review.js"></script>

  <!-- 컨텐츠 -->
  <div >
	   <!-- 마이페이지 타이틀 -->
	  <div >
	      <h3 id="mypageTitle">MY PAGE</h3>
	  </div>

      <!-- 마이페이지 탭 목록 -->
      <div id="mypageList">
          <a href="<%=application.getContextPath()%>/purchaselist" class="mypage-tab-clicked">구매내역</a>
          <a href="<%=application.getContextPath()%>/wishlist" class="mypage-tab">위시리스트</a>
          <a href="<%=application.getContextPath()%>/changeinfo" class="mypage-tab">개인정보수정</a>
          <a href="<%=application.getContextPath()%>/withdrawal" class="mypage-tab">회원탈퇴</a>
          <a href="<%=application.getContextPath()%>/faq" class="mypage-tab">FAQ</a>
      </div>
  </div>

	<!-- 구매내역 -->
   <div class="container-fluid border">
       <h3 id="mypageTitle-under">구매내역</h3>
       <hr/>
       
       <c:forEach var="order" items="${list}">
	       <div class="row purchaseContent">
	       
	           <div class="col" style="border-right:1px solid white;">
	               <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/3.jpg" class="purchaseImg">
	           </div>
	           <div class="col purchase-details">
	               <p>주문일자 : ${order.orderDate}</p>
	               <p>주문번호 : ${order.orderNo}</p>
	               <p>주문상품 : ${order.productName}</p>
	               <p>선택옵션 : 단일품목</p>
	               <p>구매상태 : ${order.orderState}</p>
	           </div>
	           
	           <div class="col">
	               <a href="<%=application.getContextPath()%>/purchaseListDetail" class="exchange-btn">주문상세정보</a>
	           </div>
	           <div class="col">
	               <a href="<%=application.getContextPath()%>/exchangerefund" class="exchange-btn">교환/환불/구매취소</a>
	           </div>
	    
	       </div>

       </c:forEach>

	<!--페이지 넘어가는 부분-->
	  <div class="pagination-purchase">
	      <nav aria-label="Page navigation example">
	          <ul class="pagination">
	              <li class="page-item">
	                  <a class="page-link" href="#" aria-label="Previous">
	                      <span aria-hidden="true">&laquo;</span>
	                  </a>
	              </li>
	              <li class="page-item">
	                  <a class="page-link" href="#">1</a>
	              </li>
	              <li class="page-item">
	                  <a class="page-link" href="#">2</a>
	              </li>
	              <li class="page-item">
	                  <a class="page-link" href="#">3</a>
	              </li>
	              <li class="page-item">
	                  <a class="page-link" href="#">4</a>
	              </li>
	              <li class="page-item">
	                  <a class="page-link" href="#">5</a>
	              </li>
	              <li class="page-item">
	                  <a class="page-link" href="#" aria-label="Next">
	                      <span aria-hidden="true">&raquo;</span>
	                  </a>
	              </li>
	          </ul>
	      </nav>
	  </div>
	</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>


