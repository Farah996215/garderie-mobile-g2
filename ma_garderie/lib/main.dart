// Importe la bibliothèque Material de Flutter.
// Elle contient tous les widgets prédéfinis (Text, Container, Scaffold, etc.)
// et les outils de design Material (couleurs, thèmes, icônes...).
import 'package:flutter/material.dart';

// Importe le fichier 'splash_screen.dart' qui se trouve dans le même dossier.
// Cela permet d'utiliser la classe SplashScreen définie dans ce fichier.
import 'splash_screen.dart';

// Fonction main : c'est le point d'entrée de toute application Dart/Flutter.
// L'exécution du programme commence ici.
void main() {
  // runApp() lance l'application Flutter en affichant le widget passé en paramètre.
  // Ici, on lui donne une instance de MyApp (le widget racine de l'app).
  // 'const' indique que MyApp est créé comme une constante (optimisation : il ne change jamais).
  runApp(const MyApp());
}

// Déclaration de la classe MyApp qui hérite de StatelessWidget.
// Un StatelessWidget est un widget qui ne change pas d'état (immuable) après sa création.
class MyApp extends StatelessWidget {
  
  // Constructeur de MyApp.
  // 'const' : le constructeur peut être utilisé dans un contexte constant.
  // '{super.key}' : reçoit une clé optionnelle 'key' et la transmet au constructeur parent
  // (StatelessWidget). La clé sert à identifier le widget dans l'arbre des widgets.
  const MyApp({super.key});

  // La méthode build() décrit l'interface utilisateur du widget.
  // Elle est appelée automatiquement par Flutter quand le widget doit être affiché.
  // 'BuildContext context' : donne des informations sur la position du widget dans l'arbre.
  // '@override' : indique qu'on redéfinit une méthode héritée de la classe parente.
  @override
  Widget build(BuildContext context) {
    // Retourne un MaterialApp : le widget racine qui configure l'application Material.
    return MaterialApp(
      
      // Le titre de l'application (utilisé par le système, ex: dans le gestionnaire de tâches).
      title: 'Ma Garderie',
      
      // Cache la bannière rouge "DEBUG" affichée en haut à droite en mode debug.
      debugShowCheckedModeBanner: false,
      
      // Configuration du thème visuel de l'application.
      theme: ThemeData(
        // Génère une palette de couleurs Material 3 à partir d'une couleur de base
        // (ici 'deepOrange', un orange foncé). Toutes les nuances dérivent de cette couleur.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        
        // Active le design Material 3 (le design le plus récent de Google).
        useMaterial3: true,
      ),
      
      // Définit le premier écran affiché au lancement de l'application.
      // Ici, on affiche le SplashScreen (écran de démarrage/chargement).
      home: const SplashScreen(),
    );
  }
}