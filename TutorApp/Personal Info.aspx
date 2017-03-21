<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personal Info.aspx.cs" Inherits="Personal_Info" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MyApp</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">MyApp</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Subjects</a>
                    </li>
                    <li>
                        <a href="#">Profile</a>
                    </li>
                    <li>
                        <a href="#">About us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer">
            <h1>A Warm Welcome!</h1>
            <p>MyApp-Welcomes you to the Tutor World! 
            </p>
        </header>

        <hr>

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <h3>Home->Personal Information</h3>
            </div>
        </div>
        <!-- /.row -->
        <form runat="server">
        <!-- Page Features -->
        <div class="row text-center">
            
            

                <div class="col-md-12 col-sm-4 hero-feature">
                    <div class="thumbnail">
                        
                  <center>      <div class="caption">
         <h4 style="background-color:aliceblue;font-family:'Times New Roman', Times, serif;font-stretch:expanded">Degree</h4> 
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="list-group-item">
            <asp:ListItem>B.TECH</asp:ListItem>
            <asp:ListItem>M.TECH</asp:ListItem>
                                  <asp:ListItem>B.Sc</asp:ListItem>
        </asp:DropDownList>
                      <h4 style="background-color:aliceblue;font-family:'Times New Roman', Times, serif;font-stretch:expanded">Stream</h4> 
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="list-group-item">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
                                          <asp:ListItem>ECE</asp:ListItem>
        </asp:DropDownList>
                      <h4 style="background-color:aliceblue;font-family:'Times New Roman', Times, serif;font-stretch:expanded">Semester</h4> 
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="list-group-item">
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
                      <h4 style="background-color:aliceblue;font-family:'Times New Roman', Times, serif;font-stretch:expanded">Instituion Name</h4> 
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="list-group-item">
            <asp:ListItem>IIT Delhi</asp:ListItem>
            <asp:ListItem>IIT Roorkee</asp:ListItem>
                                 <asp:ListItem>DIT UNIVERSITY</asp:ListItem>
        </asp:DropDownList>
                    </div></center></div>
                </div>
           <a href="#" class="btn btn-info">SKIP</a>  &nbsp;&nbsp; <a href="#" class="btn btn-success">NEXT</a>
        </div>
        <!-- /.row -->

        <hr>
            </form>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; SportClub</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

