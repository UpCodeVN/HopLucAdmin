using HopLucAdmin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HopLucAdmin.Controllers
{
    public class AdminController : Controller
    {
        HopLucShopDataContext db = new HopLucShopDataContext();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Sanpham()
        {
            return View(db.SanPhams.ToList());
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {
            //Gan gia tri nguoi dung nhap cho cac bien
            var tendn = collection["username"];
            var matkhau = collection["password"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi1"] = "Phải nhập tên người dùng";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["Loi2"] = "Phải nhập mật khẩu";
            }
            else
            {
                //Gan gia tri cho doi tuong dc tai moi (admin)

                Admin ad = db.Admins.SingleOrDefault(n => n.UserAdmin == tendn && n.PassAdmin == matkhau);
                if (ad != null)
                {
                    Session["Taikhoanadmin"] = ad;
                    return RedirectToAction("Index", "Admin");
                }
                else
                    ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không hợp lệ";
            }
            return View();
        }

        [HttpGet]
        public ActionResult Themsanpham()
        {
            //dua du lieu vao drop list
            ViewBag.ID_Loai_SP = new SelectList(db.LoaiSPs.ToList().OrderBy(n => n.Ten_Loai_SP), "ID_Loai_SP", "LoaiSP" );
            return View();
        }
        [HttpPost]
        public ActionResult Themsanpham(SanPham sanpham)
        {
            
                if (ModelState.IsValid)
                {
                    //Luu ten file , bo sung thu vien System.IO;
                    
                 
                    db.SanPhams.InsertOnSubmit(sanpham);
                    db.SubmitChanges();
                }
                return RedirectToAction("Sanpham");
        }
        public ActionResult Chitietsanpham(int id)
        {
            SanPham sanpham = db.SanPhams.SingleOrDefault(n => n.ID_SP == id);
            ViewBag.ID_SP = sanpham.ID_SP;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sanpham);
        }
        public ActionResult Xoasanpham(int id)
        {
            SanPham sanpham = db.SanPhams.SingleOrDefault(n => n.ID_SP == id);
            ViewBag.ID_SP = sanpham.ID_SP;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sanpham);
        }
        [HttpPost,ActionName("Xoasanpham")]
        public ActionResult Xacnhanxoa(int id)
        {
            SanPham sanpham = db.SanPhams.SingleOrDefault(n => n.ID_SP == id);
            ViewBag.ID_SP = sanpham.ID_SP;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.SanPhams.DeleteOnSubmit(sanpham);
            db.SubmitChanges();
            return RedirectToAction("Sanpham");
        }
        [HttpGet]
        public ActionResult Suasanpham(int id)
        {
                SanPham sanpham = db.SanPhams.SingleOrDefault(n => n.ID_SP == id);
                if (sanpham == null)
                {
                    Response.StatusCode = 404;
                    return null;
                }
                return View(sanpham);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Suasanpham(SanPham sanpham,HttpPostedFileBase fileUpload)
        {
            if (ModelState.IsValid)
            {
                //Luu
                UpdateModel(sanpham);
                db.SubmitChanges();
            }
            return RedirectToAction("Sanpham");
        }
        /////////////////////////////////////////////////////// HOA DON //////////////////////////////////////////////
        /////////////////////////////////////////////////////// HOA DON //////////////////////////////////////////////
        /////////////////////////////////////////////////////// HOA DON //////////////////////////////////////////////

        public ActionResult Hoadon()
        {
            return View(db.HoaDons.ToList());
        }
    }
}