import 'package:ecommerce/presentation/ui/screens/login/passwordchanges.dart';
import 'package:flutter/material.dart';

class PleaseWait extends StatefulWidget {
  const PleaseWait({super.key});

  @override
  State<PleaseWait> createState() => _PleaseWaitState();
}

class _PleaseWaitState extends State<PleaseWait> {
  void initState() {
    super.initState();
    navigate();
  }

  Future<void> navigate() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => PasswordChanges(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/png/Loader.png'),
          SizedBox(height: 8),
          Text("Please Wait"),
        ],
      ),
    );
  }
}
