# 4팀- 러쉬코리아 (Beauty Trend Style)

## 팀원

### Front-end

- 강루비, 김대호, 양석문, 주혜린

### Back-end

- 김정훈, 정다영, 정승렬

## 사용한 기술

### Front-end

- React, Sass

### Back-end

- Node.js, MySQL, Express

### co-work

- git, slack, trello, notion

## 시연 사진

## hush(디저트)

1. 로그인, 회원가입

### 구현 API

회원가입

![01 회원가입페이지](https://user-images.githubusercontent.com/103636274/193209653-b512b19d-d29d-452c-9c96-2481368a05d6.png)

로그인

![02 로그인페이지](https://user-images.githubusercontent.com/103636274/193209635-679cd55f-46de-40e2-a3bf-3176607cb6aa.png)

2. 메인페이지

- 메인페이지 : 제품검색, 회원 포인트 관리

![02 메인페이지](https://user-images.githubusercontent.com/103636274/193209773-eff64389-f8ee-4e79-8675-bce5949ca537.png)

3. 제품페이지

- 제품목록 페이지 : 전체, 카테고리별 제품 소개

![03 제품페이지](https://user-images.githubusercontent.com/103636274/193210036-623b9086-5f49-4ec1-80b6-32ee6f909552.png)

4. 상세페이지
   제품상세 페이지 : 장바구니페이지로 넘어가기 위한 제품 소개 및 장바구니 담기, 제품리뷰

![04 상세페이지](https://user-images.githubusercontent.com/103636274/193210382-19a07f24-de21-4f8c-9af1-d97255b8aa04.png)

# 5. 장바구니 페이지

### Create

1.  로그인 시 부여된 Asccess Token을 이용해 이용자를 특정
2.  제품 상세 페이지에서 해당 상품을 장바구니에 담을 때 Access Token, 상품Id, 수량을 전달 받아 carts 테이블에 해당 이용자의 raw 생성

### Read

carts 테이블에 생성된 제품의 정보를 해당 페이지에 필요한 정보와 함께 정보 전달
carts 테이블을 시작으로 products, categories 테이블을 Left Join을 통해 해당 정보를 가져옴
return 값 : Thumbnail image, 상품이름, 카테고리 이름, 수량, 가격, 제품Id

### Update

장바구니 페이지에서의 수량조절 API

1.  로그인 시 부여된 Access Token을 이용해 이용자를 특정
2.  장바구니 페이지에서 수량을 조절할 때 마다 post 요정(**Access Token, product_id**)으로 변경되는 값(**quantity**)을 전달 받아 carts 테이블의 해당 raw 수정

### Delete

장바구니 페이지에서 상품 삭제 API
페이지 내에서 삭제 요청시 전달 받은 Access Token, product_id를 이용해 carts 테이블의 해당 raw 삭제


## Bloker
### 초기 기획
다수 인원이 참여하는 프로젝트에서의 기획 단계의 중요성을 놓치고 프로젝트를 시작
초기 기획 단계에서 데이터의 흐름을 정리하고 이에 따라 API 명세서를 작성하였다면 프로젝트 진행 중간에 DB 테이플을 수정하지 않았거나 Front-End 개발자와의 소통에 있어서 보다 수월한 소통이 가능했었을 것 같다

## 성장 경험
### HTTP 통신
프로젝트를 진행하면서 HTTP 통신 방법 중에 데이터를 Body에서, 쿼리파라미터로 인자를 송,수신 하는 방법을 알게 되었다
학교에서 네트워크 과목을 배울 때에는 패킷에 헤더, 바디, 페이로드 가 있고 비트 단위로 어떻게 구성되어있는지를 이론적으로만 배웠지만, 실제 구현해보지는 못해서 HTTP 통신을 할 때 어떤 데이터를 어떻게 처리해야 하는지 구현 단계에서 어려운 부분이 있었다.

하지만 실제로 구현을 해보니 헤더와 바디에서 데이터를 가져오고 보내는 방법을 알게 되어 이론에서 배우지 못한 구현방법을 

![05 장바구니페이지](https://user-images.githubusercontent.com/103636274/193210694-ff098bd4-382a-46b5-9ef1-5131ed5da4a1.png)

6. 찜목록 페이지

- 찜목록 페이지 : 제품상세 페이지에서 찜하기한 제품 찜목록 리스트 보여주기

7. 결제페이지
   결제 페이지 : 주문요청시 각 상품별 수량, 가격을 제품 테이블(재고)에서 변경 및 이용자 잔액 변경

![07 결제페이지](https://user-images.githubusercontent.com/103636274/193210671-471361cb-9d3b-4041-9a27-4cfe629cf0aa.png)
