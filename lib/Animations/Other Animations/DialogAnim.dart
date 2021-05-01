import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Dialog1 extends StatefulWidget {
  static const routeName = '/AwesomeDialogScreen';

  @override
  _MyPluginState createState() => _MyPluginState();
}

class _MyPluginState extends State<Dialog1> {
  void showAlertDialogOnOkCallback(String title, String msg,
      DialogType dialogType, BuildContext context, VoidCallback onOkPress) {
    AwesomeDialog(
      context: context,
      animType: AnimType.TOPSLIDE,
      dialogType: dialogType,
      title: title,
      desc: msg,
      btnOkIcon: Icons.check_circle,
      btnOkColor: Colors.green.shade900,
      btnOkOnPress: onOkPress,
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          MaterialButton(
            onPressed: () {
              showAlertDialogOnOkCallback(
                  'Success !',
                  'The operation was successfully completed.',
                  DialogType.SUCCES,
                  context,
                  () => {});
            },
            child: Text("Dialog 1"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                      context: context,
                      headerAnimationLoop: false,
                      dialogType: DialogType.INFO,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'Information',
                      desc: 'The operation was successfully completed.',
                      btnCancelOnPress: () {})
                  .show();
            },
            child: Text("Dialog 2"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                headerAnimationLoop: false,
                dialogType: DialogType.INFO,
                animType: AnimType.BOTTOMSLIDE,
                title: 'Information',
                desc: 'The operation was successfully completed.',
              ).show();
            },
            child: Text("Dialog 3"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                      context: context,
                      dialogType: DialogType.WARNING,
                      headerAnimationLoop: false,
                      animType: AnimType.TOPSLIDE,
                      title: 'Warning',
                      desc: 'Are you sure you want to delete the item',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {})
                  .show();
            },
            child: Text("Dialog 4"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                      context: context,
                      dialogType: DialogType.ERROR,
                      animType: AnimType.RIGHSLIDE,
                      headerAnimationLoop: false,
                      title: 'Error',
                      desc: 'Are you sure you want to delete the item',
                      btnOkOnPress: () {},
                      btnOkColor: Colors.red)
                  .show();
            },
            child: Text("Dialog 5"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                  context: context,
                  animType: AnimType.LEFTSLIDE,
                  headerAnimationLoop: false,
                  dialogType: DialogType.SUCCES,
                  title: 'Succes',
                  desc:
                      'The operation was successfully completed..................................',
                  btnOkIcon: Icons.check_circle,
                  onDissmissCallback: () {
                    debugPrint('Dialog Dissmiss from callback');
                  }).show();
            },
            child: Text("Dialog 6"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                animType: AnimType.SCALE,
                dialogType: DialogType.INFO,
                body: Center(
                  child: Text(
                    'The operation was successfully completed.\n Confirm or cancel the deletion process',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                title: 'Agree',
                desc: 'Confirm Agree',
              ).show();
            },
            child: Text("Dialog 7"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
          MaterialButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                animType: AnimType.SCALE,
                customHeader: Icon(
                  Icons.favorite,
                  size: 50,
                ),
                title: 'This is Custom Dialog',
                desc: 'Confirm or cancel the deletion process',
                btnOk: TextButton(
                  child: Text('Cancel Button'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                btnOkOnPress: () {},
                dismissOnTouchOutside: false,
              ).show();
            },
            child: Text("Dialog 8"),
            color: Colors.white.withOpacity(0.6),
            elevation: 40,
          ),
        ]),
      ),
    );
  }
}
