package crud.data.models;

public class Subject_area extends Entity {
    private long budget_id;
    private String title;

    public Subject_area(long id, long budget_id, String title) {
        this.setId(id);
        this.setBudget_id(budget_id);
        this.setTitle(title);
    }

    public long getBudget_id() {
        return budget_id;
    }

    public void setBudget_id(long budget_id) {
        this.budget_id = budget_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
