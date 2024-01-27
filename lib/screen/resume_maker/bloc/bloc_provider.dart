import 'package:flutter/material.dart';

import 'resume_maker_bloc.dart';

class ResumeMakerBlocProvider extends InheritedWidget {
  final ResumeMakerBloc bloc;

  const ResumeMakerBlocProvider({
    required this.bloc,
    required Widget child,
  }) : super( child: child);

  @override
  bool updateShouldNotify(_) => true;

  static ResumeMakerBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ResumeMakerBlocProvider>() as ResumeMakerBlocProvider).bloc;
  }
}
