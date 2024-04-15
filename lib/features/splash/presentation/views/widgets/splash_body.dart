import 'package:bookly/core/utils/app_routers.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: const Center(
        child: SizedBox(
          width: 200,
          child: Image(image: AssetImage(AssetsData.logo)),
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 0.2), end: const Offset(0, 0)).animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: kTransitionDuration), () {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
      GoRouter.of(context).push(AppRouters.kHomeView);
    });
  }
}