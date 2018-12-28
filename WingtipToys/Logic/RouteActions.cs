using System.Web.Routing;

namespace WingtipToys.Logic
{
    internal class RouteActions
    {
        internal static void RegisterCustomRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "ProductsByCategoryRoute",
                "Category/{categoryName}",
                "~/ProductList.aspx");
            routes.MapPageRoute(
                "ProductByNameRoute",
                "Product/{ProductName}",
                "~/ProductDetails.aspx");
        }
    }
}