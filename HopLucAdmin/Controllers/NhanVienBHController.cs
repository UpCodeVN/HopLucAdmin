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

    }
}