<%@page import="java.lang.StringBuilder"%>
<%@page import="app.core.Conexao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    request.setCharacterEncoding("UTF-8");
    
    //CONECTAR COM O BANDO DE DADOS
    Conexao conexao = new Conexao(
            "localhost", 
            "5432", 
            "card_adventure", 
            "postgres", 
            "masterkey"
    );
    
    Connection conecta;
    PreparedStatement comando;   
    
    conecta = conexao.abrirConexao();
    
            
    StringBuilder sb = new StringBuilder();
    sb.append("SELECT c.nome, c.url_imagem, a.chave, a.valor ");
    sb.append("FROM atributos a ");
    sb.append("JOIN cards c ON a.fk_card = c.id_card ");
    sb.append("WHERE c.fk_tema IN (1, 2) ");
    sb.append("AND a.chave IN ");
    sb.append("('data_nascimento',"
            + "'peso',"
            + "'quadril',"
            + "'cintura',"
            + "'busto',"
            + "'altura',"
            + "'hobbie',"
            + "'nacionalidade',"
            + "'obs')"
    );
    sb.append("ORDER BY c.nome, a.chave");

    comando = conecta.prepareStatement(sb.toString());

    
    ResultSet resultado = comando.executeQuery();
%>




<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/solid.css"
    integrity="sha384-Tv5i09RULyHKMwX0E8wJUqSOaXlyu3SQxORObAI08iUwIalMmN5L6AvlPX2LMoSE" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/fontawesome.css"
    integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous" />

  <link id="tema" rel="stylesheet" href="../assets/css/temas/variaveis-tema-claro.css">
  <link rel="stylesheet" href="../assets/css/ajustes/normalize.css">

  <link rel="stylesheet" href="../assets/css/nav/barra-menu.css">
  <link rel="stylesheet" href="../assets/css/nav/footer.css">
  <link rel="stylesheet" href="../assets/css/cards/card.css">
  <link rel="stylesheet" href="../assets/css/cards/table.css">
  <link rel="stylesheet" href="../assets/css/cards/ancoras.css">
  <link rel="stylesheet" href="../assets/css/cards/info.css">
  <link rel="stylesheet" href="../assets/css/ajustes/ativo-inativo.css">

  <link rel="stylesheet" href="../assets/css/ajustes/responsividade.css">


</head>

<body>

  <nav class="menu-principal">

    <ul class="menu">
      <li>
        <a href="#">ALUNOS</a>
      </li>
      <li>
        <a href="#">VEGETAIS</a>
      </li>
      <li>
        <a href="#">PIX AI</a>
      </li>
      <li>
        <a href="#">GAROTAS</a>
        <ul class="submenu">
          <li>
            <hr>
          </li>
          <li>
            <a href="#">
              <span>ZERAR TODAS</span>
              <img class="emoje-menu inativo" src="../assets/pixel_ai/emoje-1.png" />
            </a>
          </li>
          <li>
            <a href="#">
              <span>ATIVAR TODAS</span>
              <img class="emoje-menu" src="../assets/pixel_ai/emoje-5.png" />
            </a>
          </li>
          <li>
            <hr>
          </li>
          <li>
            <a href="#">
              <span>CAPA COMO FASE 1</span>
              <img class="emoje-menu" src="../assets/pixel_ai/emoje-1.png" />
            </a>
          </li>
          <li>
            <a href="#">
              <span>CAPA COMO FASE 2</span>
              <img class="emoje-menu" src="../assets/pixel_ai/emoje-2.png" />
            </a>
          </li>
          <li>
            <a href="#">
              <span>CAPA COMO FASE 3</span>
              <img class="emoje-menu" src="../assets/pixel_ai/emoje-3.png" />
            </a>
          </li>
          <li>
            <a href="#">
              <span>CAPA COMO FASE 4</span>
              <img class="emoje-menu" src="../assets/pixel_ai/emoje-4.png" />
            </a>
          </li>
          <li>
            <a href="">
              <span>CAPA COMO FASE 5</span>
              <img class="emoje-menu" src="../assets/pixel_ai/emoje-5.png" />
            </a>
          </li>
          <li>
            <hr>
          </li>
        </ul>
      </li>
      <li><a href="#">TO-DO</a>
      </li>
    </ul>

    <button id="btnTema" onclick="mudarTema()">Mudar para modo escuro</button>
  </nav>
  <main>
  <div id="estilo-card">
    <div class="container-xl">

