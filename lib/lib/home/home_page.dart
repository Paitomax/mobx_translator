import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildDescription(),
            SizedBox(height: 16),
            Observer(
              builder: (context) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        keyboardType: TextInputType.text,
                        maxLines: 10,
                        minLines: 1,
                        autofocus: true,
                      ),
                    ),
                    SizedBox(width: 16),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: !_homeController.loading
                          ? Text("Traduzir")
                          : SizedBox(
                              height: 23,
                              width: 23,
                              child: CircularProgressIndicator()),
                      onPressed: _homeController.loading
                          ? null
                          : () {
                              _homeController.translate(_controller.text);
                            },
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 16),
            Observer(
              builder: (context) {
                return Text(
                  _homeController.translated,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      "Escreva o que queira traduzir para o inglês ",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: Color(0xa0696969),
      ),
    );
  }
}
