using System.Configuration;

namespace WingtipToys
{
    public static class Config
    {
        public static string ClientId => ConfigurationManager.AppSettings["ClientId"];
        public static string ClientSecret => ConfigurationManager.AppSettings["ClientSecret"];
    }
}