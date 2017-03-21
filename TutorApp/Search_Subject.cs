using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCompletionList(string prefixText, int count)
    {
        using (SqlConnection con = new SqlConnection("user id=sa;pwd=123;database=newweb"))
        {
            //con.ConnectionString = ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;
            
            using (SqlCommand com = new SqlCommand())
            {
                com.CommandText = "select T_Name ,T_level from teach_rating where " + "T_Skill like @Search + '%' ORDER BY [T_level] DESC ";  
              
                com.Parameters.AddWithValue("@Search", prefixText);
                com.Connection = con;
                con.Open();
                     List<string> countryNames = new List<string>();

                     List<string> teachNames = new List<string>();
                     using (SqlDataReader sdr = com.ExecuteReader())
                     {
                         while(sdr.Read())
                         {
                            // string items = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(sdr["T_Name"].ToString(),"{0}");
                             //string item1 = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(sdr["T_level"].ToString(), "{1}");

                                  countryNames.Add(sdr["T_Name"].ToString());
                                // countryNames.Add(sdr["(T_level)"].ToString());
                             //countryNames.Add(items);
                             //countryNames.Add(item1);
                                 
                             }
                        
                         foreach (String item in countryNames)
                         {
                            
                             teachNames.Add(item);
                            
                         }
                     }
                    
                     con.Close();
                     return teachNames;
             
              

            
            }

        }

    }
    string txt;
    protected void Button1_Click(object sender, EventArgs e)
    {
        txt = TextBox1.Text;
        Response.Redirect("Slot_Booking.aspx?teacher=" + Server.UrlEncode(txt));
      
    }
}