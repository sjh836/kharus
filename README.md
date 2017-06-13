# 카루스 정숲+길드원 관리
게임은 망했지만 코드는 남았다...

링크: http://devljh.com:8080/soul/

## 1. 프로젝트 개요
인디웹게임이였던 카루스를 즐기며 불편했던 사항(정령의숲 퀴즈, 길드원관리)을 직접 개발함으로써 공부도하고 게임도 알차게 했다. Jsoup을 이용해 길드원 전적을 크롤링하여 엑셀로 관리할 수 있게 해준다.

## 2. 개발환경
* 운영체제: AWS ubuntu
* 개발언어: Java
* 데이터베이스: MySQL
* 프레임워크: Spring Framework 4.3.3

### 라이브러리
1. (파싱) Jsoup 1.8.3
2. (excel) 아파치 poi 3.14

## 3. 사용예제
정령의 숲에서 문제를 긁어다가 사이트에 붙여넣으면,

![](http://devljh.com:8080/soul/resources/bootstrap/img/1.JPG)

아래와 같이 답이 출력된다.

![](http://devljh.com:8080/soul/resources/bootstrap/img/3.JPG)

길드원명단을 붙여넣으면 엑셀로 전적수를 출력해준다.

![](http://img1.daumcdn.net/thumb/R1920x0/?fname=http%3A%2F%2Fcfile30.uf.tistory.com%2Fimage%2F23676945593FDE26324BD1)