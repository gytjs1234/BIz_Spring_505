document.addEventListener("DOMContentLoaded", () => {
  const h_name = document.querySelector(".b_name");
  const h_tel = document.querySelector(".b_tel");
  const h_addr = document.querySelector(".b_addr");
  const insert_form = document.querySelector("form.insert");
  const btn = document.querySelector(".sub");

  btn?.addEventListener("click", () => {
    if (h_name.value === "") {
      alert("이름을 입력해주세요");

      return false;
    }
    if (h_tel.value === "") {
      alert("전화번호를 입력해 주세요");
      tel.focus();
      return false;
    }
    if (h_addr.value === "") {
      alert("주소를 입력해주세요");
      address.focus();
      return false;
    }
    insert_form.submit();
  });
});
