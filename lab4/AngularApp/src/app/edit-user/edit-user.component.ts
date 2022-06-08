import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { UserService } from '../user.service';

@Component({
  selector: 'app-edit-user',
  templateUrl: './edit-user.component.html',
  styleUrls: ['./edit-user.component.css']
})
export class EditUserComponent implements OnInit {

  addUser:any;
  id: any;
  constructor(private fb:FormBuilder,
    private routes:Router,
    private userservice:UserService,
    private url:ActivatedRoute
    ) {
      this.addUser = fb.group(
      {
        user_name:['', Validators.required],
        user_surname:['', Validators.required],
      }

      )
     }

  ngOnInit(): void {
    this.id = this.url.snapshot.params['id'];
    console.log(this.id);
    this.userservice.singleUser(this.id).subscribe(data=>{
      this.addUser.patchValue(data);
    })
  }

  onSubmit(){
    console.log(this.addUser.value);
    this.userservice.updateUser(this.id, this.addUser.value).subscribe((data:any)=>{
      console.log(data);
      this.routes.navigate(['/list-user']);
    })
  }
}
