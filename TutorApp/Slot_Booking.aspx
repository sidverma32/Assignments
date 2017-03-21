<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Slot_Booking.aspx.cs" Inherits="Slot_Booking" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MyApp</title>


  <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

  <link rel="stylesheet" href="../dist/material-datetime-picker.css">

      <style type="text/css">
   body {
      font-family: 'Roboto', sans-serif;
      -webkit-font-smoothing: antialiased;
    }

    .c-btn {
      font-size: 14px;
      text-transform: capitalize;
      font-weight: 600;
      display: inline-block;
      line-height: 36px;
      cursor: pointer;
      text-align: center;
      text-transform: uppercase;
      min-width: 88px;
      height: 36px;
      margin: 10px 8px;
      padding: 0 8px;
      text-align: center;
      letter-spacing: .5px;
      border-radius: 2px;
      background: #F1F1F1;
      color: #393939;
      transition: background 200ms ease-in-out;
      box-shadow: 0 3.08696px 5.82609px 0 rgba(0, 0, 0, 0.16174), 0 3.65217px 12.91304px 0 rgba(0, 0, 0, 0.12435);
    }

    .c-btn--flat {
      background: transparent;
      margin: 10px 8px;
      min-width: 52px;
    }

    .c-btn:hover {
      background: rgba(153, 153, 153, 0.2);
      color: #393939;
    }

    .c-btn:active {
      box-shadow: 0 9.6087px 10.78261px 0 rgba(0, 0, 0, 0.17217), 0 13.56522px 30.3913px 0 rgba(0, 0, 0, 0.15043);
    }

    .c-btn--flat, .c-btn--flat:hover, .c-btn--flat:active {
      box-shadow: none;
    }
    .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
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

     <div class="container">

  
        <hr>

       
        <!-- Page Features -->
        <div class="row text-center">
      <center>       


          <br /><br /><br />
            
  <a class="c-btn c-datepicker-btn">
    <span class="material-icon">Open date picker</span>
  </a>
<br /><br /><br /><br />
    <form id="form1" runat="server">  
        Your Tution has been Booked with: &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>&nbsp; on &nbsp;<asp:Label ID="output" runat="server" ></asp:Label><br />
<asp:Button ID="Button1" runat="server"  CssClass="button" Text="BOOK NOW" OnClick="Button1_Click"></asp:Button>

   </form>
    
          </center>  
        </div></div>
  <script src="https://unpkg.com/babel-polyfill@6.2.0/dist/polyfill.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/rome/2.1.22/rome.standalone.js"></script>
  <script src="../dist/material-datetime-picker.js" charset="utf-8"></script>

  <script>

      var picker = new MaterialDatetimePicker({})
        .on('submit', function(d) {
            output.innerText = d;
        });

      var el = document.querySelector('.c-datepicker-btn');
      el.addEventListener('click', function() {
          picker.open();
      }, false);

</script>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
  

</body>

</html>  