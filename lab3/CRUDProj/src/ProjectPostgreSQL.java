import crud.data.models.Person;
import crud.data.service.UserService;

import java.util.*;

public class ProjectPostgreSQL {
    public static void main(String[] args) {
        int n = 1;
        while(n!=0){
            System.out.print("Choose command:\n 1-FindAll\n2-findById\n3-update\n4-insert\n5-delete :");
            Scanner in = new Scanner(System.in);
            n = in.nextInt();
            UserService us = new UserService();
            if(n == 1){
                ArrayList<Person> list_users = us.findAllUsers();
                for(Person p : list_users) {
                    System.out.printf("id=%s\tname=%s\tsurname=%s\n",p.getId(),p.getName(),p.getSurname());
                }
            }else if(n==2){
                System.out.print("Enter id:");
                int id = in.nextInt();
                in.reset();
                Person p = us.findById(id);
                if(p.getName() == null && p.getSurname() == null){
                    System.out.print("Has not found");
                }else{
                    System.out.printf("id=%s\tname=%s\tsurname=%s\n",p.getId(),p.getName(),p.getSurname());
                }
            }else if(n==3){
                System.out.print("Enter id:");
                long id = in.nextLong();
                System.out.print("Enter new name:");
                String name = in.next();
                System.out.print("Enter new surname:");
                String surname = in.next();
                if(us.update(new Person(id,name,surname))){
                    System.out.print("Successfully\n");
                }else{
                    System.out.print("Failed\n");
                }
            }else if(n==4){
                long id = 0;
                System.out.print("Enter new name:");
                String name = in.next();
                System.out.print("Enter new surname:");
                String surname = in.next();
                us.insert(new Person(id,name,surname));
                System.out.print("Successfully added to db\n");
            }else if(n==5){
                System.out.print("Enter id:");
                long id = in.nextLong();
                if(us.delete(id)){
                    System.out.print("Successfully deleted from db\n");
                }else{
                    System.out.print("Deleting have failed\n");
                }
            }
        }
    }
}