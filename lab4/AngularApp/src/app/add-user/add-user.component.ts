import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from '../user.service';
 
@Component({
  selector: 'app-add-user',
  templateUrl: './add-user.component.html',
  styleUrls: ['./add-user.component.css']
})
export class AddUserComponent implements OnInit {

  addUser:any;
  constructor(private fb:FormBuilder,
    private routes:Router,
    private userservice:UserService
    ) {
      this.addUser = fb.group(
        {
          user_name:['',Validators.required],
          user_surname:['',Validators.required]
        }
      )
     }

  ngOnInit(): void {
  }

  onSubmit(){
    console.log(this.addUser.value);
    this.userservice.addUser(this.addUser.value).subscribe((data:any)=>{
      console.log(data);
      this.routes.navigate(['/list-user']);
    })
  }
}
