using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WingtipToys
{
    public partial class HealthCheckException : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            throw new InvalidOperationException("An InvalidOperationException " +
            "occurred in the Page_Load handler on the HealthCheckException.aspx page.");
        }

        private void Page_Error(object sender, EventArgs e)
        {
            // Get last error from the server.
            Exception exception = Server.GetLastError();

            // Handle specific exception.
            if (exception is InvalidOperationException)
            {
                // Pass the error on to the error page.
                Server.Transfer("ErrorPage.aspx?handler=Page_Error%20-%20HealthCheckException.aspx",
                    true);
            }
        }
    }
}