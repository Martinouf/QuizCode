import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {  },
    child: const MyApp(),
  ));
}
