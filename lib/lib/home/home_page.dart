import 'package:flutter/cupertino.dart';
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
            SizedBox(height: 32),
            Observer(
              builder: (context) {
                return Column(
                  children: <Widget>[
                    _buildTextField(),
                    SizedBox(height: 16),
                    _buildButton(),
                  ],
                );
              },
            ),
            SizedBox(height: 32),
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

  Widget _buildTextField() {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.text,
      maxLines: 10,
      minLines: 1,
      autofocus: true,
    );
  }

  Widget _buildButton() {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        padding: EdgeInsets.symmetric(vertical: 16),
        child: !_homeController.loading
            ? Text(
                "Traduzir",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            : SizedBox(
                height: 23, width: 23, child: CircularProgressIndicator()),
        onPressed: _homeController.loading
            ? null
            : () {
                if (_controller.text.isNotEmpty && _controller.text != null)
                  _homeController.translate(_controller.text);
              },
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      "Tradudor de Português para Ingles",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: Color(0xa0696969),
      ),
    );
  }
}
