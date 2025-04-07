package cards;

public class DesenharCards {
    
    public static String gerarCard() {
        StringBuilder sb = new StringBuilder();

        sb.append("<div id=\"estilo-card\">\n")
          .append("  <div class=\"container-xl\">\n\n")
          .append("    <div class=\"card\">\n")
          .append("      <div class=\"area-img-info\">\n\n")
          .append("        <img class=\"img-principal img-principal-ativa\" src=\"../assets/pixel_ai/videl.1.png\" alt=\"imagem da personagem 1\" />\n\n")
          .append("        <div class=\"info-personagem\">\n\n")
          .append("          <div class=\"ecolha-thumb\">\n")
          .append("            <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/t-1.png\" /></a>\n")
          .append("            <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/t-2.png\" /></a>\n")
          .append("            <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/t-3.png\" /></a>\n")
          .append("            <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/t-4.png\" /></a>\n")
          .append("            <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/t-5.png\" /></a>\n")
          .append("          </div>\n")
          .append("          <img class=\"bandeira ativo\" src=\"../assets/pixel_ai/Brasil.png\" />\n")
          .append("          <div class=\"img-nome-personagem\">\n")
          .append("            <img class=\"imagem-circular ativo\" src=\"../assets/pixel_ai/r-videl.png\" alt=\"\">\n")
          .append("            <div>\n")
          .append("              <h2 class=\"ativo\">Nome Completo</h2>\n")
          .append("              <p class=\"ativo\">Nascionalidade</p>\n")
          .append("            </div>\n")
          .append("          </div>\n\n")
          .append("          <table class=\"ativo\">\n")
          .append("            <tbody>\n")
          .append("              <tr><td><strong>Altura:</strong></td><td>1.65 m</td></tr>\n")
          .append("              <tr><td><strong>Busto:</strong></td><td>85 cm</td></tr>\n")
          .append("              <tr><td><strong>Cintura:</strong></td><td>62 cm</td></tr>\n")
          .append("              <tr><td><strong>D. Nascimento:</strong></td><td>1998-09-10</td></tr>\n")
          .append("              <tr><td><strong>Hobbie:</strong></td><td>Cantar</td></tr>\n")
          .append("              <tr><td><strong>Peso:</strong></td><td>55 kg</td></tr>\n")
          .append("              <tr><td><strong>Quadril:</strong></td><td>93 cm</td></tr>\n")
          .append("              <tr class=\"obs\"><td colspan=\"2\" class=\"obs\">Lorem ipsum dolor sit amet consectetur</td></tr>\n")
          .append("            </tbody>\n")
          .append("          </table>\n")
          .append("          <a href=\"#\" class=\"ativo botao-jogar\">Jagar</a>\n\n")
          .append("        </div>\n")
          .append("      </div>\n")
          .append("      <div class=\"area-links\">\n")
          .append("        <div class=\"area-estrelas\">\n")
          .append("          <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/emoje-1.png\" /></a>\n")
          .append("          <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/emoje-2.png\" /></a>\n")
          .append("          <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/emoje-3.png\" /></a>\n")
          .append("          <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/emoje-4.png\" /></a>\n")
          .append("          <a href=\"#\"><img class=\"ativo\" src=\"../assets/pixel_ai/emoje-5.png\" /></a>\n")
          .append("        </div>\n")
          .append("      </div>\n")
          .append("    </div>\n\n")
          .append("  </div>\n")
          .append("</div>\n");

        return sb.toString();
    }    
}
