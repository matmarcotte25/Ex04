Calculertemps(int years, int months, int days) {
  var y = new DateTime.now() ;
  var x = new DateTime(y.year, y.month, y.day, 12, 0, 0, 0) ; // donne le temps aujourd'hui, mais en imposant l'heure
  var fete = new DateTime(years, months, days, 12, 0, 0, 0) ; // donne le temps de ma fête, en allant chercher le temps avec int years, int months et int days
  var diff = x.difference(fete) ; // fait la différence
  var z = (diff.inDays) ;
  var nbyears = (z / 365.25).floor() ; // en moyenne, il y a 365,25 jours par année
  var nbmonths = (((z / 365.25) - (nbyears)) * 12).floor() ;
  var nbjours = (((((z / 365.25) - (nbyears)) * 12) - nbmonths) * 30.4375).floor() ; // en moyenne il y a 30,4375 jours par mois
  
  
  
  return 'Il y a $nbyears années, $nbmonths mois et $nbjours jours entre $y à 12h00 et la journée de mon anniversaire à 12h00.' ;
}
  

void main() {
  print (Calculertemps(1992, 7, 25) ) ;
}