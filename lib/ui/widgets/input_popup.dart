import 'package:flutter/material.dart';
import 'package:my_shopping_list/core/constants/shopping_styles.dart';

class InputPopUp extends StatelessWidget {
  final String title;
  final String content;
  final Color color1;
  final Color color2;
  final String buttonText1;
  final void Function()? onPressed1;
  final String buttonText2;
  final String label;
  final TextEditingController inputController;
  final TextStyle? titleStyle;

  InputPopUp({
    this.title = 'Reinicio de contraseña',
    this.content = 'Ingrese su mail para resetear su contraseña.',
    this.buttonText1 = 'Resetear',
    this.buttonText2 = 'Cancelar',
    this.color1 = Colors.orange,
    this.color2 = Colors.grey,
    this.label = 'Ingrese su correo electronico',
    this.titleStyle,
    required this.inputController,
    required this.onPressed1,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Center(child: Icon(Icons.email, color: ShoppingStyles.orange)),
      content: SingleChildScrollView(
        child: Column(
          // Using a column with the mainAxisSize set to min makes that the alertDialog height is the same as the content inside of it
          mainAxisSize: MainAxisSize.min,
          children: [
            title != '' ? Text(this.title, textAlign: TextAlign.center, style: titleStyle != null ? titleStyle : TextStyle(fontWeight: FontWeight.bold, fontSize: 20)) : Container(),
            title != '' ? SizedBox(height: 10) : Container(),
            content != ''
                ? Text(
                    this.content,
                  )
                : Container(),
            content != '' ? SizedBox(height: 10) : Container(),
            TextField(
              controller: inputController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: label),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: color1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    buttonText1,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: onPressed1,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: color2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    buttonText2,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
