package frontend.includes;

public class Footers {
    public static String FooterPrincipal() {
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<footer>")
          .append("<p> TODOS OS DIREITOS RESERVADOS</p>")
          .append("</footer>");
        
        return sb.toString();
    }
}