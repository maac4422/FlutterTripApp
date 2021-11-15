import 'package:flutter/material.dart';
import 'app_trips.dart';
import 'app_trips_cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_trip/User/bloc/bloc_user.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Flutter Demo',
          home: AppTripsCupertino()
        ),
        bloc: UserBloc()
    );
  }
}
