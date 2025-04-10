console.log("teste");

function mudarTema() {
  const linkTema = document.getElementById("tema");
  const btnTema = document.getElementById("btnTema");
  const temaClaro = "../../assets/css/temas/variaveis-tema-claro.css";
  const temaEscuro = "../../assets/css/temas/variaveis-tema-escuro.css";

  if (linkTema.getAttribute("href") === temaClaro) {
    // Muda para tema escuro
    linkTema.setAttribute("href", temaEscuro);
    btnTema.textContent = "Mudar para modo claro";
  } else {
    // Muda para tema claro
    linkTema.setAttribute("href", temaClaro);
    btnTema.textContent = "Mudar para modo escuro";
  }
}


function mostrarCard() {
  // Oculta todas as divs
  document.getElementById('estilo-card').classList.add('ativo');
  document.getElementById('estilo-card').classList.remove('oculto');

  document.getElementById('estilo-tabela').classList.add('oculto');
  document.getElementById('estilo-tabela').classList.remove('ativo');
}

function mostrarTable() {
  // Oculta todas as divs
  document.getElementById('estilo-card').classList.add('oculto');
  document.getElementById('estilo-card').classList.remove('ativo');

  document.getElementById('estilo-tabela').classList.add('ativo');
  document.getElementById('estilo-tabela').classList.remove('oculto');
}