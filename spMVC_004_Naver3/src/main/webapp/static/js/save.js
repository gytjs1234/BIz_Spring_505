document.addEventListener("DOMContentLoaded", () => {
  const save_btn = document.querySelector("button.btn_save");
  const save_form = document.querySelector("form.save");

  const index = {
    isbn: 0,
    title: 1,
    publisher: 2,
    author: 3,
    pudate: 4,
  };

  //form.join 내부에 있는 모든 input box
  //SelectAll을 사용하면 tag요소를 배열로 가져온다
  const inputList = document.querySelectorAll("form.save input");

  //inputList 0번 요소 부터 4번 요소까지
  //form tag 에 작성된 순서대로 담겨있다.
  //index 객체에서 각 요소의 첨자를 가져오고 첨자를 사용하여 input tag를 각 순서대로 변수에 담겠다.
  const isbn = inputList[index.isbn];
  const title = inputList[index.title];
  const publisher = inputList[index.publisher];
  const author = inputList[index.author];
  const pudate = inputList[index.pudate];

  //join btn 클릭
  if (save_btn) {
    save_btn.addEventListener("click", () => {
      save_form.submit();
    });
  }
});
