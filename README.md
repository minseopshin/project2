# project2

### 프로젝트 개요
* 프로젝트 명 : Ranking-shop
* 기획의도 : 코로나의 영향으로인해 우울감이 늘어난 사람들이 등산이나 홈트레이닝으로 극복하며 자기관리 하는 사람들이 늘어남 이에따른 소비자들의 구매패턴도 자기관리를 위한 상품으로 변할것이라고 생각하여 닭가슴살을 주 상품으로 하는 자기관리 식품, 물품 판매 쇼핑몰 사이트를 제작
* 개발기간 : 2021.05.31~2021.07.07 
* 개발인원 : 4명

### 담당 역할
1. main
2. main 검색기능
3. 결제
4. 장바구니
5. 주소 등록, 수정, 삭제
6. 주문 조회 , 상세내용
7. 관리자 페이지 main
8. 관리자 페이지 데이터 시각화
9. 팀장 역할 : DB 환경구축, 제작 된 파일점검, 팀원들의 제작 된 파일연결

### 담당 파일
* [controller](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/controller)
  * [AddrController](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/controller/AddrController.java)
  * [AnalysisController](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/controller/AnalysisController.java)
  * [BasketController](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/controller/BasketController.java)
  * [MainController](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/controller/MainController.java)
  * [PaymentController](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/controller/PaymentController.java)
* [dao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao)
  * [AddrDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/AddrDao.java)
  * [AnalysisDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/AnalysisDao.java)
  * [BasketDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/BasketDao.java)
  * [MainDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/MainDao.java)
  * [PaymentDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/PaymentDao.java)
* [mapper](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/mapper)
  * [AddrDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/mapper/AddrDao.xml)
  * [AnalysisDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/mapper/AnalysisDao.xml)
  * [BasketDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/mapper/BasketDao.xml)
  * [MainDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/mapper/MainDao.xml)
  * [PaymentDao](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dao/mapper/PaymentDao.xml)
* [dto](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dto)
  * [AddrDto](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dto/AddrDto.java)
  * [AnalysisDto](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dto/AnalysisDto.java)
  * [BasketDto](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dto/BasketDto.java)
  * [MainDto](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dto/MainDto.java)
  * [PaymentDto](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dto/PaymentDto.java)
  * [ProductDto](https://github.com/minseopshin/project2/tree/master/src/main/java/kr/co/project/dto/ProductDto.java)
* [jsp](https://github.com/minseopshin/project2/tree/master/src/main/webapp/WEB-INF/views)
  * [addr](https://github.com/minseopshin/project2/tree/master/src/main/webapp/WEB-INF/views/addr)
  * [analysis](https://github.com/minseopshin/project2/tree/master/src/main/webapp/WEB-INF/views/analysis)
  * [main](https://github.com/minseopshin/project2/tree/master/src/main/webapp/WEB-INF/views/main)
  * [payment](https://github.com/minseopshin/project2/tree/master/src/main/webapp/WEB-INF/views/payment)
  * [sitemesh](https://github.com/minseopshin/project2/tree/master/src/main/webapp/WEB-INF/views/sitemesh)

### 영상
* [전체](https://youtu.be/2_sbLSwkUWY)
* [담당부분](https://youtu.be/jisLOda-o_s)
