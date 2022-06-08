import { Injectable } from '@angular/core';
import { HttpClient, HttpParams} from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private http:HttpClient) { }

  addUser(user:any){
    return this.http.post('http://localhost:3000/user/add-user',user);
  }

  listUser(){
    return this.http.get('http://localhost:3000/user/');
  }
  deleteUser(id:any){
    return this.http.delete('http://localhost:3000/user/del-user/'+id);
  }  
  singleUser(id:any){
    return this.http.get('http://localhost:3000/user/user/'+id);
  }

  updateUser(id:any, user:any){
    return this.http.put('http://localhost:3000/user/update-user/'+id, user);
  }

}
