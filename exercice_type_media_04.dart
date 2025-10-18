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

void main() {
  // Création d'une liste de type List<Media>
  List<Media> catalogue = [];
  
  // Ajout d'instances de Livre et Film à la liste
  catalogue.add(Livre("Le Petit Prince", "Antoine de Saint-Exupéry"));
  catalogue.add(Film("Inception", 148));
  catalogue.add(Livre("1984", "George Orwell"));
  catalogue.add(Film("The Matrix", 136));
  catalogue.add(Media("Média anonyme")); // Un média générique
  
  // Parcours de la liste et appel de afficherType() pour chaque élément
  for (var media in catalogue) {
    media.afficherType(); // Polymorphisme : chaque objet utilise sa version de la méthode
  }
}