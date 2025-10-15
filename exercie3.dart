class Compte {
  final String numeroCompte;
  double _solde = 0.0;

  Compte(this.numeroCompte, [this._solde = 0.0]);
String get solde => '${_solde.toStringAsFixed(2)} \$';

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}


  void main() {
  final compte = Compte('CORNEILEKOFO29');
  compte.depot(150.0);
  print('Solde actuel: ${compte.solde}');
}