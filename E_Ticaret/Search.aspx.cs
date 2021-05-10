using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace E_Ticaret
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (!IsPostBack)
            {
             
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string kelime = Request.QueryString["q"].ToString();
            SqlConnection baglanti = new SqlConnection(@"Server=DESKTOP-8IDAPTH\BERKAY;Database=bbb;Integrated Security=true");
            baglanti.Open();
            SqlCommand komut = new SqlCommand(@"select * from urun_bilgiler where urun_ad like '%'" + kelime + "'%'", baglanti);
            DataTable dt = new DataTable();

            Response.Redirect("shopping.aspx");


        }
    }
}