import 'package:core_infra/screens/awaiting_approval.dart';
import 'package:core_infra/screens/dashboard.dart';
import 'package:core_infra/screens/status.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoreInfra());
}

class CoreInfra extends StatelessWidget {
  const CoreInfra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Core Infra',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/second': (context) => const Status(),
        '/third': (context) => const AwaitingApproval(),
      },
    );
  }
}



