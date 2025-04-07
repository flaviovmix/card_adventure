package frontend;

public class Footer {
    public static String gerarFooter() {
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<footer>")
          .append("<p> TODOS OS DIREITOS RESERVADOS</p>")
          .append("</footer>");
        
        return sb.toString();
    }
}