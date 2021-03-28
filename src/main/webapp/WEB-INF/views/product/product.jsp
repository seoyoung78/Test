<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
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
                    <h5 class="product-sizes">
                        sizes :
                        <span class="size" title="small">s</span>
                        <input type="radio" id="check_size" name="check_size">
                        <span class="size" title="medium">m</span>
                        <input type="radio" id="check_size" name="check_size">
                        <span class="size" title="large">l</span>
                        <input type="radio" id="check_size" name="check_size">
                        <span class="size" title="xtra large">xl</span>
                        <input type="radio" id="check_size" name="check_size">
                    </h5>
                    <h5 class="product-colors">colors :
                        <span class="color orange not-available" title="Not In store"></span>
                        <span class="color green"></span>
                        <span class="color blue"></span>
                    </h5>
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
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4 review-part-left">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="http://placekitten.com/400/252">
                                </div>
                                <div class="col-md-4">
                                    <p>8 days ago</p>
                                    <span>고영희</span><br>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 review-part-right">

                            <p>Mr. and Mrs. Dursley, of number four, Privet Drive, were proud to say that
                                they were perfectly normal, thank you very much.
                            </p>
                        </div>
                        <div class="col-md-2 review-part-right">
                        <form method="post" action="delreview">
                            <button class="review-btn" type="submit" onclick="alert('삭제되었습니다.')">
                                <span>remove</span></button>
                         </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4 review-part-left">
                            <div class="row">
                                <div class="col-md-4 ">
                                    <img src="http://placekitten.com/200/126">
                                </div>
                                <div class="col-md-8">
                                    <p>2 days ago</p>
                                    <span>이강쥐</span><br>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 review-part-right">
                            <p>They were the last people you'd expect to be involved in anything strange or
                                mysterious, because they just didn't hold with such nonsense.</p>
                        </div>
                        <div class="col-md-2 review-part-right">
                            <button class="review-btn" type="button" onclick="alert('삭제되었습니다.')">
                                <span>remove</span></button>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4 review-part-left">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="http://placekitten.com/400/252">
                                </div>
                                <div class="col-md-8 ">
                                    <p>12 days ago</p>
                                    <span>김제니</span><br>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 review-part-right">
                            <p>Mr. Dursley was the director of a firm called Grunnings, which made drills.
                            </p>
                        </div>
                        <div class="col-md-2 review-part-right">
                            <button class="review-btn" type="button" onclick="alert('삭제되었습니다.')">
                                <span>remove</span></button>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 ">
                    <div class="row">
                        <div class="col-md-4 review-part-left">
                            <div class="row">
                                <div class="col-md-4 ">
                                    <img src="http://placekitten.com/200/126">
                                </div>
                                <div class="col-md-8 ">
                                    <p>15 days ago</p>
                                    <span>김미영</span><br>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 review-part-right">
                            <p>He was a big, beefy man with hardly any neck, although he did have a very
                                large mustache.</p>
                        </div>
                        <div class="col-md-2 review-part-right">
                            <button class="review-btn" type="button" onclick="alert('삭제되었습니다.')">
                                <span>remove</span></button>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 ">
                    <div class="row">
                        <div class="col-md-4 review-part-left">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="http://placekitten.com/400/252">
                                </div>
                                <div class="col-md-8 ">
                                    <p>5 month ago</p>
                                    <span>김지연</span><br>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 review-part-right">
                            <p>Mrs. Dursley was thin and blonde and had nearly twice the usual amount of
                                neck, which came in very useful as she spent so much of her time craning over
                                garden fences, spying on the neighbors.</p>
                        </div>
                        <div class="col-md-2 review-part-right">
                            <button class="review-btn" type="button" onclick="alert('삭제되었습니다.')" ;=";">
                                <span>remove</span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>


