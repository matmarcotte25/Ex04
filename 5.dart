tableMultiplication(x, max) {
  var b = " La table de multiplication pour le nombre $x est la suivante : " ;
  for (var i = 0 ; i < max ; i++) {
    var a = x * i ;
    b += a.toString() + ' ' ;
  }
  return b ;
}



void main() {
  print (tableMultiplication(12, 20)) ;
}
   