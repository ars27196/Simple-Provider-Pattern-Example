
import 'package:flutter/material.dart';

class CounterWithoutProvider extends StatefulWidget {
  CounterWithoutProvider({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CounterWithoutProviderState createState() => _CounterWithoutProviderState();
}

class _CounterWithoutProviderState extends State<CounterWithoutProvider> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            newWiget(),
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

  Widget newWiget(){
    //calculation color
  return Container();
  }
}
