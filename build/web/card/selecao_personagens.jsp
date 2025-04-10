<%@page import="frontend.includes.Footers"%>
<%@page import="frontend.includes.Headers"%>
<%@page import="frontend.includes.Menus"%>
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
        sb.append("AND a.chave IN (");
            
            //campos dos atributos a serem usados
            sb.append("'data_nascimento', ");
            sb.append("'peso', ");
            sb.append("'quadril', ");
            sb.append("'cintura', ");
            sb.append("'busto', ");
            sb.append("'altura', ");
            sb.append("'hobbie', ");
            sb.append("'nacionalidade', ");
            
            sb.append("'obs'");

        sb.append(") ");
        sb.append("ORDER BY c.nome, a.chave");

    comando = conecta.prepareStatement(sb.toString());

    
    ResultSet resultado = comando.executeQuery();
%>




<!DOCTYPE html>

<%= Headers.HeaderPgCard() %>

<body>

<%= Menus.MenuPrincipal() %>  
    
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

<%= Footers.FooterPrincipal()%>

    <script src="../assets/js/scripts.js"></script>


</body>

