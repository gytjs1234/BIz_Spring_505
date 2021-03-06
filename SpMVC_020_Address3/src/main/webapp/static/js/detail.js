document.addEventListener("DOMContentLoaded", () => {
  const address_list = document.querySelector("table.list");

  address_list?.addEventListener("click", (e) => {
    const td = e.target;

    if (td.tagName === "TD") {
      const tr = td.closest("TR");
      const a_seq = tr.dataset.seq;

      document.location.href = `${rootPath}/detail?seq=${a_seq}`;
    }
  });
});
