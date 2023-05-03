import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        child: Wrap(
          spacing: 10,
          // crossAxisAlignment: WrapCrossAlignment.center,
          // alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated button')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.alarm),
                label: const Text('Elevated icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled button')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.kitchen),
              label: const Text('Filled buton icon'),
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outline button')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.fire_hydrant),
              label: const Text('Outline icon'),
            ),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.text_fields),
                label: const Text('Text icon')),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.radio),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.radio),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary)),
            ),
            const _CustomButton()
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hello world!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
