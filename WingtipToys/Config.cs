using System.Configuration;

namespace WingtipToys
{
    public static class Config
    {
        public static string GoogleClientId => ConfigurationManager.AppSettings["GoogleClientId"];
        public static string GoogleClientSecret => ConfigurationManager.AppSettings["GoogleClientSecret"];
    }
}