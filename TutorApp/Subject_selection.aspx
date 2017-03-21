<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Subject_selection.aspx.cs" Inherits="Subject_selection" %>


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

        table.table-style-two {
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #3A3A3A;
            border-collapse: collapse;
        }

            table.table-style-two th {
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #517994;
                background-color: #B2CFD8;
            }

            table.table-style-two tr:hover td {
                background-color: #DFEBF1;
            }

            table.table-style-two td {
                border-width: 0px;
                padding: 8px;
                border-style: solid;
                border-color: #517994;
                background-color: #ffffff;
            }
    

        </style>
</head>

<body>



    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="index.aspx">MyApp</a>
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
                  <asp:Button runat="server" ID="btnAddNew" Text="Add Subject" CssClass="btn btn-info" OnClick="btnAddNew_Click" /><br />
        <br />
        <div id="divAdd" runat="server" visible="False" style="font-family: sans-serif; font-size: smaller;">
                <center>    <br />
                          <br />
                          <table class="table-style-two" style="vert-align: top;">
                
            
                         <tr valign="top">
                    <td>
                
                        <asp:Panel ID="pnlQuestion" runat="server">
                        </asp:Panel>
                        </td>
                        <td>
                     <asp:Panel ID="pnlAnswer" runat="server">
                        </asp:Panel>
                   </td>
                      
                      <td>
                      <div>
                            <asp:ImageButton ID="imgAdd" OnClick="AddTextBox" Width="36" Height="36" ImageUrl="~/img/add.jpe" runat="server" />
                        </div>
                        </td>
                        </tr>
                         </table>
                   <br /><br />
                        <asp:Button ID="btnGet" runat="server" CssClass="btn btn-info" Text="Save" OnClick="GetTextBoxValues" />
                        &nbsp;&nbsp;
                        <asp:Button runat="server" ID="Cancel" CssClass="btn btn-default" Text="Cancel" OnClick="Cancel_Click" />
                </center>
        </div>
        <br />
        <asp:Label ID="label1" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="lblResult" runat="server" ForeColor="Red" Text=""></asp:Label>
                           <br />
                           <br />
                           <asp:Label ID="label2" runat="server"></asp:Label>
     
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
