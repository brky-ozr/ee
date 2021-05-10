using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Ticaret
{
    public partial class Logi_Page : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Server=DESKTOP-8IDAPTH\BERKAY;Database=bbb;Integrated Security=true");
            
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from kullanicilar", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                if (dr["kullanici"].ToString()==TextBox1.Text && dr["sifre"].ToString()==TextBox2.Text)
                {
                    Response.Redirect("~/shopping.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "KULLANICI ADI VEYA SIFRE HATALI";
                }
            }
        }

    

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/form2.aspx");
        }
    }
}