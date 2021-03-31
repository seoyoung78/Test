<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 
<%@ include file="/WEB-INF/views/common/header.jsp"%>
        <link href="<%=application.getContextPath() %>/resources/css/product.css" rel="stylesheet" type="text/css"/>

<!--상세페이지를 위한-->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
            rel="stylesheet">
            
       <!-- 컨텐츠 -->
        <div class="container-fluid">
            <!--여기에 작성-->

            <div class="row product-section ">
                <div class="col-md-12">
                    <hr>
                    <h3>| Product |</h3>
                    <hr>
                </div>
                <div class="preview col-md-5" style="float: left; margin-left: 8%;">
                    <div class="preview-pic tab-content">
                        <div class="tab-pane active" id="pic-1"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/6.jpg"/></div>
                        <div class="tab-pane" id="pic-2"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/1.jpg"/></div>
                        <div class="tab-pane" id="pic-3"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/2.jpg"/></div>
                        <div class="tab-pane" id="pic-4"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/3.jpg"/></div>
                        <div class="tab-pane" id="pic-5"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/5.jpg"/></div>
                    </div>
                    <ul class="preview-thumbnail nav nav-tabs">
                        <li class="active">
                            <a data-target="#pic-1" data-toggle="tab"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/6.jpg"/></a>
                        </li>
                        <li>
                            <a data-target="#pic-2" data-toggle="tab"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/1.jpg"/></a>
                        </li>
                        <li>
                            <a data-target="#pic-3" data-toggle="tab"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/2.jpg"/></a>
                        </li>
                        <li>
                            <a data-target="#pic-4" data-toggle="tab"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/3.jpg"/></a>
                        </li>
                        <li>
                            <a data-target="#pic-5" data-toggle="tab"><img class="product-img" src="<%=application.getContextPath() %>/resources/images/트리/장식용품/5.jpg"/></a>
                        </li>
                    </ul>
                </div>
                <div
                    class="product-details col-md-6"
                    style="position:relative; left: 8%; top:25%; padding-top: 50px;">
                    <h3 class="product-title">| Christmas Car |</h3>
                    <h5 class="product-price">가격 :
                        <span>
                            18,000원</span></h5>
                    <div class="quantity-section" style="padding-bottom:20px;">
                        <h5 class="product-quantity">수량 :
                        </h5>
                        <div>
                            <div class="btn-minus" style="background-color: white">
                                <span class="bi bi-chevron-down"></span></div>
                            <input value="1"/>
                            <div class="btn-plus" style="background-color: white">
                                <span class="bi bi-chevron-up"></span></div>
                        </div>
                    </div>
                    <div class="product-action">
                        <!-- 장바구니 추가 post -->
                    <form method="post" action="addcart" style="display:inline-block">
                        <button
                            class="add-to-cart btn btn-default"
                            type="submit"
                            onclick="alert('장바구니에 추가되었습니다.');">add to cart</button>
					</form>
					<form method="post" action="addwishlist" style="display:inline-block">
                        <button
                            class="like btn btn-default"
                            type="submit"
                            onclick="alert('찜 리스트에 추가되었습니다.');">
                            <span class="fa fa-heart"></span></button>
                    </form>
                    </div>
                </div>
            </div>

            <div class="row detail-section">
                <div class="col-md-12">
                    <hr>
                    <h3>| details |</h3>
                    <hr>
                </div>
                <div class="col-md-12 product-description">
                    <p>
                        This bunch were whispering excitedly, too, and he couldn't see a single
                        collecting tin. It was on his way back past them, clutching a large doughnut in
                        a bag, that he caught a few words of what they were saying.
                        <br/>

                        "The Potters, that's right, that's what I heard yes, their son, Harry" Mr.
                        Dursley stopped dead. Fear flooded him. He looked back at the whisperers as if
                        he wanted to say something to them, but thought better of it.
                        <div class="detail-img-box">
                            <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/4.jpg">
                        </div>
                        This bunch were whispering excitedly, too, and he couldn't see a single
                        collecting tin. It was on his way back past them, clutching a large doughnut in
                        a bag, that he caught a few words of what they were saying.
                        <br/>

                        "The Potters, that's right, that's what I heard yes, their son, Harry" Mr.
                        Dursley stopped dead. Fear flooded him. He looked back at the whisperers as if
                        he wanted to say something to them, but thought better of it.
                        <div class="detail-img-box">
                            <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/5.jpg">
                        </div>
                        This bunch were whispering excitedly, too, and he couldn't see a single
                        collecting tin. It was on his way back past them, clutching a large doughnut in
                        a bag, that he caught a few words of what they were saying.
                        <br/>
                        "The Potters, that's right, that's what I heard yes, their son, Harry" Mr.
                        Dursley stopped dead. Fear flooded him. He looked back at the whisperers as if
                        he wanted to say something to them, but thought better of it.
                        This bunch were whispering excitedly, too, and he couldn't see a single
                        collecting tin. It was on his way back past them, clutching a large doughnut in
                        a bag, that he caught a few words of what they were saying.
                        <br/>
                        "The Potters, that's right, that's what I heard yes, their son, Harry" Mr.
                        Dursley stopped dead. Fear flooded him. He looked back at the whisperers as if
                        he wanted to say something to them, but thought better of it.
                        <div class="detail-img-box">
                            <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/6.jpg">
                        </div>
                        "The Potters, that's right, that's what I heard yes, their son, Harry" Mr.
                        Dursley stopped dead. Fear flooded him. He looked back at the whisperers as if
                        he wanted to say something to them, but thought better of it.
                        This bunch were whispering excitedly, too, and he couldn't see a single
                        collecting tin. It was on his way back past them, clutching a large doughnut in
                        a bag, that he caught a few words of what they were saying.
                        <br/>
                        "The Potters, that's right, that's what I heard yes, their son, Harry" Mr.
                        Dursley stopped dead. Fear flooded him. He looked back at the whisperers as if
                        he wanted to say something to them, but thought better of it.
                        <div class="detail-img-box">
                            <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/7.jpg">
                        </div>
                    </p>
                </div>
            </div>

            <div class="row review-section">
                <div class="col-md-12">
                    <hr>
                    <h3>| Reviews |</h3>
                    <hr>
                </div>
                
                <c:forEach var="reviews" items="${rlist}">
                	<div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4 review-part-left">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="http://placekitten.com/400/252">
                                </div>
                                <div class="col-md-4">
                                    <p><fmt:formatDate value="${reviews.reviewRegdate}" pattern="yyyy-MM-dd"/></p>
                                    <span>${reviews.userId}</span><br>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 review-part-right">
                            <p>${reviews.reviewContent}</p>
                        </div>
                        <div class="col-md-2 review-part-right">
                        	<a class="btn review-btn" href="delreview?reviewNo=${reviews.reviewNo}">remove</a>                                                  	                         
                        </div>
                    </div>
                	</div>
                </c:forEach>                
                               
            </div>
        </div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>


