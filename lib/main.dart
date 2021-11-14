import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final String descriptionDummy = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean volutpat blandit lectus ac sollicitudin. Etiam nisl turpis, aliquet a ipsum vitae, rutrum posuere eros. Quisque sed ornare nibh. Fusce scelerisque augue at velit luctus imperdiet. Quisque at mi placerat, gravida augue in, accumsan lorem. Suspendisse feugiat mattis justo nec viverra. Vivamus quis augue eu eros placerat pulvinar eu ac justo.

  Nunc lectus mauris, egestas porta dui nec, sollicitudin ultricies eros. Integer ut pellentesque sem. Nam mollis tincidunt efficitur. Praesent interdum lacus efficitur ex aliquet molestie. Proin in bibendum tortor, quis volutpat orci. Etiam lectus diam, placerat non leo ac, faucibus aliquam ligula. Proin eu iaculis tellus. Pellentesque nec ultricies arcu, eu sagittis justo.

  Sed odio dolor, volutpat euismod nisl nec, interdum pellentesque tortor. Nulla vel ullamcorper erat. Nunc scelerisque metus sagittis elementum convallis. Sed vitae mi eu tellus euismod malesuada ac ut ligula. Quisque at lectus mollis, interdum quam nec, convallis turpis. Suspendisse potenti. Ut vitae maximus odio, eu accumsan est. Mauris sed ullamcorper urna, ut egestas ex. Maecenas ut viverra nisl. Duis pulvinar facilisis ante. Mauris ut semper massa. Donec vitae purus elit. Vivamus elementum mi eget venenatis elementum. Nullam quis venenatis diam.

  Nullam sodales quam justo, sit amet condimentum ante ultricies a. Donec justo elit, luctus et auctor eget, pellentesque id odio. Etiam enim risus, molestie a nisl volutpat, ultricies laoreet felis. Nulla fermentum odio at nulla cursus tincidunt. Sed vel orci ligula. Integer eget nisl augue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a hendrerit ipsum. Sed in metus aliquam, facilisis mauris eu, mollis metus. Sed ut auctor augue, sagittis sollicitudin enim. Integer est elit, vehicula eu aliquet eget, viverra a tortor. Vestibulum ultrices fringilla ipsum sit amet pretium. Proin mollis, est id suscipit viverra, tortor ipsum fermentum magna, venenatis vulputate diam dolor semper risus.''';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace("Duwili Ella", 5, descriptionDummy),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        ),
        //
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
