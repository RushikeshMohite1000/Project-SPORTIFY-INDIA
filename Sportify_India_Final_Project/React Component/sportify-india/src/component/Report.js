import React from "react";
export default class Report extends React.Component
{
    state={data1:'',data2:'',data3:'',data4:''}
    componentDidMount()
    {
        console.log("inside report here")
        var promise = fetch("http://localhost:8080/admin/totalrevenue", {
                       "method": "GET",
                     })
        var anotherpromise =promise.then(response => {
            console.log("1")
                         return response.text()
                    })
        anotherpromise.then(textdata => {
            console.log("2")
            console.log(textdata)
                       this.setState({
                         data1: textdata
                       } )})
                     
        promise.catch(err => { console.log(err); 
                     });

                     var promise1 = fetch("http://localhost:8080/admin/totalcount", {
                       "method": "GET",
                     })
        var anotherpromise1 =promise1.then(response => {
            console.log("")
                         return response.text()
                    })
        anotherpromise1.then(textdata => {
            console.log("2")
            console.log(textdata)
                       this.setState({
                         data2: textdata
                       } )})
                     
        promise1.catch(err => { console.log(err); 
                     });
                     var promise2 = fetch("http://localhost:8080/admin/totalquant", {
                       "method": "GET",
                     })
        var anotherpromise2 =promise2.then(response => {
            console.log("3")
                         return response.text()
                    })
        anotherpromise2.then(textdata => {
            console.log("4")
            console.log(textdata)
                       this.setState({
                         data3: textdata
                       } )})
                     
        promise2.catch(err => { console.log(err); 
                     });
                     var promise3 = fetch("http://localhost:8080/admin/totalprofit", {
                       "method": "GET",
                     })
        var anotherpromise3 =promise3.then(response => {
            console.log("5")
                         return response.text()
                    })
        anotherpromise3.then(textdata => {
            console.log("6")
            console.log(textdata)
                       this.setState({
                         data4: textdata
                       } )})
                     
        promise3.catch(err => { console.log(err); 
                     });
                    
           
    }
    getdata1=()=>
    {
        var d=this.state.data1  
        return d;
    }
    getdata2=()=>
    {
        var d=this.state.data2  
        return d;
    }
    getdata3=()=>
    {
        var d=this.state.data3  
        return d;
    }
    getdata4=()=>
    {
        var d=this.state.data4  
        return d;
    }
    render()
    {
        return(<div>
            <div class="container-fluid">
        <div class="row px-xl-5">
                <div class="col-lg-12 table-responsive mb-5">
                    <table class="table table-light table-borderless table-hover text-center mb-0">
                        <thead class="thead-dark">
                            <tr>
                                <th>Total Revenue</th>
                                <th>Total Orders</th>
                                <th>Total Sells</th>
                                <th>Total Profit</th>
                            </tr>
                        </thead>
                        <tbody class="align-middle">
                        <th>{this.getdata1()}</th>
                        <th>{this.getdata2()}</th>
                        <th>{this.getdata3()}</th>
                        <th>{this.getdata4()}</th>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>)
    }
}