import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';
import 'dialog_box.dart';

import 'package:responsive_grid/responsive_grid.dart';


class FormView extends StatelessWidget {


  final double tileMargin = 30;
  final centerHeight = 50.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Application Form',
        ),
      ),
      drawerDragStartBehavior: DragStartBehavior.down,

      body: SafeArea(

          child: getForm(context)
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar:  AppBottomBar(),
      floatingActionButton: AppActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }



  Form getForm(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;

    return Form(

      child: Scrollbar(
        child: SingleChildScrollView(
          dragStartBehavior: DragStartBehavior.down,
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      maxLength: 10,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.account_balance_wallet),
                        hintText: 'Enter your Name',
                        labelText: 'Your complete registered name',
                      ),
                      validator: (String value) {
                        if (value == null) {
                          return null;
                        }
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        final n = num.tryParse(value);
                        if (n == null) {
                          return '"$value" is not a valid number';
                        }
                        return null;
                      },
                      maxLines: 1,
                    ),
                    trailing: Tooltip(
                      message: "Enter your Complete name present in documents",
                      child: IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: DialogBox().dialog(
                                  title: 'Name',
                                  subtitle:
                                  'Enter your Complete name present in documents'));
                        },
                      ),
                    ),
                  )
              ),
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.account_balance_wallet),
                        hintText: 'Age',
                        labelText: 'Your Age',
                      ),
                    ),
                    trailing: Tooltip(
                      message: "Enter your age",
                      child: IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: DialogBox().dialog(
                                  title: 'ZIP',
                                  subtitle:
                                  'Enter the correct Zip Postal Code of your area'));
                        },
                      ),
                    ),
                  )
              ),
              ResponsiveGridCol(
                xs: 12,
                sm: 6,
                child: ListTile(
                  title: TextFormField(
                    maxLength: 10,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.phone),
                      hintText: 'Your registered mobile number',
                      labelText: 'Phone Number *',
                      prefixText: '+91 ',
                    ),
                    keyboardType: TextInputType.phone,

                    validator: (String value) {
                      if (value == null) {
                        return null;
                      }
                      if (value.isEmpty) {
                        return 'Please enter valid mobile number';
                      }
                      final n = num.tryParse(value);
                      if (n == null) {
                        return '"$value" is not a valid number';
                      }
                      if (n < 4999999999) {
                        return '"$value" is not a valid phone number';
                      }
                      return null;
                    },
                    maxLines: 1,
                  ),
                  trailing: Tooltip(
                    message: 'Your Registered mobile number.',
                    child: IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () {
                        showDialog(
                            context: context,
                            child: DialogBox().dialog(
                                title: 'Registered mobile number.',
                                subtitle:
                                'Your Registered mobile number.'));
                      },
                    ),
                  ),
                ),

              ),
              ResponsiveGridCol(
                  child: RaisedButton(
                      child: Text('Submit'),
                      onPressed: (){})
              ),
              ResponsiveGridCol(
                child: SizedBox(
                  height: centerHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

ResponsiveGridCol _addGap(double tileMargin) {
  return ResponsiveGridCol(
    child: SizedBox(
      height: tileMargin,
    ),
  );
}
