import 'package:flutter/material.dart';
import 'menu_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Élément actuellement sélectionné dans le Drawer
  int _drawerIndex = 0;

  // Libellés des entrées du Drawer (pour l'affichage / le feedback)
  final List<String> _drawerLabels = const ['Accueil', 'Menus', 'À propos'];

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 2),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- AppBar avec titre + 2 IconButtons ---
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          // Recherche
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Recherche',
            onPressed: () => _showMessage('Rechercher un menu'),
          ),
          // Notifications
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () => _showMessage('Aucune notification'),
          ),
        ],
      ),

      // --- Drawer avec 3 éléments sélectionnables ---
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepOrange),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.child_care, color: Colors.white, size: 48),
                  SizedBox(height: 8),
                  Text(
                    'Ma Garderie',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(0, Icons.home, 'Accueil'),
            _buildDrawerItem(1, Icons.restaurant_menu, 'Menus'),
            _buildDrawerItem(2, Icons.info_outline, 'À propos'),
          ],
        ),
      ),

      // --- Contenu : titre de section + ListView ---
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              _drawerIndex == 0 ? 'Menus du jour' : _drawerLabels[_drawerIndex],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ),
          Expanded(
            child: _drawerIndex == 1
                // Onglet "Menus" : on cache la liste pour illustrer la navigation
                ? const Center(child: Text('Section Menus'))
                : _drawerIndex == 2
                    ? const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Ma Garderie — application de démonstration.',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        itemCount: menusDuJour.length,
                        itemBuilder: (context, index) {
                          final menu = menusDuJour[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            elevation: 2,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.deepOrange.shade50,
                                child: Text(
                                  menu.icone,
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                              title: Text(
                                menu.titre,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(menu.description),
                              // Clic sur un élément → Snackbar avec le titre
                              onTap: () => _showMessage(menu.titre),
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),

      // --- Floating Action Button ---
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showMessage('Ajouter un menu'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        tooltip: 'Ajouter',
        child: const Icon(Icons.add),
      ),
    );
  }

  // Construit un élément du Drawer avec surlignage de l'entrée sélectionnée
  Widget _buildDrawerItem(int index, IconData icon, String label) {
    final selected = _drawerIndex == index;
    return ListTile(
      leading: Icon(icon, color: selected ? Colors.deepOrange : null),
      title: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.deepOrange : null,
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: selected,
      selectedTileColor: Colors.deepOrange.shade50,
      onTap: () {
        setState(() => _drawerIndex = index);
        Navigator.pop(context); // ferme le Drawer
        _showMessage('Section : $label');
      },
    );
  }
}