using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Medicare.Areas.Dashboard.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Dashboard/Default
        public ActionResult Index()
        {
            return View();
        }
    }
}