/*
비동기 방식의 코드문제로 return false 또는 return true 가 실행되지 않는 문제를
해결하기 위하여 Promise 방식으로 코드를 변경한다

함수 선언문에 async 키워드를 부착
실행 순서를 임의로 조절하기 위하여 각 함수 호출문에 await 키워드를
부착한다.
*/
const st_num_fetchV2 = async (st_num) => {
  const res = await fetch(`${rootPath}/student/st_num_check?st_num=${st_num}`);
  const result = await res.text();
  if (result === "USE") {
    return false;
  } else {
    return true;
  }
};

const st_num_fetch = (st_num) => {
  fetch(`${rootPath}/student/st_num_check?st_num=${st_num}`)
    .then((res) => res.text())
    .then((result) => {
      if (result === "USE") {
        return false;
      } else {
        return true;
      }
    }); //end fech
  //fech 가 완료되기 전에 실행되어 st_num_fetch가 종료됨
  //이 함수가 true 나 false 를 return 할 것으로 기대하고
  //작성을 했으나 비동기 방식의 이유로
  //중간의 return 명령이 실행될 기회를 일는다
}; //end st_num_fetch()

const save_cb = async () => {
  const st_num = document.querySelector("input[name='st_num']");
  const st_name = document.querySelector("input[name='st_name']");
  const st_grade = document.querySelector("input[name='st_grade']");
  const st_dept = document.querySelector("input[name='st_dept']");
  const st_addr = document.querySelector("input[name='st_addr']");
  const st_tel = document.querySelector("input[name='st_tel']");
  // cb 는 call back 을 말하는 것이다.sss

  //JS 코드를 사용하여 Client Size Validation 수행
  //유효성 검사, 값이 입력되지 않았을 때 입력되지 않음을 보여주는 것.
  if (st_num.value === "") {
    alert("학번은 반드시 입력해라.");
    st_num.focus();
    return false;
  }

  //st_nums_yes 에 true 나 false 가 담길것으로 기대하고 있다
  //서버에 학번 중복검사를 의뢰하고 기다리기
  const st_num_yes = await st_num_fetchV2(st_num.value);
  console.log("st_num_yes", st_num_yes);
  if (!st_num_yes) {
    alert("이미 등록된 학번입니다\n 다시 확인해주세요");
    st_num.focus();
    return false;
  }

  if (st_name.value === "") {
    alert("이름 반드시 입력해라.");
    st_name.focus();
    return false;
  }
  if (st_dept.value === "") {
    alert("학과 반드시 입력해라.");
    st_dept.focus();
    return false;
  }

  const num_grade = Number(st_grade.value);
  if (!num_grade) {
    alert("학년은 반드시 숫자로만 입력해라.");
    st_grade.value = "";
    st_grade.focus();
    return false;
  }
  if (num_grade < 1 || num_grade > 4) {
    alert("학년은 1 ~ 4 범위에서 입력하시오");
    st_grade.value = ""; // 기존 입력 내용 clear 시켜주기
    st_grade.focus();
    return false;
  }

  if (st_tel.value === "") {
    alert("전화번호를 반드시 입력하라.");
    st_tel.focus();
    return false;
  }
  if (st_addr.value === "") {
    alert("주소 반드시 입력해야 한다.");
    st_addr.focus();
    return false;
  }
  // 모든 유효성 검사 통과됨.
  // 이제는 서버로 데이터를 전송해야 한다.
  const form = document.querySelector("form");
  form.submit();
  // 데이터가 모두 전송된다. 지금 java html에서는 type이 button 이므로 바꾼 것이다.
};
