import 'dart:math' as math ;

num toRadians (num angle) {
  return (angle / 180 * math.PI) ; // pour passer de degrés à radians
}

String calculerPosition(num x, num y, num l, num angle) {
  x /= 2 ;
  y /= 2 ;
  angle = toRadians(angle) ;

  var posX = ((l * math.cos(angle)) + x).toStringAsFixed(2) ;
  var posY = ((l * math.sin(angle)) + y).toStringAsFixed(2) ;
  
  return 'La position en X et Y est ($posX , $posY).' ;
}

void main() {
  print (calculerPosition(980, 660, 120, 33)) ;
}