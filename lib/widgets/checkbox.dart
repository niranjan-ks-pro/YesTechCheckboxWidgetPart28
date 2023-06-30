import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool? isChecked = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          //text
          title: const Text("check box"),
          centerTitle: true,
          //BG colour
          backgroundColor: const Color.fromARGB(255, 8, 153, 27),

          //leading
          leading: const Icon(Icons.home),
          //Actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],

          //elevation
          elevation: 30,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (val) {
                  setState(() {
                    isChecked = val;
                  });
                },
              ),
              Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.black,
                value: isChecked2,
                onChanged: (val) {
                  setState(() {
                    isChecked2 = val;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                    title: const Text("sends Notifications",
                        style: TextStyle(color: Colors.white)),
                    subtitle: const Text("Turn On or off Notificatuion"),
                    tileColor: Colors.green,
                    value: isChecked3,
                    onChanged: (val) {
                      setState(() {
                        isChecked3 = val;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    title: const Text("sends Notifications",
                        style: TextStyle(color: Colors.white)),
                    subtitle: const Text("Turn On or off Notificatuion"),
                    tileColor: Colors.red,
                    value: isChecked4,
                    onChanged: (val) {
                      setState(() {
                        isChecked4 = val;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    title: const Text("sends Notifications",
                        style: TextStyle(color: Colors.white)),
                    subtitle: const Text("Turn On or off Notificatuion"),
                    tileColor: Colors.amber,
                    value: isChecked4,
                    onChanged: (val) {
                      setState(() {
                        isChecked4 = val;
                      });
                    }),
              )
            ],
          ),
        ));
  }
}
