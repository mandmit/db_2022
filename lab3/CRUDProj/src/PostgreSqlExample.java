import crud.data.models.Person;
import crud.data.service.UserService;

import java.nio.file.attribute.UserPrincipal;
import java.sql.*;
import java.text.MessageFormat;
import java.util.*;

public class PostgreSqlExample {
    public static void main(String[] args) {
        int n = 1;
        while(n!=0){
            System.out.print("Choose command: 1-FindAll\n2-findById\n3-update\n4-insert\n5-delete :");
            Scanner in = new Scanner(System.in);
            n = in.nextInt();
            UserService us = new UserService();
            if(n == 1){
                List<Person> list_users = us.findAllUsers();
                for(Person p : list_users) {
                    System.out.printf("id=%s\tname=%s\tsurname=%s",p.getId(),p.getName(),p.getSurname());
                }
            }else if(n==2){
                int id = in.nextInt();
                Person p = us.findById(id);
                System.out.printf("id=%s\tname=%s\tsurname=%s",p.getId(),p.getName(),p.getSurname());
            }
        }
    }
}