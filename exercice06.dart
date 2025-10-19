// Classe Connectable qui agit comme interface
class Connectable {
  void connecter(String utilisateur) {} // Méthode sans corps
  void deconnecter() {} // Méthode sans corps
}

// Classe ServeurAPI qui implémente l'interface Connectable
class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI: Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("ServeurAPI: Déconnexion réussie.");
  }
}

// Classe BaseDeDonnees qui implémente également Connectable
class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees: Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees: Déconnexion réussie.");
  }
}

void main() {
  // Création d'instances de ServeurAPI et BaseDeDonnees
  ServeurAPI serveur = ServeurAPI();
  BaseDeDonnees bdd = BaseDeDonnees();
  
  // Création d'une liste de type List<Connectable>
  List<Connectable> services = [];
  
  // Ajout des instances à la liste
  services.add(serveur);
  services.add(bdd);
  
  // Parcours de la liste et exécution des méthodes
  for (var service in services) {
    service.connecter("admin"); // Connexion avec l'utilisateur "admin"
    service.deconnecter();      // Déconnexion
    print("---"); // Séparateur pour plus de clarté
  }
}