import 'provider/provider_cuaca.dart' show ProviderCuaca;
import 'package:uass/screen/screen_cuaca.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uass/provider/provider_cuaca.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderCuaca>(
          create: (context) => ProviderCuaca(),
        ),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
