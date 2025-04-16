package atributos;

public class AtributosBean {

    private Integer id_atributo;
    private int fk_card;
    private String chave;
    private String valor;

    public Integer getId_atributo() {
        return id_atributo;
    }

    public void setId_atributo(Integer id_atributo) {
        this.id_atributo = id_atributo;
    }

    public int getFk_card() {
        return fk_card;
    }

    public void setFk_card(int fk_card) {
        this.fk_card = fk_card;
    }

    public String getChave() {
        return chave;
    }

    public void setChave(String chave) {
        this.chave = chave;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }
}
