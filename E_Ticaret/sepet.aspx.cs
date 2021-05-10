using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Ticaret
{
    public partial class sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["urun_ıd"]);
            if (!IsPostBack)
            {

                SqlConnection baglanti = new SqlConnection(@"Server=DESKTOP-8IDAPTH\BERKAY;Database=bbb;Integrated Security=true");
                baglanti.Open();
                SqlCommand komut = new SqlCommand(@"select * from urunler where urun_ıd='"+id+"'", baglanti);

                SqlDataReader dr = komut.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr["urun_adı"].ToString();
                        TextBox2.Text = dr["urun_fiyat"].ToString();
                        
                    }
                    dr.Close();

                    baglanti.Close();
                    Panel2.Visible = false;
                }
                else
                {
                    Panel2.Visible = true;
                    Panel1.Visible = false;
                }
                
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("odeme.aspx");

        }
    }
}