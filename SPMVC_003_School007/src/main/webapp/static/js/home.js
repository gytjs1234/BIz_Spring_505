document.addEventListener("DOMContentLoaded", () => {
  /*
    이 코드의 목적은 nav 의 li tag를 클릭했을때 할일을 지정하는 것이다
    화면에 li tag가 여러개가 있다 여러개의 li tag에 click event를 설정하려면
    document.quertSelectorAll()함수를 사용하여 전체 tag list를 배열로 받고
    for 반복문을 사용하여 각각의 요소에 event를 부여하는 코드가 필요하다

    지금은 li tag를 감싸고 있는 nav tag 한개에만 click event를 적용하여
    even Bubbling을 역으로 활용하여 사용한다.
    nav.main_nav 에click event를 설정했지만 e 매개변수의 target 속성을
    사용하면 가장 안쪽의 li tag에 접근이 가능하다
    li tag가 클릭되면 tagName 을 조회해보고 실제로 li tag가 클릭된 것이면
    li tag의 text를 가져와서 Location을 변경하는 용도로 활용한다.

    e.target.tagName 을 참조할때는 tag이름을 대문자로 확인해야한다.


    */
  const main_nav = document.querySelector("nav.main_nav");
  if (main_nav) {
    main_nav.addEventListener("click", (event) => {
      //실제 event 가 설정된 tag,nav tag
      const current = event.currentTarget;

      //가장 안쪽에서 실제 클릭된 tag,li tag
      const li = event.target;
      if (li.tagName === "LI") {
        const text = li.innerText;

        let url = `${rootPath}`;
        if (text === "로그인") {
          url += "/user/login";
        } else if (text === "회원가입") {
          url += "/user/join";
        } else if (text === "로그아웃") {
          url += "/user/logout";
        }
        document.location.href = url;
      }
    });
  }
});
