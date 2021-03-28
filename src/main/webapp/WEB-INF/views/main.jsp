<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
        <link href="<%=application.getContextPath() %>/resources/css/main.css" rel="stylesheet" type="text/css"/>


 <!-- 컨텐츠 -->
        <div class="container-fluid">
            <div class="main-middle-title-line">
                <div class="line-img"></div>
                <div class="main-middle-title">BEST</div>
                <div class="line-img"></div>
            </div>
            <!-- 베스트 4개 -->
            <div class="row">
                <div class="col-3">
                    <div class="product-box">
                        <a href="<%=application.getContextPath() %>/product">
                            <div class="main-product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/3.jpg">
                            </div>
                        </a>

                        <div class="main-product-name">
                            <div>데코레이션 쓰리</div>
                            <div class="origin-price">38,000원</div>
                            <div class="price">33,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <a href="<%=application.getContextPath() %>/product">
                            <div class="main-product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/2.jpg">
                            </div>
                        </a>
                        <div class="main-product-name">
                            <div>데코레이션 투</div>
                            <div class="origin-price">24,000원</div>
                            <div class="price">20,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <a href="<%=application.getContextPath() %>/product">
                            <div class="main-product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/5.jpg">
                            </div>
                        </a>
                        <div class="main-product-name">
                            <div>데코레이션 파이브</div>
                            <div class="origin-price">33,000원</div>
                            <div class="price">28,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <a href="<%=application.getContextPath() %>/product">
                            <div class="main-product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/6.jpg">
                            </div>
                        </a>
                        <div class="main-product-name">
                            <div>데코레이션 씩스</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">17,000원</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-middle-title-line">
                <div class="line-img"></div>
                <div class="main-middle-title">NEW</div>
                <div class="line-img"></div>
            </div>
            <!--신상품 12개-->
            <div class="row">
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/캔들/4.jpg"></a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/캔들/5.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/캔들/6.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/캔들/7.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/캔들/5.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/캔들/6.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/캔들/7.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/1.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/2.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/3.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/4.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="product-box">
                        <div class="main-product">
                            <a href="<%=application.getContextPath() %>/product">
                                <img src="<%=application.getContextPath() %>/resources/images/트리/장식용품/5.jpg">
                            </a>
                        </div>
                        <div class="main-product-name">
                            <div>(신상품) 샘플 이미지 제목</div>
                            <div class="origin-price">20,000원</div>
                            <div class="price">18,000원</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>


