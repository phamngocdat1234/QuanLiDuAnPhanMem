using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QL_DoAnNhanh.Entiti
{
    public class ucFoodEntity
    {
        public string ID_Food { get; set; }
        public string Ten { get; set; }
        public string Gia { get; set; }
        public string ID_NhomMonAn { get; set; }
      

        public ucFoodEntity()
        {
            ID_Food = "";
            Ten = "";
            Gia = "";
            ID_NhomMonAn = "";
          
        }
        public ucFoodEntity(string _ID_Food, string _Ten, string _Gia, string _ID_NhomMonAn)
        {
            ID_Food = _ID_Food;
            Ten = _Ten;
            Gia = _Gia;
            ID_NhomMonAn = _ID_NhomMonAn;
           
        }
    }
}
