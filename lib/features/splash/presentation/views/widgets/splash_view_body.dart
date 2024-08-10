import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<StatefulWidget> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _logoScaleAnimation;
  late Animation<Offset> _textSlideAnimation;

  @override
  void initState() {
    super.initState();
    _initAnimation();
    _navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ScaleTransition(
          scale: _logoScaleAnimation,
          child: const Image(
            image: AssetImage(AppAssets.logo),
          ),
        ),
        const SizedBox(height: 5),
        SlideTransition(
          position: _textSlideAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void _initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _logoScaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
      ),
    );

    _textSlideAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero).animate(
      _animationController, // parent
    );

    _animationController.forward();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacement(Routes.homeView);
    });
  }
}
