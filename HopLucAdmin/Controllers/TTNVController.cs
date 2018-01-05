using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HopLucAdmin.Models;

namespace HopLucAdmin.Controllers
{
    public class TTNVController : Controller
    {
        // GET: TTNV
        public ActionResult Index()
        {
            using (HopLucShopEntities db = new HopLucShopEntities())
            {
                return View(db.NhanVienBH.ToList());
            }
                
        }

        // GET: TTNV/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: TTNV/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TTNV/Create
        [HttpPost]
        public ActionResult Create(NhanVienBH bH)
        {
            try
            {
                using (HopLucShopEntities db = new HopLucShopEntities())
                {
                    db.NhanVienBH.Add(bH);
                    db.SaveChanges();
                }
                    // TODO: Add insert logic here

                    return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TTNV/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: TTNV/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TTNV/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: TTNV/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