<%
    String obs = null;
    String nome = null;
    boolean primeiro = true;
    while (resultado.next()) {
        String nomeAtual = resultado.getString("nome");

        if (nome == null || !nome.equals(nomeAtual)) {
            if (!primeiro) {
%>
                <% if (obs != null) { %>
                <tr class="obs">
                  <td colspan="2" class="obs">
                    <%= obs %>
                  </td>
                </tr>
                <% obs = null; } %>
                </tbody>
              </table>
              <a href="#" class="ativo botao-jogar">Jogar</a>
            </div>
          </div>
          <div class="area-links">
            <div class="area-estrelas">
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-1.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-2.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-3.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-4.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-5.png" /></a>
            </div>
          </div>
        </div>
<%
            }

            primeiro = false;
%>
        <div class="card">
          <div class="area-img-info">
            <img class="img-principal img-principal-ativa" src="../assets/pixel_ai/<%= resultado.getString("url_imagem") %>.1.png"
                 alt="imagem da personagem <%= nomeAtual %>" />

            <div class="info-personagem">
              <div class="ecolha-thumb">
                <a href="#"><img class="ativo" src="../assets/pixel_ai/t-1.png" /></a>
                <a href="#"><img class="ativo" src="../assets/pixel_ai/t-2.png" /></a>
                <a href="#"><img class="ativo" src="../assets/pixel_ai/t-3.png" /></a>
                <a href="#"><img class="ativo" src="../assets/pixel_ai/t-4.png" /></a>
                <a href="#"><img class="ativo" src="../assets/pixel_ai/t-5.png" /></a>
              </div>

              <img class="bandeira ativo" src="../assets/pixel_ai/Brasil.png" />

              <div class="img-nome-personagem">
                <img class="imagem-circular ativo" src="../assets/pixel_ai/r-<%= resultado.getString("url_imagem") %>.png" alt="">
                <div>
                  <h2 class="ativo">Estilo: Anime</h2>
                  <p class="ativo"><%= nomeAtual %></p>
                </div>
              </div>

              <table class="ativo">
                <tbody>
<%
            nome = nomeAtual;
        }

        String chave = resultado.getString("chave");
        String valor = resultado.getString("valor");
        String chaveFormatada = "";

        switch (chave) {
            case "data_nascimento": chaveFormatada = "D. de Nascimento"; break;
            case "peso": chaveFormatada = "Peso"; break;
            case "quadril": chaveFormatada = "Quadril"; break;
            case "cintura": chaveFormatada = "Cintura"; break;
            case "busto": chaveFormatada = "Busto"; break;
            case "altura": chaveFormatada = "Altura"; break;
            case "estado_civil": chaveFormatada = "Estado Civil"; break;
            case "orientacao_sexual": chaveFormatada = "Orientação Sexual"; break;
            case "hobbie": chaveFormatada = "Hobbie"; break;
            case "nacionalidade": chaveFormatada = "Nacionalidade"; break;
            case "obs": chaveFormatada = "Observações"; break;
            default: chaveFormatada = chave;
        }

        if ("obs".equals(chave)) {
            obs = valor; // Guarda obs pra colocar no final
        } else {
%>
        <tr>
          <td><strong><%= chaveFormatada %>:</strong></td>
          <td><%= valor %></td>
        </tr>
<%
        }
    }

    if (nome != null) {
%>
        <% if (obs != null) { %>
        <tr class="obs">
          <td colspan="2" class="obs">
            <%= obs %>
          </td>
        </tr>
        <% } %>
                </tbody>
              </table>
              <a href="#" class="ativo botao-jogar">Jogar</a>
            </div>
          </div>
          <div class="area-links">
            <div class="area-estrelas">
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-1.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-2.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-3.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-4.png" /></a>
              <a href="#"><img class="ativo" src="../assets/pixel_ai/emoje-5.png" /></a>
            </div>
          </div>
        </div>
<%
    }
%>

    </div>
  </div>
</main>

  <footer>
    <p> TODOS OS DIREITOS RESERVADOS</p>
  </footer>

    <script src="../assets/js/scripts.js"></script>


</body>

</html>