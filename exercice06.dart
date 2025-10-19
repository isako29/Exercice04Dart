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

// 