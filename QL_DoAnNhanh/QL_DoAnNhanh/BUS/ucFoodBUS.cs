using QL_DoAnNhanh.DAL;
using QL_DoAnNhanh.Entiti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QL_DoAnNhanh.BUS
{
    public class ucFoodBUS
    {
        ucFoodDAL da = new ucFoodDAL();

        public DataTable ExecuteQuery()
        {
            return da.ExecuteQuery();
        }

        public string TangMaT()
        {
            return da.TangMaT();
        }
        public int InsertData(ucFoodEntity F)
        {
            return da.InsertData(F);
        }
        public int UpdateData(ucFoodEntity F)
        {
            return da.UpdateData(F);
        }
        public int DeleteData(String ID)
        {
            return da.DeleteData(ID);
        }
        public DataTable TimKiemF(string strTimKiem)
        {
            return da.TimKiemF(strTimKiem);
        }
    }

}
