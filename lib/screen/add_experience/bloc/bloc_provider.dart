import 'package:flutter/material.dart';

import 'add_experience_bloc.dart';

class AddExperienceBlocProvider extends InheritedWidget {
  final AddExperienceBloc bloc;

  const AddExperienceBlocProvider({

    required this.bloc,
    required Widget child,
  }) : super( child: child);

  @override
  bool updateShouldNotify(_) => true;

  static AddExperienceBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AddExperienceBlocProvider>() as AddExperienceBlocProvider).bloc;
  }
}
