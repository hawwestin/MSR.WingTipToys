using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AdventureBikeShop.Sites
{

    public partial class WynikiWyszukiwania : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var nazwa = Request.QueryString["Nazwa"];
            if (nazwa != null)
            {
                //AdventureBikeShop.AdventureWorksDataContext db = new AdventureBikeShop.AdventureWorksDataContext();

            }
        }
    }
}