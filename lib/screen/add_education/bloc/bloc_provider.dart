import 'package:flutter/material.dart';

import 'add_education_bloc.dart';

class AddEducationBlocProvider extends InheritedWidget {
  final AddEducationBloc bloc;

  const AddEducationBlocProvider({
    required this.bloc,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(_) => true;

  static AddEducationBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AddEducationBlocProvider>() as AddEducationBlocProvider).bloc;
  }
}
