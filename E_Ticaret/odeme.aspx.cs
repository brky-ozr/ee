using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Ticaret
{
    public partial class odeme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Server=DESKTOP-8IDAPTH\BERKAY;Database=bbb;Integrated Security=true");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From dbo.kart where kart_numarası = @p1 and kart_cvv = @p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataReader rd = komut.ExecuteReader();
            if (rd.Read())
            {
                Label1.Visible = true;
                Label1.Text = "ödemeniz gerçekleştirildi teşekkür ederiz";
               // Response.Redirect("shopping.aspx");

            }
        }
    }
}