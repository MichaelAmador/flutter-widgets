import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Find your favorite food',
      'Nisi aute ea dolore dolore laboris elit laboris excepteur proident ut veniam mollit voluptate.',
      'assets/img/1.png'),
  SlideInfo(
      'Fast delivery', 'Lorem aute culpa nisi ipsum.', 'assets/img/2.png'),
  SlideInfo(
      'Enjoy!',
      'Consequat minim ad laboris cillum occaecat esse id dolore reprehenderit sit quis nulla aliqua.',
      'assets/img/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.6)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: pageViewController,
          physics: const BouncingScrollPhysics(),
          children: [
            ...slides.map((slide) => _Slide(
                title: slide.title,
                caption: slide.caption,
                imageUrl: slide.imageUrl))
          ],
        ),
        Positioned(
            right: 10,
            top: 30,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Skip'),
            )),
        if (endReached)
          Positioned(
              right: 10,
              bottom: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(milliseconds: 600),
                child: FilledButton(
                    onPressed: () => context.pop(), child: const Text('Start')),
              ))
      ]),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
