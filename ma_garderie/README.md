# Ma Garderie 🧸

Application mobile Flutter permettant de consulter les menus d'une garderie d'enfants.

## 📖 Présentation

**Ma Garderie** est une application de démonstration développée avec Flutter. Elle offre :

- Un **écran de démarrage (Splash Screen)** avec image d'accueil, nom de l'application et message de bienvenue, puis transition automatique après 3 secondes.
- Une **page principale** avec :
  - Une `AppBar` affichant « Ma Garderie » et deux boutons : 🔍 Recherche et 🔔 Notifications.
  - Un **Drawer** avec trois entrées : Accueil, Menus, À propos.
  - Un **Floating Action Button** ➕.
  - Une section **« Menus du jour »** présentée sous forme de `ListView` de cartes (icône, titre, description).
- Des **interactions** : Snackbars à chaque clic (recherche, notifications, ajout, sélection d'un menu, navigation via le Drawer).

## 🛠️ Technologies utilisées

- **Flutter** (SDK Dart) — framework mobile multiplateforme
- **Dart** — langage de programmation
- **Material Design 3** — composants UI (`AppBar`, `Drawer`, `ListView`, `Card`, `FloatingActionButton`, `SnackBar`)
- **Git / GitHub** — gestion de versions et collaboration

## 📁 Structure du projet

```
garderie-mobile-g2/
├── ma_garderie/
│   ├── assets/
│   │   └── images/
│   │       └── garderie.png
│   ├── lib/
│   │   ├── main.dart            # Point d'entrée, MaterialApp
│   │   ├── splash_screen.dart   # Écran de démarrage
│   │   ├── home_page.dart       # Page principale (AppBar, Drawer, ListView, FAB)
│   │   └── menu_item.dart       # Modèle MenuItem + liste statique des menus
│   └── pubspec.yaml
├── docs/
│   └── screenshots/
│       ├── splash.png
│       ├── home_list.png
│       ├── drawer.png
│       └── snackbar.png
└── README.md
```

## 🚀 Installation et exécution

### Prérequis

- **Flutter SDK** ≥ 3.x — [Guide d'installation](https://docs.flutter.dev/get-started/install)
- **Android Studio** ou **VS Code** avec l'extension Flutter
- Un **émulateur Android/iOS** ou un **appareil physique** connecté

Vérifiez votre environnement :

```bash
flutter doctor
```

### Étapes

```bash
# 1. Cloner le dépôt
git clone https://github.com/Farah996215/garderie-mobile-g2.git
cd garderie-mobile-g2/ma_garderie

# 2. Installer les dépendances
flutter pub get

# 3. Vérifier les appareils disponibles
flutter devices

# 4. Lancer l'application
flutter run
```

Pour lancer sur un appareil spécifique :

```bash
flutter run -d <device_id>
```

## 📸 Captures d'écran

| Splash Screen | Page principale |
|:---:|:---:|
| ![Splash Screen](docs/screenshots/splash.png) | ![Page principale](docs/screenshots/home_list.png) |

| Drawer ouvert | Interaction (Snackbar) |
|:---:|:---:|
| ![Drawer](docs/screenshots/drawer.png) | ![Snackbar](docs/screenshots/snackbar.png) |

## 🎯 Fonctionnalités

- ✅ Splash Screen avec transition automatique (3 s)
- ✅ Liste des menus du jour avec icônes, titres et descriptions
- ✅ AppBar avec boutons Recherche et Notifications
- ✅ Drawer avec 3 entrées sélectionnables
- ✅ Floating Action Button
- ✅ Snackbars pour toutes les interactions

## 🌿 Branches Git

Le projet a été développé de manière incrémentale sur plusieurs branches, fusionnées dans `main` :

| Branche | Contenu |
|---|---|
| `feature/init-project` | Initialisation du projet Flutter |
| `feature/splash-screen` | Écran de démarrage |
| `feature/home-page` | Page principale (AppBar, Drawer, FAB) |
| `feature/list-view` | Liste des menus du jour |
| `feature/interactions` | Interactions (Snackbars, Drawer sélectionnable) |
| `docs/readme` | Documentation (ce fichier) |

## 👩‍💻 Auteur

**Farah** — [@Farah996215](https://github.com/Farah996215)

## 📄 Licence

Projet pédagogique — libre d'utilisation à des fins d'apprentissage.