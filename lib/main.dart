import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tllevo/presentation/controllers/shrinkdrawer_controller.dart';

import 'package:tllevo/presentation/pages/home_page.dart';

void main() {
  runApp(TllevoApp());
}

class TllevoApp extends StatelessWidget {
  const TllevoApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ShrinkDrawerController>(create: (_) => ShrinkDrawerController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage()
      ),
    );
  }
}
