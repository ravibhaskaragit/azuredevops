using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Sitefinity.Security.Claims;

namespace SitefinityWebApp
{
    public partial class Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = HttpContext.Current;

            //This page is to allow users to download a file from an anon state more effectivly
            if(!ClaimsManager.GetCurrentIdentity().IsAuthenticated){
                if(context.Request.QueryString["file"] != null){
                    var file = context.Request.QueryString["file"];
                    downloadNow.NavigateUrl = file;
                }else{
                    context.Response.Redirect("~/");
                }
            }else{
                context.Response.Redirect("~/");
            }

        }
    }
}