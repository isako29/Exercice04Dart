// Classe mère Media
class Media {
  final String titre;
  
  // Constructeur simplifié (sugar syntax)
  Media(this.titre);
  
  // Méthode afficherType
  void afficherType() {
    print("Ceci est un média générique.");
  }
}

// Classe Livre qui hérite de Media
class Livre extends Media {
  final String auteur;
  
  // Constructeur appelant le constructeur de la classe mère avec super
  Livre(super.titre, this.auteur);
  
  // Redéfinition de la méthode afficherType
  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}

// Classe Film qui hérite de Media
class Film extends Media {
  final int dureeMinutes;
  
  // Constructeur appelant le constructeur de la classe mère avec super
  Film(super.titre, this.dureeMinutes);
  
  // Redéfinition de la méthode afficherType
  @override
  void afficherType() {
    print("Ceci est un Film : $titre (${dureeMinutes}min).");
  }
}

