using System.Globalization;

namespace WingtipToys.Logic
{
    public static class USNNumberFormat
    {
        public static NumberFormatInfo GetPLNNumberFormat => new NumberFormatInfo
        {
            NegativeSign = "-",
            CurrencyDecimalSeparator = ".",
            CurrencyGroupSeparator = ",",
            CurrencySymbol = "$"

        };
    }
}