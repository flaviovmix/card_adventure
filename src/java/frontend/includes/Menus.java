package frontend.includes;

public class Menus {
    
    public static String MenuPrincipal() {
        StringBuilder sb = new StringBuilder();
        
        sb.append("<nav class=\"menu-principal\">\n")
          .append("  <ul class=\"menu\">\n")
          .append("    <li><a href=\"#\">ALUNOS</a></li>\n")
          .append("    <li><a href=\"#\">VEGETAIS</a></li>\n")
          .append("    <li><a href=\"#\">PIX AI</a></li>\n")
          .append("    <li><a href=\"#\">GAROTAS</a>\n")
          .append("      <ul class=\"submenu\">\n")

          .append("        <li><hr></li>\n")
          .append("        <li><a href=\"#\"><span>NOVO CARD</span><img class=\"emoje-menu\" src=\"../assets/pixel_ai/emoje-1.png\" /></a></li>\n")
                
          .append("        <li><hr></li>\n")
          .append("        <li><a href=\"#\"><span>ZERAR TODAS</span><img class=\"emoje-menu inativo\" src=\"../assets/pixel_ai/emoje-1.png\" /></a></li>\n")
          .append("        <li><a href=\"#\"><span>ATIVAR TODAS</span><img class=\"emoje-menu\" src=\"../assets/pixel_ai/emoje-5.png\" /></a></li>\n")
          .append("        <li><hr></li>\n")
          .append("        <li><a href=\"#\"><span>CAPA COMO FASE 1</span><img class=\"emoje-menu\" src=\"../assets/pixel_ai/emoje-1.png\" /></a></li>\n")
          .append("        <li><a href=\"#\"><span>CAPA COMO FASE 2</span><img class=\"emoje-menu\" src=\"../assets/pixel_ai/emoje-2.png\" /></a></li>\n")
          .append("        <li><a href=\"#\"><span>CAPA COMO FASE 3</span><img class=\"emoje-menu\" src=\"../assets/pixel_ai/emoje-3.png\" /></a></li>\n")
          .append("        <li><a href=\"#\"><span>CAPA COMO FASE 4</span><img class=\"emoje-menu\" src=\"../assets/pixel_ai/emoje-4.png\" /></a></li>\n")
          .append("        <li><a href=\"#\"><span>CAPA COMO FASE 5</span><img class=\"emoje-menu\" src=\"../assets/pixel_ai/emoje-5.png\" /></a></li>\n")
          .append("        <li><hr></li>\n")
          .append("      </ul>\n")
          .append("    </li>\n")
          .append("    <li><a href=\"#\">TO-DO</a></li>\n")
          .append("  </ul>\n")
          .append("  <button id=\"btnTema\" onclick=\"mudarTema()\">Mudar para modo escuro</button>\n")
          .append("</nav>\n");
        
        return sb.toString();
    }
    
}


//
//
//    <ul class="menu">
//      <li>
//        <a href="#">ALUNOS</a>
//      </li>
//      <li>
//        <a href="#">VEGETAIS</a>
//      </li>
//      <li>
//        <a href="#">PIX AI</a>
//      </li>
//      <li>
//        <a href="#">GAROTAS</a>
//        <ul class="submenu">
//          <li>
//            <hr>
//          </li>
//          <li>
//            <a href="#">
//              <span>ZERAR TODAS</span>
//              <img class="emoje-menu inativo" src="../assets/pixel_ai/emoje-1.png" />
//            </a>
//          </li>
//          <li>
//            <a href="#">
//              <span>ATIVAR TODAS</span>
//              <img class="emoje-menu" src="../assets/pixel_ai/emoje-5.png" />
//            </a>
//          </li>
//          <li>
//            <hr>
//          </li>
//          <li>
//            <a href="#">
//              <span>CAPA COMO FASE 1</span>
//              <img class="emoje-menu" src="./assets/pixel_ai/emoje-1.png" />
//            </a>
//          </li>
//          <li>
//            <a href="#">
//              <span>CAPA COMO FASE 2</span>
//              <img class="emoje-menu" src="../assets/pixel_ai/emoje-2.png" />
//            </a>
//          </li>
//          <li>
//            <a href="#">
//              <span>CAPA COMO FASE 3</span>
//              <img class="emoje-menu" src="../assets/pixel_ai/emoje-3.png" />
//            </a>
//          </li>
//          <li>
//            <a href="#">
//              <span>CAPA COMO FASE 4</span>
//              <img class="emoje-menu" src="../assets/pixel_ai/emoje-4.png" />
//            </a>
//          </li>
//          <li>
//            <a href="">
//              <span>CAPA COMO FASE 5</span>
//              <img class="emoje-menu" src="../assets/pixel_ai/emoje-5.png" />
//            </a>
//          </li>
//          <li>
//            <hr>
//          </li>
//        </ul>
//      </li>
//      <li><a href="#">TO-DO</a>
//      </li>
//    </ul>
//
//    <button id="btnTema" onclick="mudarTema()">Mudar para modo escuro</button>
//  </nav>
