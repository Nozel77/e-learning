import 'dart:async';

class BannerController {
  late Timer _timer;
  late Function() _onTimerTick;

  

  BannerController({required Function() onTimerTick}) {
    _onTimerTick = onTimerTick;
    _timer = Timer.periodic(Duration(seconds: 3), _handleTimerTick);
  }

  void _handleTimerTick(Timer timer) {
    _onTimerTick();
  }

  void dispose() {
    _timer.cancel();
  }
  
}
