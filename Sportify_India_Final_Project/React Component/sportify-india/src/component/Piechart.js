import { Link } from "react-router-dom"
export default function Piechart()
{
    return( 
<div>
    <div className="container-fluid bg-dark mb-30">
        <div className="row px-xl-5">
            <div className="col-lg-9">
                        <nav className="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                            <a class="text-decoration-none d-block d-lg-none"> 
                            <span class="h1 text-uppercase text-dark bg-light px-2">Sportify</span>
                            <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">India</span>
                            </a>
                            <div class="collapse navbar-collapse justify-content-between">
                                <div class="navbar-nav mr-auto py-0">
                                    <a  class="nav-item nav-link active">Administrator</a>
                                    <Link to="report"  class="nav-item nav-link">Reports</Link>
                                    <Link to="vendors" class="nav-item nav-link">Vendors</Link>
                                </div>
                                <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                                    <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Admin</a>
                                        <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                            <a href="http://localhost:8080/index" class="dropdown-item">Sign Out</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row px-xl-5">
                    <div class="col-12">
                        <nav class="breadcrumb bg-light mb-30">
                            <a class="breadcrumb-item text-dark" href="http://localhost:3000">Home</a>
                            <span class="breadcrumb-item active">Administrator</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>  
    )
}