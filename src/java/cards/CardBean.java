package cards;

public class CardBean {
 
    private Integer id_card;
    private String nome;
    private String descricao;
    private int fk_tema;
    private int fk_classificacao;

    public Integer getId_card() {
        return id_card;
    }

    public void setId_card(Integer id_card) {
        this.id_card = id_card;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getFk_tema() {
        return fk_tema;
    }

    public void setFk_tema(int fk_tema) {
        this.fk_tema = fk_tema;
    }

    public int getFk_classificacao() {
        return fk_classificacao;
    }

    public void setFk_classificacao(int fk_classificacao) {
        this.fk_classificacao = fk_classificacao;
    }
    
    
}