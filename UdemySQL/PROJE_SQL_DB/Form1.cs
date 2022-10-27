using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace PROJE_SQL_DB
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        SqlConnection baglanti3 = new SqlConnection("Data Source=DESKTOP-18K9AFS;Initial Catalog=SatisVeriTabani;Integrated Security=True");

        private void btnkategori_Click(object sender, EventArgs e)
        {
          FrmKategoriler fr = new FrmKategoriler();
            fr.Show();
        }

        private void btnmusteri_Click(object sender, EventArgs e)
        {
            FrmMusteri fr2 = new FrmMusteri();
            fr2.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // ürünlerin durum seviyesi
            SqlCommand komut = new SqlCommand("Execute KRITIKSTOK",baglanti3);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;


            // grafiğe veri çekme

            //chart1.Series["Akdeniz"].Points.AddXY("ADANA", 24);
            // bu iki chart ornek amaçlı projeyle alakası yok
            //chart1.Series["Akdeniz"].Points.AddXY("ISPARTA", 24);     // x ısparta y 24 x soldan sağa aşağıdan yukarı



            baglanti3.Open();
            SqlCommand komut1 = new SqlCommand("select KATEGORIAD,COUNT(*) FROM TBLKATEGORI INNER JOIN TBLURUNLER ON TBLKATEGORI.KATEGORIID=TBLURUNLER.KATEGORI GROUP BY KATEGORIAD",baglanti3);
            SqlDataReader dr = komut1.ExecuteReader();// bu veri okutuyucusuyla bunu okut

            while(dr.Read())// okuma işlemi devam ettiği sürece
            {
                chart1.Series["Kategoriler"].Points.AddXY(dr[0],dr[1]);
            }
            baglanti3.Close();



            // GRAFİĞE VERİ ÇEKME 2

            baglanti3.Open();
            SqlCommand komut2 = new SqlCommand("select MUSTERISEHIR,COUNT(*) FROM TBLMUSTERI GROUP BY MUSTERISEHIR", baglanti3);
            SqlDataReader dr1 = komut2.ExecuteReader();// bu veri okutuyucusuyla bunu okut

            while (dr1.Read())// okuma işlemi devam ettiği sürece
            {
                chart2.Series["Şehirler"].Points.AddXY(dr1[0], dr1[1]);
            }
            baglanti3.Close();



        }
    }
}
