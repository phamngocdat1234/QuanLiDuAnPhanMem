using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Threading;

namespace QL_DoAnNhanh.View
{
    public partial class FormMain : Form
    {
        public FormMain()
        {
            Thread t = new Thread(new ThreadStart(Splash));
            t.Start();
            InitializeComponent();
            Thread.Sleep(1500);
            t.Abort();
            this.ShowDialog();
        }


         void Splash()
        {
            View.flash f = new View.flash();
            f.ShowDialog();
        }

        private void btnNhanVien_Click(object sender, EventArgs e)
        {
            ucNhanVien a = new ucNhanVien();
            a.Dock = DockStyle.Fill;
            groupBox1.Controls.Add(a);
            foreach (Control ctrl in groupBox1.Controls)
            {
                if (ctrl != a)
                    ctrl.Dispose();
            }
        }

        private void btnBanHang_Click(object sender, EventArgs e)
        {
            ucFood a = new ucFood();
            a.Dock = DockStyle.Fill;
            groupBox1.Controls.Add(a);
            foreach (Control ctrl in groupBox1.Controls)
            {
                if (ctrl != a)
                    ctrl.Dispose();
            }
        }


        private void btnXoaThongTin_Click(object sender, EventArgs e)
        {
            File.Delete("config");
            File.Delete("info.ini");
            MessageBox.Show("Đã xóa thông tin tài khoản!");
        }

        private void trangChủToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ucTrangChu a = new ucTrangChu();
            a.Dock = DockStyle.Fill;
            groupBox1.Controls.Add(a);
            foreach (Control ctrl in groupBox1.Controls)
            {
                if (ctrl != a)
                    ctrl.Dispose();
            }
        }
        private void FormMain_Load(object sender, EventArgs e)
        {

            ucTrangChu a = new ucTrangChu();
            a.Dock = DockStyle.Fill;
            groupBox1.Controls.Add(a);
            foreach (Control ctrl in groupBox1.Controls)
            {
                if (ctrl != a)
                    ctrl.Dispose();
            }
        }

        private void FormMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void btnBanHang_Click_1(object sender, EventArgs e)
        {
            ucBanHang a = new ucBanHang();
            a.Dock = DockStyle.Fill;
            groupBox1.Controls.Add(a);
            foreach (Control ctrl in groupBox1.Controls)
            {
                if (ctrl != a)
                    ctrl.Dispose();
            }
        }
    }
}
