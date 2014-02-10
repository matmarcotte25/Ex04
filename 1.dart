String Fibonacci (bool beginToZero, int max)
{
  var a = beginToZero ? 0 : 1 ;
  var b = 1 ;
  var valeur = a.toString() + ", ";
  for(var i = 1 ; i < max ; i++)
  {
    valeur += b.toString() + (i < (max - 1) ? ", " : "") ;
    var x = a + b ;
    a = b ;
    b = x ;
  }
  return valeur ;
}

void main()
{
  print (Fibonacci(true, 11)) ;
}  