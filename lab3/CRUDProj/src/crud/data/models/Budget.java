package crud.data.models;

public class Budget extends Entity {
    private int dollars;
    public Budget(long id, int dollars){
        this.setId(id);
        this.setDollars(dollars);
    }

    public int getDollars() {
        return dollars;
    }

    public void setDollars(int dollars) {
        this.dollars = dollars;
    }
}
