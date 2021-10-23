import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHomePage extends StatefulWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  State<ScreenHomePage> createState() => _ScreenHomePageState();
}

class _ScreenHomePageState extends State<ScreenHomePage> {
  int _selectedDestination = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Home Page'),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: CircleAvatar(
                        child: Image.asset('assets/icons/halim_logo.png'),
                        radius: MediaQuery.of(context).size.height * 0.090,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Text(
                          'Header',
                          style: textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 2.0),
                    child: Text(
                      'e-mail@gmail.com',
                      style: GoogleFonts.abhayaLibre(fontSize: 12),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Item 1'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Item 2'),
                selected: _selectedDestination == 1,
                onTap: () => selectDestination(1),
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text('Item 3'),
                selected: _selectedDestination == 2,
                onTap: () => selectDestination(2),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Label'),
              ),
              ListTile(
                leading: const Icon(Icons.bookmark),
                title: const Text('Item A'),
                selected: _selectedDestination == 3,
                onTap: () => selectDestination(3),
              ),
            ],
          ),
        ),
      ),
      body: const Text('data'),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
      print('_selectedDestination::: ${_selectedDestination}');
    });
  }
}
