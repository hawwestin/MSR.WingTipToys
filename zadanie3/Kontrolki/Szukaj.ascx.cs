using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zadanie3.Kontrolki
{
    public partial class Szukaj : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void szukajButton_Click(object sender, EventArgs e)
        {
            Response.Redirect($"~/WynikiWyszukiwania.aspx?Nazwa={nazwaTextBox.Text}");
        }
    }
}