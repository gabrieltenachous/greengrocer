import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
class UtilsServices {
  
  //R$ valor
  String priceToCurrency(double price){
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return numberFormat.format(price); 
  }

  String formaDateTime(DateTime dateTime){
    initializeDateFormatting(); 
    DateFormat dateFormat = DateFormat.yMEd('pt_BR').add_Hm();
    return dateFormat.format(dateTime);
  }
}