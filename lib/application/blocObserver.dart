import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver{
  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
 // log(transition.toString()+"   observer-ontransition----------");
    super.onTransition(bloc, transition);
  }
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
   print(error.toString()+" observer on error ----------------");
    super.onError(bloc, error, stackTrace);
  }
}