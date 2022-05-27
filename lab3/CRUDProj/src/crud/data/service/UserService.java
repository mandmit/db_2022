package crud.data.service;

import crud.data.models.Person;

import java.sql.*;
import java.util.ArrayList;

public class UserService implements IUserService {
    @Override
    public ArrayList<Person> findAllUsers() {
        ArrayList<Person> users_list = new ArrayList<Person>();
        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Lab1DBase", "postgres", "1111")) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM public.user ORDER BY id;");
            while (resultSet.next()) {
                Person p = new Person(resultSet.getLong("id"), resultSet.getString("name"), resultSet.getString("surname"));
                users_list.add(p);
            }
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
        }
        return users_list;
    }

    @Override
    public Person findById(long id) {
        Person user = new Person(id,null,null);
        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Lab1DBase", "postgres", "1111")) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM public.user;");
            while (resultSet.next()) {
                if(resultSet.getLong("id") == user.getId()){
                    user.setName(resultSet.getString("name"));
                    user.setSurname(resultSet.getString("surname"));
                }
            }
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public Person insert(Person p) {
        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Lab1DBase", "postgres", "1111")) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM public.user ORDER BY id;");
            while (resultSet.next()) {
                if(resultSet.isLast()){
                    String query = "INSERT INTO public.user (id,name,surname) VALUES (?,?,?);";
                    PreparedStatement statement1 = connection.prepareStatement(query);
                    p.setId(resultSet.getLong("id")+1);
                    statement1.setLong(1,p.getId());
                    statement1.setString(2,p.getName());
                    statement1.setString(3, p.getSurname());
                    statement1.executeUpdate();
                }
            }
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
        }
        return p;
    }

    @Override
    public boolean delete(long id) {
        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Lab1DBase", "postgres", "1111")) {
            String query = "DELETE FROM public.user WHERE id=?;";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setLong(1,id);
            statement.executeUpdate();
            connection.close();
            return true;
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Person p) {
        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Lab1DBase", "postgres", "1111")) {
            String query = "UPDATE public.user SET name=?, surname=?  WHERE id=?;";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1,p.getName());
            statement.setString(2,p.getSurname());
            statement.setLong(3,p.getId());
            statement.executeUpdate();
            connection.close();
            return true;
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
            return false;
        }
    }
}
