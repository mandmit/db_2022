package crud.data.service;

import crud.data.models.Person;
import java.util.ArrayList;

public interface IUserService {
    ArrayList<Person> findAllUsers();
    Person findById(long id);
    void insert(Person p);
    boolean delete(long id);
    boolean update(Person p);
}
