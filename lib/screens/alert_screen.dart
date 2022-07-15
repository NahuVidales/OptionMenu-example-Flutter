import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Jhonny la gente estwa muy loca'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 150,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            )
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          elevation: 5,
          title: const Text('Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Jhonny la gente estwa muy loca'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 150,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AlertScreen',
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text('Scirocco'),
            onPressed: () => displayDialogIOS(context),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
