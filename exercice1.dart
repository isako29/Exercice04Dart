class Couleur {
  final int r, g, b;
  Couleur(this.r, this.g, this.b);
  Couleur.rouge() : r = 255, g = 0, b = 0;
  Couleur.vert() : g = 255, r = 0, b = 0;
  Couleur.bleu() : b = 255, r = 0, g = 0;

  void AfficherCouleur() {
    print("R : $r, v :$g, b :$b");
  }
}

void main() {
  var couleur = Couleur(10, 20, 30);
  couleur.AfficherCouleur();

  var couleur2 = Couleur(50, 55, 60);
  couleur2.AfficherCouleur();

  var couleur3 = Couleur(100, 200, 205);
  couleur3.AfficherCouleur();
}
