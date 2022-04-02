import React from "react";

export default class Vendors extends React.Component
{
    state={data:[],pay:'Payment not done yet'}
    componentDidMount()
    {
        console.log("inside here")
        var promise = fetch("http://localhost:8080/admin/sellerlist", {
                       "method": "GET",
                     })
        var anotherpromise =promise.then(response => {
            console.log("1")
                         return response.json()
                    })
        anotherpromise.then(jsondataarr => {
            console.log("2")
            console.log(...jsondataarr)
                       this.setState({
                         data: jsondataarr
                         
                       } )})
                     
        promise.catch(err => { console.log(err); 
                     });

           
    }
    getdata=()=>
    {
        var seller=this.state.data.map((obj)=>{return(<tr>
            <th>{obj.sellerId}</th>
            <th>{obj.sellerName}</th>
            <th>{obj.sellerMobno}</th>
            <th>{obj.sellerAdharNo}</th>
            <th>{obj.sellerAddress}</th>
            <th>{obj.sellerShopName}</th>
        </tr>)})
        return seller;
    }
    dopay=()=>
    {
        var pay1=this.state.pay
        
        return pay1;
    }
    render()
    {
        return(<div>
            <div class="container-fluid">
        <div class="row px-xl-5">
                <div class="col-lg-12 table-responsive mb-5">
                    <table class="table table-light table-borderless table-hover text-center mb-0">
                        <thead class="thead-dark">
                                <th>Seller Id</th>
                                <th>Seller Name</th>
                                <th>Seller MobNo</th>
                                <th>Seller AdharNo</th>
                                <th>Seller Adress</th>
                                <th>Seller ShopName</th>
                        </thead>
                        <tbody class="align-middle">
                            {this.getdata()}
                        </tbody>  
                    </table>
                    <br></br>
                    <button class="btn btn-sm btn-primary" onClick={(event)=>this.setState({pay:'Vendor Payment Is Done'})}>Do All Payment</button>
                </div>
                <h3>{this.dopay()}</h3>
            </div>
            <br></br>
            
        </div>
    </div>)
    }
}