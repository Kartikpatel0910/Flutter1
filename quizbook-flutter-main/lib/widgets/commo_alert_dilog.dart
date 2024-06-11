
import 'package:flutter/material.dart';

import '../utils/constants.dart';

typedef VoidFunction = void Function();

class DialogUtils {
  DialogUtils.internal();

  static void showCustomDialog(BuildContext context, String title, String msg,
      {VoidFunction? optionalFunction}) {
    showDialog(
        context: context,
          //  barrierDismissible: false,
        builder: (_) {
          return AlertDialog(
            
            title: Text(title, style: const TextStyle(fontSize: 25)),
            content: Text(
              msg,
              style: const TextStyle(fontSize: 18),
            ),
            actions: <Widget>[
              Center(
                child: InkWell(
                  onTap: () {
                    if (optionalFunction != null) {
                      optionalFunction();
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    height: 28,
                    width: 50,
                    decoration: BoxDecoration(
                        color: purpleColor.withOpacity(0.2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child:const Center(
                      child:   Padding(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                        child: Text(
                          
                          'OK',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                      
                            
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: purpleColor),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
