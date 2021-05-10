using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace E_Ticaret
{
    public partial class shopping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
          
        {
            var id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                using (SqlConnection baglanti = new SqlConnection(@"Server=DESKTOP-8IDAPTH\BERKAY;Database=bbb;Integrated Security=true"))
                {
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand(@"select * from urunler", baglanti);

                    SqlDataReader dr = komut.ExecuteReader();
                    while (dr.Read())
                    {
                        Image1.ImageUrl = dr[0].ToString();
                        //Image2.ImageUrl = dr[1].ToString();
                        //Image3.ImageUrl = dr[2].ToString();
                        //Image4.ImageUrl = dr[3].ToString();
                        //Image5.ImageUrl = dr[4].ToString();




                    }
                    dr.Close();
                    baglanti.Close();
                }

            }

        }

     

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx?urun_ıd=1");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx?urun_ıd=4");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx?urun_ıd=7");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx?urun_ıd=5");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx?urun_ıd=6");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx?urun_ıd=2");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx?urun_ıd=3");
        }
    }
}