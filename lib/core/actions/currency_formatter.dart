import 'package:currency_formatter/currency_formatter.dart';
import '../utils/app_config.dart';

class AppFormatter {
  static formatCurrency(amount, {String symbol = ''}) {
    return CurrencyFormatter.format(
        amount,
        CurrencyFormat(
          symbol: symbol.isNotEmpty ? symbol : defaultCurrency,
          symbolSide: SymbolSide.right,
          thousandSeparator: '.',
          decimalSeparator: ',',
        ));
  }

  static formatCurrencyWithoutSymbol(amount) {
    return CurrencyFormatter.format(
        amount,
        const CurrencyFormat(
          symbol: '',
          symbolSide: SymbolSide.right,
          thousandSeparator: '.',
          decimalSeparator: ',',
        ));
  }
}
