console.log("불러오기");

function setThumbnail(event) {
  for (var image of event.target.files) {
    var reader = new FileReader();

    reader.onload = function (event) {
      const img = document.querySelector("img.img-img");
      img.setAttribute("src", event.target.result);
      document.querySelector("div.img-box").appendChild(img);
    };
    reader.readAsDataURL(image);
  }
}
