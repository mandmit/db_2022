package crud.data.models;

public class Person {
    private long id;
    private String name;
    private String surname;
    public Person(long id, String name, String surname){
        this.setId(id);
        this.setName(name);
        this.setSurname(surname);
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
}
