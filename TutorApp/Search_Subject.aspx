<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>  

<!DOCTYPE html>

<html lang="en">

<head runat="server">

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
        
    <div class="container">

       
     <h3>Search Teacher based on Subject and Rating</h3>
        <hr>

       
        <!-- Page Features -->
        <div class="row text-center">
             
    <form id="form1" runat="server">  
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">  
  
    </asp:ScriptManager>  

	<div class="input-field col s12">
							      		<i class="mdi-action-find-in-page prefix"></i>
							        	<%--<input id="username" type="text" class="validate">--%>
                                          <asp:TextBox ID="TextBox1" runat="server" placeholder="Search Teacher. Type Subject ...."></asp:TextBox>
							        	
							      	</div>
 <asp:Button ID="Button1" runat="server" Text="Button"  CssClass="btn btn-info" OnClick="Button1_Click" />
                <asp:AutoCompleteExtender ServiceMethod="GetCompletionList"
                    DelimiterCharacters=","
                    ShowOnlyCurrentWordInCompletionListItem="true"
           MinimumPrefixLength="1"    
           CompletionInterval="10" 
           EnableCaching="false"
           CompletionSetCount="1" 
           TargetControlID="TextBox1"    
           ID="AutoCompleteExtender1" 
           runat="server" 
                    CompletionListCssClass="list-group-item"
                    CompletionListItemCssClass="list-group-item success"
                    CompletionListHighlightedItemCssClass="list-group-item-info"
           FirstRowSelected="false">    
    </asp:AutoCompleteExtender>  
            
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