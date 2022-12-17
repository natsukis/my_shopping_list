import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_shopping_list/app/app.locator.dart';
//import 'package:my_shopping_list/app/app.router.dart';

// import 'package:my_shopping_list/ui/widgets/loading_popup.dart';
// import 'package:my_shopping_list/ui/widgets/popup.dart';

class LogInViewModel extends BaseViewModel {
  //final AuthService _auth = AuthService();
  final formKey = GlobalKey<FormState>();
  NavigationService? navigationService = locator<NavigationService>();
  TextEditingController resetEmailController = TextEditingController();

  //text field state
  String email = '';
  String password = '';
  String errorLabel = '';

  void setEmail(String value) {
    email = value;
  }

  void setPassword(String value) {
    password = value;
  }

  void submitForm(BuildContext context) async {
    // if (formKey.currentState!.validate()) {
    //   showDialog(
    //       context: context,
    //       barrierDismissible: false,
    //       builder: (BuildContext dialogContext) {
    //         return LoadingPopUp(transparent: true);
    //       });

    //   String result = await _auth.signInWithEmailAndPassword(email, password);
    //   if (result.endsWith('ERROR')) {
    //     Navigator.pop(context);
    //     errorLabel = result;
    //     notifyListeners();
    //   } else {
    //     Navigator.pop(context);
    //     //reedirigir al home
    //     //await navigationService!.replaceWith(Routes.home, arguments: HomeArguments(uid: result, localWalledUser: null));
    //     await navigationService!.replaceWith(Routes.mainContainerView, arguments: MainContainerViewArguments(uid: result, localWalledUser: null, index: 2));
    //   }
    // }
  }

  void resetPassword(BuildContext context) async {
    // if (resetEmailController.text != '') {
    //   // Close input pop up
    //   Navigator.pop(context);

    //   // Loading pop up
    //   showDialog(
    //       context: context,
    //       barrierDismissible: false,
    //       builder: (BuildContext dialogContext) {
    //         return LoadingPopUp(transparent: true);
    //       });

    //   final reset = await _auth.passwordReset(resetEmailController.text);

    //   resetEmailController.text = '';
    //   // Close loading popup
    //   Navigator.pop(context);

    //   if (reset == null) {
    //     showDialog(
    //         context: context,
    //         builder: (BuildContext dialogContext) {
    //           return PopUp(title: 'Contraseña restaurada', content: 'Un email ha sido enviado a su casilla para reiniciar su contraseña.', onPressed: () => Navigator.pop(context));
    //         });
    //   } else {
    //     showDialog(
    //         context: context,
    //         builder: (BuildContext dialogContext) {
    //           return PopUp(title: 'Ocurrio un error', content: reset, onPressed: () => Navigator.pop(context));
    //         });
    //   }
    // }
  }

  void register() async {
    //   await navigationService!.navigateTo(Routes.introView);
  }
}
