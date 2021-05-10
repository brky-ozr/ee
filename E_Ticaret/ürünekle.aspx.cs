using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Ticaret
{
    public partial class ürünekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)

            {
                SqlConnection baglanti;
                SqlCommand komut;

                string ConnectionString = ConfigurationManager.ConnectionStrings["bbbConnectionString"].ConnectionString;
                baglanti = new SqlConnection(ConnectionString);


                try
                {
                    komut = new SqlCommand("INSERT INTO urunler (urun_adı, urun_fiyat) VALUES(@urun_adı, @urun_fiyat)", baglanti);
                    komut.Parameters.AddWithValue("@urun_adı", TextBox1.Text);
                    komut.Parameters.AddWithValue("@urun_fiyat", TextBox2.Text);

                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    Label6.Text = "ürün Eklendi";


                }
                catch
                {
                    Label6.Text = "Hata oluştu, kaydedilemedi.";
                }
                finally
                {

                    baglanti.Close();
                }
            }

        }
    }
}