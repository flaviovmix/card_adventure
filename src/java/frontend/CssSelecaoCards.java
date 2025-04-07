package frontend;

public class CssSelecaoCards {
public static String gerarHead() {
        StringBuilder sb = new StringBuilder();

        sb.append("<!DOCTYPE html>\n")
          .append("<html lang=\"pt-BR\">\n")
                
          .append("<head>\n")
          .append("  <meta charset=\"UTF-8\">\n")
          .append("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n")
          .append("  <title>Document</title>\n\n")
          .append("  <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.15.4/css/solid.css\"\n")
          .append("    integrity=\"sha384-Tv5i09RULyHKMwX0E8wJUqSOaXlyu3SQxORObAI08iUwIalMmN5L6AvlPX2LMoSE\" crossorigin=\"anonymous\" />\n")
          .append("  <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.15.4/css/fontawesome.css\"\n")
          .append("    integrity=\"sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7\" crossorigin=\"anonymous\" />\n\n")
          .append("  <link id=\"tema\" rel=\"stylesheet\" href=\"../assets/css/temas/variaveis-tema-claro.css\">\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/ajustes/normalize.css\">\n\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/nav/barra-menu.css\">\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/nav/footer.css\">\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/cards/card.css\">\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/cards/table.css\">\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/cards/ancoras.css\">\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/cards/info.css\">\n")
          .append("  <link rel=\"stylesheet\" href=\"../assets/css/ajustes/ativo-inativo.css\">\n\n")
          
                         
          .append("</head>\n");

        return sb.toString();
    }    
}