package cards;

import app.core.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CardDAO {

    public void adicionarCard(CardBean card) throws SQLException {
        
        Conexao conexao = new Conexao(
                "localhost", 
                "5432", 
                "card_adventure", 
                "postgres", 
                "masterkey"
        );
        Connection conecta = conexao.abrirConexao();   
        String sql;

        sql = ("INSERT INTO cards "
                + "(nome, descricao, fk_tema, fk_classificacao) VALUES "
                + "(   ?,       ?,         ?,                ?)"
            );

        PreparedStatement comando = conecta.prepareStatement(sql);
        comando.setString(1, card.getNome());
        comando.setString(2, card.getDescricao());
        comando.setInt(3, card.getFk_tema());
        comando.setInt(4, card.getFk_classificacao());

        comando.execute();

    }    
    
}
