package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Personagem;

public class PersonagemMontador {

    public static List<Personagem> montarLista(ResultSet resultado) throws SQLException {
        
        List<Personagem> personagens = new ArrayList();
        
        Personagem personagemAtual = null;
        String nomeAnterior = null;
        
        while (resultado.next()) {
            String nome = resultado.getString("nome");
            
            if (nomeAnterior == null || !nomeAnterior.equals(nome)) {
                String imagem = resultado.getString("url_imagem");
                personagens.add(personagemAtual);
                nomeAnterior = nome;
            }
            
            String chave = resultado.getString("chave");
            String valor = resultado.getString("valor");
            personagemAtual.addAtributo(chave, valor);
        }
        
        return personagens;
    }
    
}
