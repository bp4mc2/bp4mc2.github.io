function markupDefTables() {
  const tables = document.getElementsByTagName("table");
  for (const table of tables) {
    if (table.rows[0].cells[0].innerHTML=='{: .def}') {
      table.classList.add('def');
      table.deleteRow(0);
      for (const row of table.rows) {
        const thcell = document.createElement("th");
        var tdcell = row.cells[0];
        thcell.innerHTML = tdcell.innerHTML;
        row.replaceChild(thcell,tdcell);
      }
    }
  }
  return
}
