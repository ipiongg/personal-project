import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:personal_portfolio/app/app_widget.dart';
import 'app/app_module.dart';

void main() => runApp(ModularApp(module: AppModule(), child: AppWidget()));
