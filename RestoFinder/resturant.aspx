<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resturant.aspx.cs" Inherits="returant" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>search your food near you!</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <link href="css/materialize.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
      <style type="text/css">
  /*.divider{
    width:5px;
    height:auto;
    display:inline-block;
}*/
  .card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    
    border-radius: 5px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.4);
}


   body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
            background-image: url('pic1-min.jpeg');
         
    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

  .landscape {
        float:left;
        width:175px;     
        height:175px;    
        overflow:hidden; 
      
           }
 


        </style>
</head>

<body>



    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="index.aspx">RestoFinder</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
          
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
          <div class="bg">  <h3 style="text-align:center;padding-top:250px;margin-top:0px">      <asp:Label ID="Label4" runat="server"></asp:Label></h3>
        </div>
    <div class="container">

        <!-- Jumbotron Header -->
    
        <%-- <img class="materialboxed" data-caption="A picture of some deer and tons of trees" width="1050" height="350"  src="http://th01.deviantart.net/fs70/PRE/i/2013/126/1/e/nature_portrait_by_pw_fotografie-d63tx0n.jpg">
  --%>
     
        <hr>

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12 c">
                 
            </div>
        </div>
        <!-- /.row -->
     
        <!-- Page Features -->
        <div class="row text-center">
            <form runat="server">
                
   
<center>
 
<asp:Repeater ID="rptrExample" runat="server"> 
<HeaderTemplate>

<b>Find the best restaurants, cafés, and bars in Dehradun</b> 

</HeaderTemplate>
<ItemTemplate>
        
     <div class="card">
                <div class="col-md-10 col-sm-4 hero-feature">
                  
                      <%--  <asp:Image ID="Image1" runat="server" Width="100px" Height="100px"  ImageAlign="Left" CssClass="img-responsive"  ImageUrl= ></asp:Image>  
                      --%>  
                  
         <div class="row">
                <div class="col s12 m6 l3"><p><img src='<%# GetImage(Eval("data")) %>' class="landscape img-circle"  /></p></div>
                <div class="col s12 m6 l3"><p> Resturants Name:
               <asp:LinkButton ID="lblSubject" runat="server" Text='<%#Eval("name") %>' Font-Bold="true" OnCommand="lblSubject_Click" ></asp:LinkButton>
                   <br /> Address: <asp:Label ID="Label1" runat="server" Text='<%#Eval("location") %>' Font-Bold="true"/></p></div>
              <div class="col s12 m6 l3"><p> Reviews: <asp:Label ID="Label2" runat="server" Text='<%#Eval("reviews") %>' Font-Bold="true"/> </p></div>
            <div class="col s12 m6 l3"><p> Ratings:  <asp:Label ID="Label3" runat="server" Text='<%#Eval("ratings") %>' Font-Bold="true"/></p></div>
  </div>
           
             <div class="divider"></div>
                    <div class="section">
                     <p> CUISINES: Modern Indian, North Indian COST FOR TWO:₹1,500 HOURS: 12:30 PM to 1 AM (Mon-Sun) FEATURED IN: Microbreweries, Insta-worthy
                            </p>
                   
              
        </div>
                     </div>
              </div>
    
</ItemTemplate>
   
</asp:Repeater> 
       </center>
        <!-- /.row -->
            </form>
      </div>

   

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
