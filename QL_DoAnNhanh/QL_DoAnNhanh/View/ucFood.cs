using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QL_DoAnNhanh.BUS;
using QL_DoAnNhanh.Entiti;

namespace QL_DoAnNhanh.View
{
    public partial class ucFood : UserControl
    {
        ucFoodEntity F = new ucFoodEntity();
        ucFoodBUS Bus = new ucFoodBUS();
        private int fluu = 1;
        //private object cboTenCS;
        public ucFood()
        {
            InitializeComponent();
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {

        }

        private void ucFood_Load(object sender, EventArgs e)
        {
            HienThi();
            DisEnl(false);
        }

        private void dgvFood_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            dgvFood.Rows[e.RowIndex].Cells["STT"].Value = e.RowIndex + 1;
        }
        private void DisEnl(bool e)
        {
            btnThem.Enabled = !e;
            btnXoa.Enabled = !e;
            btnSua.Enabled = !e;
            btnLuu.Enabled = e;
            txtID_food.Enabled = e;
            txtTen.Enabled = e;
            txtGia.Enabled = e;
            cboNhomMon.Enabled = e;
         
        }
        public void Clear()
        {
            txtID_food.Text = "";
            txtTen.Text = "";
            txtGia.Text = "";
            cboNhomMon.Text = ""; 
        }
        private void HienThi()
        {
            dgvFood.DataSource = Bus.GetData();
        }

        private void ucFood_Click(object sender, EventArgs e)
        {

        }

        private void dgvFood_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (fluu == 0)
            {
                txtTen.Text = Convert.ToString(dgvFood.CurrentRow.Cells["Ten"].Value);
                txtGia.Text = Convert.ToString(dgvFood.CurrentRow.Cells["Gia"].Value);
                cboNhomMon.Text = Convert.ToString(dgvFood.CurrentRow.Cells["ID_NhomMonAn"].Value);
              
            }
            else
            {
                txtID_food.Text = Convert.ToString(dgvFood.CurrentRow.Cells["ID_Food"].Value);
                txtTen.Text = Convert.ToString(dgvFood.CurrentRow.Cells["Ten"].Value);
                txtGia.Text = Convert.ToString(dgvFood.CurrentRow.Cells["Gia"].Value);
                cboNhomMon.Text = Convert.ToString(dgvFood.CurrentRow.Cells["ID_NhomMonAn"].Value);
                
            }

        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            fluu = 0;
            txtID_food.Text = Bus.TangMaT();
            DisEnl(true);
            txtID_food.Enabled = false;
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            fluu = 1;
            DisEnl(true);
            txtID_food.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtID_food.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mã món ăn!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            if (txtTen.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập tên món ăn!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            if (txtGia.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập giá tiền!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            if (cboNhomMon.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mã món ăn!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            

            int _soluong;
            //int.TryParse(txtGia.Text, out _Gia);
            F.ID_Food = txtID_food.Text;
            F.Ten = txtTen.Text;
            F.Gia = txtGia.Text;
            F.ID_NhomMonAn = cboNhomMon.Text;
           
            if (txtID_food.Text != "" && txtTen.Text != "" && txtGia.Text != "" && cboNhomMon.Text !="" && fluu == 0)
            {
                try
                {
                    Bus.InsertData(F);
                    MessageBox.Show("Thêm thành công!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    HienThi();
                    ucFood_Load(sender, e);
                    Clear();
                    DisEnl(false);
                    fluu = 1;
                }
                catch
                {

                }
            }
            else if (txtID_food.Text != "" && txtTen.Text != "" && txtGia.Text != "" && cboNhomMon.Text != ""  && fluu != 0)
            {
                try
                {
                    Bus.UpdateData(F);
                    MessageBox.Show("Sửa Thành Công ! ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    HienThi();
                    ucFood_Load(sender, e);
                    Clear();
                    DisEnl(false);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi" + ex.Message);
                }
            }

        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                try
                {
                    Bus.DeleteData(txtID_food.Text);
                    MessageBox.Show("Xóa thành công!");
                    Clear();
                    DisEnl(false);
                    HienThi();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi" + ex.Message);
                }
            }
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            HienThi();
        }

        private void btnTK_Click(object sender, EventArgs e)
        {
            if (txtTimKiem.Text == "Tên món ăn")
            {
                dgvFood.DataSource = Bus.TimKiemFood("select * from Food where Ten like N'%" + txtTimKiem.Text.Trim() + "%'");
            }
           
           
                                                      
        }

        private void Thoát_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Bạn chắc chắn muốn hủy thao tác đang làm?", "Xác nhận hủy", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                this.Close();
            }
            else
                HienThi();
        }
    }
}
