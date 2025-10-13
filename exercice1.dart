class Couleur(){
  final int r, g, b;
  couleur(this.r , this.g, this.b);
  Couleur.rouge() : r = 255, g = 0, b = 0;
  Couleur.vert(): g = 255, r= 0, b =0;
  Couleur.bleu(): b = 255,r =0, g=0;

  void AfficherCouleur()
  print("R : $R, v :$g, b :$b");
  
}