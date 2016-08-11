using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MsdnWebCast_MultiCulture
{
    public partial class _1_AspNetGlobalization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblCurrentTime.Text = Resources.GlobalResource.TodayIs + DateTime.Now.ToString("D");
        }

        protected override void InitializeCulture()
        {
            //this.UICulture = "zh-cn";
            //this.Culture = "zh-cn";
            //if (this.Request.UserLanguages.Length > 0)
            //{
            //    this.UICulture = this.Culture = this.Request.UserLanguages[0];
            //}

            base.InitializeCulture();
        }
    }
}