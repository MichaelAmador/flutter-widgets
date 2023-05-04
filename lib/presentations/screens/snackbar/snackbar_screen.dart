import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbackScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbackScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('hey message'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text(
                  'Sint consequat deserunt labore non reprehenderit ex proident veniam.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancel')),
                FilledButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Eiusmod consequat nostrud excepteur esse fugiat exercitation nisi in magna eiusmod irure qui id.')
                  ]);
                },
                child: const Text('Licenses')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Show dialog')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show snackback'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
