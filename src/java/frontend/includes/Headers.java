package frontend.includes;

public class Headers {
    
    public static String HeaderPgCard() {
        
        StringBuilder sb = new StringBuilder(); 
        
            sb.append("<head>");
            
                sb.append("<meta charset='UTF-8'>");
                sb.append("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
                sb.append("<title>Document</title>");

                sb.append("<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.15.4/css/solid.css' ");
                sb.append("integrity='sha384-Tv5i09RULyHKMwX0E8wJUqSOaXlyu3SQxORObAI08iUwIalMmN5L6AvlPX2LMoSE' crossorigin='anonymous' />");

                sb.append("<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.15.4/css/fontawesome.css' ");
                sb.append("integrity='sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7' crossorigin='anonymous' />");

                sb.append("<link id='tema' rel='stylesheet' href='../assets/css/temas/variaveis-tema-claro.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/ajustes/normalize.css'>");

                sb.append("<link rel='stylesheet' href='../assets/css/nav/barra-menu.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/nav/footer.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/cards/card.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/cards/table.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/cards/ancoras.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/cards/info.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/paginacao.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/ajustes/ativo-inativo.css'>");
                sb.append("<link rel='stylesheet' href='../assets/css/ajustes/responsividade.css'>");

            sb.append("</head>");        

        return sb.toString();
    }
    
}
