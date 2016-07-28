using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
namespace MsdnWebCast_WebSerivce1
{
    public partial class _2_PageMethods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static DateTime GetCurrentDatetime()
        {
            return DateTime.UtcNow;
        }
    }
}