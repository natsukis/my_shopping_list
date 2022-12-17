import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_shopping_list/core/constants/constants.dart';
import 'package:my_shopping_list/core/constants/shopping_styles.dart';
import 'package:my_shopping_list/core/viewmodels/auth/login_viewmodel.dart';
import 'package:my_shopping_list/ui/widgets/input_popup.dart';

class LogInView extends StatefulWidget {
  @override
  _LogInViewState createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    double autoHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder<LogInViewModel>.reactive(
      viewModelBuilder: () => LogInViewModel(),
      builder: (context, vm, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ShoppingStyles.purpleCustom,
        body: SingleChildScrollView(
          child: Container(
            height: autoHeight - autoHeight / 9,
            margin: EdgeInsets.only(top: autoHeight / 9),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: autoHeight / 20),
                  child: Text(
                    'Bienvenido',
                    style: TextStyle(fontSize: 35, color: ShoppingStyles.purpleCustom, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: vm.formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                            decoration: textInputDecoration.copyWith(hintText: 'Usuario o correo electrónico'),
                            validator: (val) => val!.isEmpty ? 'Por favor ingrese un email valido!' : null,
                            onChanged: (val) => vm.setEmail(val),
                            keyboardType: TextInputType.emailAddress),
                        SizedBox(
                          height: 25.00,
                        ),
                        TextFormField(
                            decoration: textInputDecoration.copyWith(hintText: 'Contraseña'),
                            obscureText: true,
                            validator: (val) => val!.length < 6 ? 'La contraseña debe tener al menos 6 caracteres' : null,
                            onChanged: (val) => vm.setPassword(val)),
                        SizedBox(
                          height: autoHeight / 15,
                        ),
                        Text(
                          vm.errorLabel,
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                              backgroundColor: MaterialStateProperty.all<Color>(ShoppingStyles.purpleCustom),
                              minimumSize: MaterialStateProperty.all<Size>(Size(180, 50))),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () => vm.submitForm(this.context),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(200, 20))),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext dialogContext) {
                                    return InputPopUp(
                                      inputController: vm.resetEmailController,
                                      onPressed1: () => vm.resetPassword(this.context),
                                      titleStyle: TextStyle(color: ShoppingStyles.purpleCustom, fontSize: 15),
                                    );
                                  });
                            },
                            child: Text('Olvidé mi contraseña', style: TextStyle(color: Colors.black, fontSize: 15))),
                        Container(
                          width: 220,
                          child: Divider(
                            color: ShoppingStyles.grey,
                            thickness: 1,
                            height: 25,
                          ),
                        ),
                        TextButton(
                            style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(200, 50))),
                            onPressed: vm.register,
                            child: Text('¿No tienes una cuenta?\n¡Crea una! Es gratis.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black))),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset('assets/images/google_icon.png'),
                              iconSize: 50,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset('assets/images/facebook_icon.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
