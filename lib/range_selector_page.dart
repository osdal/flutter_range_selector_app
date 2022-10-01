import 'package:angeselector1/randomizer_page.dart';
import 'package:angeselector1/range_selector_form.dart';
import 'package:flutter/material.dart';

class RangeSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  RangeSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Select range page'),
          backgroundColor: Colors.brown[1000]),
      body: RangeSelectorForm(
        formKey: formKey,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomazerPage(),
              ),
            );
          }
        },
        child: const Icon(Icons.arrow_forward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
