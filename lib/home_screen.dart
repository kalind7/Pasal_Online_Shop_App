import 'package:flutter/material.dart';
import 'package:so_ezze_pasal_app/constant/themes/theme_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ThemeService().changeThemeData();
              print('pressed');
            },
            child: Text('Switch theme')),
      ),
    );
  }
}
