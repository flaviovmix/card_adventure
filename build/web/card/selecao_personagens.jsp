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

    // Parâmetros de página via URL, ex: ?pagina=1
    int pagina = 1;
    int limite = 10 * 5; // Número de cards por página

    String paginaStr = request.getParameter("pagina");
    if (paginaStr != null && !paginaStr.isEmpty()) {
        try {
            pagina = Integer.parseInt(paginaStr);
        } catch (NumberFormatException e) {
            pagina = 1;
        }
    }

    int offset = (pagina - 1) * limite;

    // Conectar com o banco de dados
    Conexao conexao = new Conexao(
            "localhost", 
            "5432", 
            "card_adventure", 
            "postgres", 
            "masterkey"
    );

    Connection conecta = conexao.abrirConexao();
    
    StringBuilder sb = new StringBuilder();
    
    sb.append("SELECT c.nome, a.chave, a.valor ");
    sb.append("FROM atributos a ");
    sb.append("JOIN cards c ON a.fk_card = c.id_card ");
    sb.append("WHERE c.fk_tema IN (1, 2) ");
    sb.append("AND a.chave IN (");
    sb.append("'data_nascimento', ");
    sb.append("'peso', ");
    sb.append("'quadril', ");
    sb.append("'cintura', ");
    sb.append("'busto', ");
    sb.append("'altura', ");
    sb.append("'hobbie', ");
    sb.append("'nacionalidade', ");
    sb.append("'obs', ");
    sb.append("'thumb'");
    sb.append(") ");
    sb.append("ORDER BY c.nome, a.chave ");
    sb.append("LIMIT ? OFFSET ?");

    PreparedStatement comando = conecta.prepareStatement(sb.toString());
    comando.setInt(1, limite);
    comando.setInt(2, offset);

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
    String thumb = null;
    boolean primeiro = true;
    java.util.List<String[]> atributos = new java.util.ArrayList<String[]>();

    boolean temMais = resultado.next();
    while (temMais) {
        String nomeAtual = resultado.getString("nome");
        atributos.clear();
        obs = null;
        thumb = null;

        // Coletar todos os atributos do personagem atual
        do {
            String chave = resultado.getString("chave");
            String valor = resultado.getString("valor");

            if ("obs".equals(chave)) {
                obs = valor;
            } else if ("thumb".equals(chave)) {
                thumb = valor;
            } else {
                atributos.add(new String[]{chave, valor});
            }

            temMais = resultado.next();
            if (!temMais) break;
        } while (nomeAtual.equals(resultado.getString("nome")));

%>
        <div class="card">
          <div class="area-img-info">
            <img class="img-principal img-principal-ativa" src="../assets/pixel_ai/<%= thumb %>.1.png"
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
                <img class="imagem-circular ativo" src="../assets/pixel_ai/r-<%= thumb %>.png" alt="">
                <div>
                  <h2 class="ativo">Estilo: Anime</h2>
                  <p class="ativo"><%= nomeAtual %></p>
                </div>
              </div>

              <table class="ativo">
                <tbody>
<%
        for (String[] attr : atributos) {
            String chaveAttr = attr[0];
            String valorAttr = attr[1];
            String chaveFormatada = "";

            switch (chaveAttr) {
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
                default: chaveFormatada = chaveAttr;
            }
%>
        <tr>
          <td><strong><%= chaveFormatada %>:</strong></td>
          <td><%= valorAttr %></td>
        </tr>
<%
        }

        if (obs != null) {
%>
        <tr class="obs">
          <td colspan="2" class="obs"><%= obs %></td>
        </tr>
<%
        }
%>
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
    } // fim while
%>
        
        
    </div>
  </div>
</main>


    <ul class="paginacao">
      <li class="<%= (pagina == 1 ? "desabilitado" : "") %>">
        <a href="?pagina=<%= (pagina > 1 ? pagina - 1 : 1) %>">&laquo;</a>
      </li>

      <% for (int i = 1; i <= 2; i++) { %>
        <li class="<%= (i == pagina ? "ativo" : "") %>">
          <a href="?pagina=<%= i %>"><%= i %></a>
        </li>
      <% } %>

      <li>
        <a href="?pagina=<%= pagina + 1 %>">&raquo;</a>
      </li>
    </ul>

<%= Footers.FooterPrincipal()%>

    <script src="../assets/js/scripts.js"></script>


</body>

