import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/src/features/authentication/controllers/splash_screen_controllers.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotateAnim;
  late Animation<double> _logoAnim;
  late Animation<double> _textAnim;
  bool _isLocked = true;

  final splashController = Get.put(SplashScreenController());

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _rotateAnim = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isLocked = false;
        });
      }
    });

    // Logo and text animations moving up
    _logoAnim = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _textAnim = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 178, 182, 194), Color(0xFF24272C)],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _logoAnim,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, 300 * _logoAnim.value), // Moves up from below
                        child: Opacity(
                          opacity: 1 - _logoAnim.value,
                          child: SizedBox(
                            width: 600,
                            height: 450,
                            child: Image.asset(tSplashLogo),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  AnimatedBuilder(
                    animation: _textAnim,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, 150 * _textAnim.value), // Moves up from below
                        child: Opacity(
                          opacity: 1 - _textAnim.value,
                          child: Column(
                            children: [
                              Text(
                                "¡Locker Sport!",
                                style: GoogleFonts.roboto(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Guarda tu pasión,",
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Accede con inteligencia.",
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                curve: Curves.easeInOut,
                left: (MediaQuery.of(context).size.width - 100) / 2,
                top: splashController.animate.value ? 100 : MediaQuery.of(context).size.height,
                child: RotationTransition(
                  turns: _rotateAnim,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      _isLocked ? tSplashLockerC : tSplashLockerO,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
