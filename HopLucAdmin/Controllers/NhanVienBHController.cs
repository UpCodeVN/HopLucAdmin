using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HopLucAdmin.Models;


namespace HopLucAdmin.Controllers
{
    public class NhanVienBHController : Controller
    {
        HopLucShopEntities db =new  HopLucShopEntities();
        // GET: NhanVienBH
        
        public ActionResult TTNhanVien()
        {
            var em = (from nv in db.NhanVienBH orderby nv.ID_NV  select nv);
            return View(em);
        }
        [HttpPost]
        public ActionResult TTNhanVien(FormCollection collection)
        {
            NhanVienBH bH = new NhanVienBH();
            string sTenNV = collection["txtTen"];
            string sDiaChi = collection["txtDiaChi"];
            decimal sSDT =decimal.Parse( collection["txtSDT"]);
            string sEmail = collection["txtEmail"];

            bH.Ten_NV = sTenNV;
            bH.Dia_Chi_NV = sDiaChi;
            bH.SDT_NV = sSDT;
            bH.Email_NV = sEmail;

            db.NhanVienBH.Add(bH);
            db.SaveChanges();
            return View();
        }
        
        
        

    }
}