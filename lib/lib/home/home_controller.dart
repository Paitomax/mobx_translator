import 'package:mobx/mobx.dart';
import 'package:translator/translator.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  var translated = "";

  @observable
  var loading = false;

  @action
  translate(String text) async {
    loading = true;
    translated = "";
    translated = await GoogleTranslator().translate(text, from: "pt", to: "en");
    loading = false;
  }
}
