import { Component, OnInit } from '@angular/core';
import { UserService } from '../user.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-list-user',
  templateUrl: './list-user.component.html',
  styleUrls: ['./list-user.component.css']
})
export class ListUserComponent implements OnInit {
  user:any;
  constructor(private userservice:UserService, private routes:Router) { }

  ngOnInit(): void {
    this.loadUser();
  }

  loadUser(){
    this.userservice.listUser().subscribe((data:any)=>{
      this.user = data;
    })

  }

  delUser(datas:any){
    this.userservice.deleteUser(datas._id).subscribe(data=>{
      console.log(datas);
      this.user = this.user.filter((u:any)=>u!==datas)
    })

  }
}
