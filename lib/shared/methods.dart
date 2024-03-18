import "package:intl/intl.dart";

String formatCurrency(double amount, {String simbol = 'Rp'}) =>
    NumberFormat.currency(locale: 'id', symbol: simbol, decimalDigits: 0)
        .format(amount);

String formatDate(DateTime date) => DateFormat('dd MMMM yyyy').format(date);