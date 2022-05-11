# Spring CRUD 구현

## VO 클래스 디자인(추상화,클래스 선언)

## 입력 FORM 화면 디자인
## FORM에서 데이터를 입력하고 전송 데이터 유효성 검사
## 데이터 유효성 검사
* FORM에서 입력한 데이터를 유효성 검사를 수행하는 것은 서버로 데이터를 보내기전에 입력한 사용자에게 데이터가 잘 입력되었나 확인시키는 절차
* Client Side Validation이라고 하는데, 보통 이때 js 코드로 수행한다
* 데이터를 입력하고 저장 또는 전송 버튼을 클릭했을때 Form에 담긴데이터는 무조건 서버로 전송이 된다.
* 이러한 상황이되면 js코드를 사용하여 client size validation을 수행할수 없다.
* Form에 포함된 모든 버튼의 기본 속성을 무력화하여 무조건 데이터가 서버로 전송되는 것을 방지 시켜야한다.
* Form 에 포함된 버튼의 기본속성이란 버튼을 클릭했을때 submit event가 자동으로 수행되는 것을 말한다
* 아래와 같이 form tag로 감싸진 button은 클릭했을 때 무조건 form tag의 action주소로 서버에 요쳥하도록 사전에 정의 되어있다.
* form tag내의 button에는 submit 이라는 default event가 자동으로 설정된다 
* 이러한 상황에서는 js코드를 사용하여 데이터 유효성 검사를 할수 없다
* 떄문에 button에 submit event를 무력화 시켜야 한다.
```
<form action="/school/score">
			<button class="btn-red">서버로 보내기</button>
		</form>
```
* form tag내의 button은 기본 type이 type="submit"이다
* button을 클릭하면 서버로 무조건 달려가는 event가 실행된다.
* 이button의 타입을 ```type="button"```으로 설정하면 submit event가 무력화된다.

```
<form action="/school/score">
			<button type="button" class="btn-red">서버로 보내기</button>
		</form>
```

* 또다른 방법으로  form의 submit() event를 가로채는 방법도 있다.


## Controller에 데이터 수신할 method 처리
## Service 로 데이터 전송
## dao 를 통해서 DBMS insert 요청


## Dao를 통해서 DBMS에게 Select 를 요청하고
## Service 에 받고
## Controller 로 return
## jsp 에 view 렌더링 수행