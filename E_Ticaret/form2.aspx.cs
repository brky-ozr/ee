using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace E_Ticaret
{
    public partial class form2 : System.Web.UI.Page
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
                    komut = new SqlCommand("INSERT INTO kullanicilar (kullanici, sifre) VALUES(@kullanici, @sifre )", baglanti);
                    komut.Parameters.AddWithValue("@kullanici", TextBox1.Text);
                    komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
                    


                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    Label6.Text = "Kayıt Eklendi";


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


  