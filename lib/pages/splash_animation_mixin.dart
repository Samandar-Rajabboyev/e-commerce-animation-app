mixin SplashAnimation {
  double a = 1;
  double b = 1;
  double c = 1;
  bool close = false;

  splash_timer(Function func) {
    Future.delayed(const Duration(milliseconds: 1300), () {
      a = 0;
      func();
    });
    Future.delayed(const Duration(milliseconds: 1800), () {
      b = 0;
      func();
    });
    Future.delayed(const Duration(milliseconds: 1900), () {
      c = 0;
      func();
    });
    Future.delayed(const Duration(milliseconds: 2300), () {
      close = true;
      func();
    });
  }
}
