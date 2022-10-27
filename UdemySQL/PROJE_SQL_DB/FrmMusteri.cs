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
    public partial class FrmMusteri : Form
    {
        public FrmMusteri()
        {
            InitializeComponent();
        }
        SqlConnection baglanti2 = new SqlConnection("Data Source=DESKTOP-18K9AFS;Initial Catalog=SatisVeriTabani;Integrated Security=True");

        void Listele()
        {
            SqlCommand komut = new SqlCommand("Select * From TBLMUSTERI", baglanti2);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }
        

        private void FrmMusteri_Load(object sender, EventArgs e)
        {
            Listele();

            baglanti2.Open();
            SqlCommand komut1 = new SqlCommand("Select * from TBLSEHIR",baglanti2);
            SqlDataReader dr = komut1.ExecuteReader();

            while (dr.Read()) // okuma işlemi devam ettiği müddetçe
            {
                cmbmusteriSEHIR.Items.Add(dr["SEHIRAD"]); //okuyucudan gelen şehirad kısmındaki alanı combobox içerisine ekle
                cmbmusteriSEHIR.Text = cmbmusteriSEHIR.Text.ToUpper();
             
            }
            baglanti2.Close();



            //  komut1.ExecuteReader ==> komut 1 den gelen değerler sonucunda okuyucuyu çalıştır

            //SQL DATAREADER SQLDEKİ VERİLERİ OKU



        /*
             
       Bir ya da birden fazla satırların sonuç olarak döneceği sorgularda SqlCommand' ın ExecuteReader özelliği kullanılmaktadır. ExecuteReader

       geriye SqlDataReader tipinde veri döndürmektedir. SqlDataReader, sadece okunabilir olarak kullanılmaktadır. Satır satır okuma işlemi yapılmaktadır

        */


        }

        private void btnlistele_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtmusteriID.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtmusteriAD.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtmusteriSOYAD.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            cmbmusteriSEHIR.Text = dataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtmusteriBAKIYE.Text = dataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
            
        }

        private void btnkaydet_Click(object sender, EventArgs e)
        {
            baglanti2.Open();
            SqlCommand komut = new SqlCommand("insert into TBLMUSTERI (MUSTERIAD,MUSTERISOYAD,MUSTERISEHIR,MUSTERIBAKIYE) VALUES (@P1,@P2,@P3,@P4)", baglanti2);
            komut.Parameters.AddWithValue("@p1", txtmusteriAD.Text);
            komut.Parameters.AddWithValue("@p2", txtmusteriSOYAD.Text);
            komut.Parameters.AddWithValue("@p3", cmbmusteriSEHIR.Text=cmbmusteriSEHIR.Text.ToUpper());
            komut.Parameters.AddWithValue("@p4", decimal.Parse(txtmusteriBAKIYE.Text));
            komut.ExecuteNonQuery();
            baglanti2.Close();
            MessageBox.Show("Müşteri Sisteme Kaydedildi");
            Listele();
            
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti2.Open();
            SqlCommand komut1 = new SqlCommand("delete from TBLMUSTERI where MUSTERIID=@p1",baglanti2);
            komut1.Parameters.AddWithValue("@p1", txtmusteriID.Text);
            komut1.ExecuteNonQuery();
            baglanti2.Close();
            MessageBox.Show("Müşteri Silinme İşlemi Başarıyla Gerçekleştirilmiştir");
            Listele();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti2.Open();
            SqlCommand komut2 = new SqlCommand("update TBLMUSTERI SET MUSTERIAD=@p1,MUSTERISOYAD=@p2,MUSTERISEHIR=@p3,MUSTERIBAKIYE=@p4 WHERE MUSTERIID=@p5", baglanti2);
            komut2.Parameters.AddWithValue("@p1", txtmusteriAD.Text);
            komut2.Parameters.AddWithValue("@p2", txtmusteriSOYAD.Text);
            komut2.Parameters.AddWithValue("@p3", cmbmusteriSEHIR.Text = cmbmusteriSEHIR.Text.ToUpper());
            komut2.Parameters.AddWithValue("@p4", decimal.Parse(txtmusteriBAKIYE.Text));
            komut2.Parameters.AddWithValue("@p5", txtmusteriID.Text);
            komut2.ExecuteNonQuery();
            baglanti2.Close();
            MessageBox.Show("Müşteri Güncelleme İşlemi Başarıyla Gerçekleştirilmiştir");
            Listele();
        }

        private void btnAra_Click(object sender, EventArgs e)
        {

            SqlCommand komut3 = new SqlCommand("select * from TBLMUSTERI WHERE MUSTERIAD LIKE '"+txtmusteriAD.Text+"%'", baglanti2); // Paremetresiz kullanım
            SqlDataAdapter da = new SqlDataAdapter(komut3);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            
        }
    }
}
