﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdventureBikeShop.Kontrolki
{
    public partial class Szukaj : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void szukajButton_Click(object sender, EventArgs e)
        {
            string url = $"~/sites/WynikiWyszukiwania.aspx?Nazwa={nazwaTextBox.Text}";
            Response.Redirect(url);
        }
    }
}