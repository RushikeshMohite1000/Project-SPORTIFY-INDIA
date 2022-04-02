import React from "react"
import { Navigate } from "react-router-dom"
import Report from "./Report"

export default class Signin extends React.Component
{
    state={uname:'',password:'',data:''}
    send=(e)=>
        {
            console.log("in login "+this.state.uname)
         var promise=fetch("http://localhost:8080/admin/signin/"+this.state.uname+"/"+this.state.password, {
                "method": "GET"
            })
        var anotherpromise =promise.then(response => {
            return response.text()
       })
        anotherpromise.then(textdata => {
          this.setState({
            data: textdata
          } )})
        
        promise.catch(err => { console.log(err); 
        });
        console.log(this.state.data);
    }
    render()
    {
        if(this.state.data=='success')
        {
            return(
                    <Navigate to={"/vendors"}></Navigate>)
        }
        return(
        <div>
            <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                        <div class="form-title text-center">
                            <h4>Welcome</h4>
                        </div>
                                <div class="form-group">
                                    <label for="username">User Name</label>
                                    <input type={"text"} class="form-control" placeholder="User Name" onBlur={(event)=>{this.setState({uname:event.target.value})}}></input>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type={"password"} class="form-control" placeholder="Password" onBlur={(event)=>{this.setState({password:event.target.value})}}></input>
                                </div>
                                <div class="text-center">
                                    <button type={"button"} onClick={this.send} class="btn btn-primary">Login</button>
                                </div> 
                        </div>
                </div>
            </div>
        </div>)
    }

}