using System.Globalization;

namespace WingtipToys.Logic
{
    public static class PLNNumberFormat
    {
        public static NumberFormatInfo GetPLNNumberFormat => new NumberFormatInfo
        {
            NegativeSign = "-",
            CurrencyDecimalSeparator = ","
        };
    }
}