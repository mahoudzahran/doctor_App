import 'package:doctor/componant/widgets/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  Widget buildNewTasks(BuildContext context) {
    return Container(
      color: whiteColor,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Text(index.toString());
        },
      ),
    );
  }
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ExpansionPanelList(
                   dividerColor: whiteColor,
                  expansionCallback: (panelIndex, expanded) {
                    active = !active;
                    setState(() {});
                  },
                  children: [
                    ExpansionPanel(
                      backgroundColor: Colors.teal,
                      headerBuilder: (context, isExpanded) {
                        return  ListTile(
                          title: Text("personal Info"),
                        );
                      },
                      body: buildNewTasks(context),

                      isExpanded: active,
                      canTapOnHeader: true,



                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
