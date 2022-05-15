package crud.data.service;

import java.util.List;
import crud.data.models.Person;

public interface IUserService {
    List<Person> findAllUsers();
    Person findById(long id);
    Person insert(Person p);
    boolean delete(long id);
    boolean update(Person p);
}
