using System.Web;
using System.Web.Optimization;

namespace HopLucAdmin
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));
            bundles.Add(new StyleBundle("~/Assets/css").Include(
                      "~/Assets/css/bootstrap.css",
                      "~/Assets/css/custom.css",
                      "~/Assets/css/style.css",
                      "~/Assets/css/font-awesome.css"));
            bundles.Add(new ScriptBundle("~/Assets/js").Include(
                      "~/Assets/js/custom.js",
                      "~/Assets/js/bootstrap.min.js",
                      "~/Assets/js/jquery.metisMenu.js",
                      "~/Assets/js/morris.js",
                      "~/Assets/js/raphael-2.1.0.min.js"));
        }
    }
}
