package crud.data.models;

public class Group extends Entity {
    private long subject_area_id;
    private String name;

    public Group(long id, long subject_area_id, String name) {
        this.setId(id);
        this.setSubject_area_id(subject_area_id);
        this.setName(name);
    }

    public long getSubject_area_id() {
        return subject_area_id;
    }

    public void setSubject_area_id(long subject_area_id) {
        this.subject_area_id = subject_area_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
