class Livre {
  // Attributs
  String titre;
  String auteur;
  int _pages; // Attribut privé
  
  // Propriété statique pour compter le nombre de livres
  static int totalLivres = 0;
  
  // Constructeur
  Livre(this.titre, this.auteur, [int pages = 200]) : _pages = pages {
    totalLivres++; // Incrémente le compteur à chaque création
  }
  
  // Getter pour l'attribut privé _pages
  int get pages => _pages;
  
  // Méthode pour afficher les informations
  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Pages: $_pages");
  }
  
  // Méthode statique pour afficher le nombre total de livres
  static void afficherTotalLivres() {
    print("Nombre total de livres créés: $totalLivres");
  }
}

// Classe Roman qui hérite de Livre
class Roman extends Livre {
  String genre;
  
  // Constructeur appelant le constructeur parent avec super
  Roman(String titre, String auteur, this.genre, [int pages = 200]) 
      : super(titre, auteur, pages);
  
  // Redéfinition de la méthode afficherInfos pour inclure le genre
  @override
  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Genre: $genre, Pages: $pages");
  }
  
  // Méthode spécifique pour afficher seulement le genre
  void afficherGenre() {
    print("Genre: $genre");
  }
}

void main() {
  // Création de plusieurs objets Livre
  Livre livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");
  Livre livre2 = Livre("1984", "George Orwell", 328);
  Livre livre3 = Livre("L'Étranger", "Albert Camus", 185);
  
  // Affichage des informations des livres
  print("=== LIVRES ===");
  livre1.afficherInfos();
  livre2.afficherInfos();
  livre3.afficherInfos();
  
  // Test du getter pour l'attribut privé
  print("\nPages du livre 1: ${livre1.pages}");
  
  // Affichage du nombre total de livres avec la méthode statique
  Livre.afficherTotalLivres();
  
  // 