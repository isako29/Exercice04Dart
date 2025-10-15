class Tache {
  String description;
  static int nombreTotal =0;

 
 Tache(this.description){
    nombreTotal ++;
  }
}

void main(){
  Tache('faire les courses');
  Tache('Appeler le medecin');
  Tache('Preparer la reunion');

  print('Nombre total de tache : ${Tache.nombreTotal}');
}