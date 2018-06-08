using QL_DoAnNhanh.Entiti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QL_DoAnNhanh.DAL
{
    public class ucFoodDAL
    {

        SQLConnect conn = new SQLConnect();
        public DataTable ExecuteQuery()
        {
            return conn.ExecuteQuery("Xem_Food", null);
        }
        public int InsertData(ucFoodEntity F)
        {
            SqlParameter[] para =
            {
                new SqlParameter("ID_Food",F.ID_Food),
                new SqlParameter("Ten",F.Ten),
                new SqlParameter("Gia",F.Gia),
                new SqlParameter ("ID_NhomMonAn",F.ID_NhomMonAn)
            };
            return conn.ExcuteSQL("Them_Food", para);
        }
        public int UpdateData(ucFoodEntity F)
        {
            SqlParameter[] para =
            {
              new SqlParameter("ID_Food",F.ID_Food),
                new SqlParameter("Ten",F.Ten),
                new SqlParameter("Gia",F.Gia),
                new SqlParameter ("ID_NhomMonAn",F.ID_NhomMonAn)
        };
            return conn.ExcuteSQL("Sua_Food", para);
        }
        public int DeleteData(string ID)
        {
            SqlParameter[] para =
            {
                new SqlParameter("ID_Food",ID)
        };
            return conn.ExcuteSQL("Xoa_Food", para);
        }
        public string TangMaT()
        {
            return conn.TangMaT("Select * From Food", "F");
        }
        public DataTable TimKiemKH(string strTimKiem)
        {
            return conn.ExecuteQuery(strTimKiem);
        }
    }
}
