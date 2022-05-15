package crud.data.service;

import crud.data.models.Person;

import java.sql.*;
import java.util.List;

public class UserService implements IUserService {
    @Override
    public List<Person> findAllUsers() {
        List<Person> users_list = null;
        try (Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Lab1DBase", "postgres", "1111")) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM public.user");
            while (resultSet.next()) {
                users_list.add(new Person(resultSet.getLong("id"), resultSet.getString("name"), resultSet.getString("surname")));
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
            ResultSet resultSet = statement.executeQuery("SELECT * FROM public.user");
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
            ResultSet resultSet = statement.executeQuery("SELECT * FROM public.user");
            while (resultSet.next()) {
                if(resultSet.isLast()){
                    String query = "INSERT INTO public.user (id,name,surname) VALUES ({0},{1},{2});";
                    query = java.text.MessageFormat.format(query,p.getId()+1,p.getName(),p.getSurname());
                    statement.executeQuery(query);
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
            Statement statement = connection.createStatement();
            String query = "DELETE FROM public.user WHERE id={0};";
            query = java.text.MessageFormat.format(query,id);
            statement.executeQuery(query);
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
            Statement statement = connection.createStatement();
            String query = "UPDATE public.user SET name={0}, surname={1}  WHERE id={2};";
            query = java.text.MessageFormat.format(query,p.getId(),p.getName(),p.getSurname());
            statement.executeQuery(query);
            return true;
        } catch (SQLException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
            return false;
        }
    }
}
