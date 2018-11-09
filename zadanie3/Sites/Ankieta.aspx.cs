using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zadanie3
{
    public partial class Ankieta : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mainMultiView.SetActiveView(ankietaGlowna);
                if (Request.QueryString["view"] == "nowy")
                {
                    ankietaMultiView.SetActiveView(nowyView);
                }
                else if (Request.QueryString["view"] == "wycieczki")
                {
                    ankietaMultiView.SetActiveView(wycieczkiView);
                }
                else
                {
                    Response.Redirect("~/");
                }
            }
        }

        protected void WyswietlButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                mainMultiView.SetActiveView(podsumowanie);
            }
        }
    }
}