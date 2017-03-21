using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class returant : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    String txt = null;
    protected void Page_Load(object sender, System.EventArgs e)
    {
        
        ////connection to database
        con= new SqlConnection("Data Source=SQL5021.myASP.NET;Initial Catalog=DB_A16F05_resto;User Id=DB_A16F05_resto_admin;Password=sid7106375");
       //con = new SqlConnection("user id=sa;pwd=123;database=resto");
        //retrieveing the query from previous page
        if (Request.QueryString["city"] != null)
             txt = Request.QueryString["city"];
        Label4.Text = txt;
        Label4.ForeColor =System.Drawing.Color.Cyan;
        // sql query to desplay lsit of resturants,bars and cafe according to the city order by their ratings.
        SqlCommand cmd = new SqlCommand("SELECT  * FROM detaili where city='" + txt + "' ORDER BY [ratings] DESC", con);
        try
        {
            cmd.Connection.Open();
            //binding the data in a repeater.
            rptrExample.DataSource = cmd.ExecuteReader();
            rptrExample.DataBind();

            cmd.Connection.Close();
            cmd.Connection.Dispose();
        }
        catch (Exception ex)
        {
           // lblStatus.Text = ex.Message;
        }
    }
    public string GetImage(object img)
    {
        return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
    }
    protected void lblSubject_Click(object sender, EventArgs e)
    {String restu=null;
        LinkButton myButton = sender as LinkButton;
        if (myButton != null)
        
             restu = myButton.Text;
        
            Response.Redirect("individual.aspx?restu="+Server.UrlEncode(restu));
        
    }
}