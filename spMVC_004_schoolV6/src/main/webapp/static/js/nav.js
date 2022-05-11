document.addEventListener("DOMContentLoaded", () => {
  //어디엔가 있을 nav tag 를 객체 변수에 담아오기
  const nav = document.querySelector("nav");
  if (nav) {
    nav.addEventListener("click", (e) => {
      /*
        e.target:현재 nav>ul>li 형태로 layout 구성되어 있다.
        이 layout 의 제일 바깥쪽인 mav tag 에 click event 를 설정했다
        마우스로 nav tag의 어느곳을 클릭하면
        event 가 nav>ul>li로 점점 전파된다: event Bubbling 이라고 한다
        eventBubblig 은 상당히 불편한 존재이나 이현상을 역으로 이용하여
        실제 li tag에 click이 되었음을 감지한다.

        nav >li tag 를 클릭하면
        li tag에 대한 정보가 e.target 에 담기게 된다
        결국 js코드에서 다수의 li tag에 일일이 event를 설정한 것처럼
        사용할수있게된다.
        */
      const target = e.target;
      const navText = target.innerText;

      let url = `${rootPath}`;

      if (navText === "학생정보") {
        url += "/student";
      } else if (navText === "성적정보") {
        alert("성적정보를 입력합니다");
      } else if (navText === "로그인") {
        alert("로그인 창을 띄웁시다");
      } else if (navText === "회원가입") {
        alert("아직 회원가입은 받지않습니다");
      }
      document.location.href = url;
    });
  }
});
