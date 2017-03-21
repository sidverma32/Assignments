using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
public partial class individual : System.Web.UI.Page
{
    SqlConnection con,con1,con2;
    SqlDataReader dr;
    String txt = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=SQL5021.myASP.NET;Initial Catalog=DB_A16F05_resto;User Id=DB_A16F05_resto_admin;Password=sid7106375");
       
        if (Request.QueryString["restu"] != null)
            txt = Request.QueryString["restu"];
        HtmlHead head = Page.Header;
        HtmlTitle title = new HtmlTitle();
        title.Text = txt;
        head.Controls.Add(title);
     

        SqlCommand cmd = new SqlCommand("SELECT * FROM detaili where name='" + txt + "'", con);
        try
        {
            cmd.Connection.Open();
            //binding the data in a repeater.
           // rptrExample.DataSource = cmd.ExecuteReader();
           // rptrExample.DataBind();
           dr= cmd.ExecuteReader();
           if (dr.Read())
           {
             Label7.Text= Label1.Text = dr.GetString(2);
             Label7.ForeColor = System.Drawing.Color.DarkCyan;
            
               Label2.Text = dr.GetString(3);
               Label3.Text = dr.GetString(4);
               Label4.Text = dr.GetString(5);

               cmd.Connection.Close();
               cmd.Connection.Dispose();
           }


           Label5.Text = "0 Users have rated this Product";
           Label6.Text = "Average rating for this Product is 0";
           if (!IsPostBack)
           {
               BindRatings();
           }
        }
        catch (Exception ex)
        {
            // lblStatus.Text = ex.Message;
        }
    
    }

 
    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        con1 = new SqlConnection("Data Source=SQL5021.myASP.NET;Initial Catalog=DB_A16F05_resto;User Id=DB_A16F05_resto_admin;Password=sid7106375");
       
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("INSERT INTO RatingDetail(Rate) VALUES (@Rate)", con1);
        cmd1.Parameters.AddWithValue("@Rate", SqlDbType.Int).Value = Rating1.CurrentRating;
        cmd1.ExecuteNonQuery();
        con1.Close();
        BindRatings();
    }
    public void BindRatings()
    {
        con2 = new SqlConnection("Data Source=SQL5021.myASP.NET;Initial Catalog=DB_A16F05_resto;User Id=DB_A16F05_resto_admin;Password=sid7106375");
       
        int Total = 0;
        con2.Open();
        SqlCommand cmd2 = new SqlCommand("SELECT Rate FROM RatingDetail", con2);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Total += Convert.ToInt32(dt.Rows[i][0].ToString());
            }
            int Average = Total / (dt.Rows.Count);
            Rating1.CurrentRating = Average;
            Label5.Text = "<b>"+dt.Rows.Count+"</b>" + " " + "Users have rated this resturant";
            Label6.Text = "Average rating for this resturant is" + " " +"<b>"+ Convert.ToString(Average)+"</b>";
        }
       
    }
}