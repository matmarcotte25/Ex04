import 'dart:math' as math ;

String interest(num rate, int years, num iniValue) {
  String result = "Intérêts :\n" ;
  var value = 0 ;
  var reporte = 0 ;
  for (years = 1 ; years <= 10 ; years++) {
    value = iniValue * math.pow((1 + rate), years) - iniValue - reporte ;
    reporte += value ;
    result += "Année : $years, Intérêt : " + value.toStringAsFixed(2) + "\$\n" ;
  }
  return result;
}

void main () {
  print(interest(0.033, 10, 1000)) ;
}