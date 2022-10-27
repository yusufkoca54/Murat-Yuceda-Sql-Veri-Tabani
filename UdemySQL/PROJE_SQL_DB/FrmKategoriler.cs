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
    public partial class FrmKategoriler : Form
    {
        public FrmKategoriler()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-18K9AFS;Initial Catalog=SatisVeriTabani;Integrated Security=True");
       

        private void btnlistele_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From TBLKATEGORI",baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);// veri bağlayıcı
            DataTable dt = new DataTable();// veri tablosu oluşturma
            da.Fill(dt);// data adaptarı bu veri tablosuyla doldur 
            dataGridView1.DataSource = dt;//data griewden veri kaynağınada dt den gelen değeri ekle
        }

        private void btnkaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("insert into TBLKATEGORI (KATEGORIAD) values (@p1)",baglanti);
            komut2.Parameters.AddWithValue("@p1", txtkategoriAD.Text);
            komut2.ExecuteNonQuery();// sorguyu çalıştır sorgudaki değişiklikleri veri tabanına kaydet
            baglanti.Close();
            MessageBox.Show("Kategori Kaydetme İşlemi Başarıyla Tamamlandı");
           
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtkategoriID.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtkategoriAD.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("Delete From TBLKATEGORI where KATEGORIID=@p1",baglanti);
            komut3.Parameters.AddWithValue("@p1", txtkategoriID.Text);
            komut3.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Kategori Silme İşlemi Gerçekleşti");
          
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut4 = new SqlCommand("Update TBLKATEGORI set KATEGORIAD=@p1 where KATEGORIID=@p2", baglanti);
            komut4.Parameters.AddWithValue("@p1", txtkategoriAD.Text);
            komut4.Parameters.AddWithValue("@p2", txtkategoriID.Text);
            komut4.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Kategori Güncelleme İşlemi Gerçekleşti");
            
            
            
            
        }

        
    }
}
//Data Source = DESKTOP - 0F8BF03\SQLEXPRESS; Initial Catalog = SatisVeriTabani; Integrated Security = True
