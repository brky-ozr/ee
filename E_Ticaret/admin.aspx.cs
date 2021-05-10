using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Ticaret
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Server=DESKTOP-8IDAPTH\BERKAY;Database=bbb;Integrated Security=true");

            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from admin", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                if (dr["yönetici_Adı"].ToString() == TextBox1.Text && dr["yönetici_sifre"].ToString() == TextBox2.Text)
                {
                    Response.Redirect("~/yöneticiMenu.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "KULLANICI ADI VEYA SIFRE HATALI";
                    
                } 
            }
        }
    }
}