import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/localization.dart';
import 'package:stacked/stacked.dart';

class CounterWithProvider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterWithProviderState();
  }
}

class CounterWithProviderState extends State<CounterWithProvider> {
 
  CounterWithProviderViewmodel _model = CounterWithProviderViewmodel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ViewModelBuilder<CounterWithProviderViewmodel>.reactive(
       viewModelBuilder: ()=> _model,
        builder: (context, model, child){
         return Scaffold(
           appBar: AppBar(
             title: Text('Counter With Provider'),
           ),
           body: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text(
                   Provider.of<CustomLocalization>(context).text,
                 ),
                 Text(
                   '${model.counter}',
                   style: Theme.of(context).textTheme.headline4,
                 ),
               ],
             ),
           ),
           floatingActionButton: FloatingActionButton(
             onPressed: () => model.incrementCounter(),
             tooltip: 'Increment',
             child: Icon(Icons.add),
           ), // This trailing comma makes auto-formatting nicer for build methods.
         );
        },
        onModelReady: (model){
         model.initialize();
        },
      ),
    );
  }
}

class CounterWithProviderViewmodel extends BaseViewModel {
  int counter;

  initialize() {
    counter = 0;
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
