using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QL_DoAnNhanh.View
{
    public partial class FrmLogin : Form
    {
        public FrmLogin()
        {
            InitializeComponent();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "admin" && txtPass.Text == "admin")
            {
                this.Hide();
                FormMain mf = new FormMain();
                
                mf.Show();
            }
            else
            {
                MessageBox.Show("Đăng nhập sai.Vui lòng đăng nhập lại", "Thông báo");
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void FrmLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát khỏi hệ thống?", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel = true;
            }
        }
        public void WaterMark()
        {
            txtID.ForeColor = Color.LightGray;
            txtID.Text = "Username";
            this.txtID.Leave += new System.EventHandler(this.txtID_Leave);
            this.txtPass.Enter += new System.EventHandler(this.txtID_Enter);

            txtPass.ForeColor = Color.LightGray;
            txtPass.Text = "Password";
            this.txtPass.Leave += new System.EventHandler(this.txtPass_Leave);
            this.txtPass.Enter += new System.EventHandler(this.txtPass_Enter);
        }

        private void txtPass_Leave(object sender, EventArgs e)
        {
            if (txtPass.Text == "")
            {
                txtPass.Text = "Password";
                txtPass.ForeColor = Color.Gray;
            }
        }

        private void txtID_Enter(object sender, EventArgs e)
        {
            if (txtID.Text != "")
            {
                txtID.Text = "";
                txtID.ForeColor = Color.Black;
            }
        }

        private void txtID_Leave(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                txtID.Text = "Username";
                txtID.ForeColor = Color.Gray;
            }
        }

        private void txtPass_Enter(object sender, EventArgs e)
        {
            if (txtPass.Text != "")
            {
                txtPass.Text = "";
                txtPass.ForeColor = Color.Black;
            }
        }
    }

       
}

