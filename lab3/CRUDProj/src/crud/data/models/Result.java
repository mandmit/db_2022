package crud.data.models;

import java.sql.Date;

public class Result {
    private long user_id;
    private long group_id;
    private float rating;
    private Date day;

    public Result(long user_id, long group_id, float rating, Date day) {
        this.setUser_id(user_id);
        this.setGroup_id(group_id);
        this.setRating(rating);
        this.setDay(day);
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public long getGroup_id() {
        return group_id;
    }

    public void setGroup_id(long group_id) {
        this.group_id = group_id;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }
}
