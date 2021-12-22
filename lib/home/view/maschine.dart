import 'package:flutter/material.dart';

class Maschine extends StatelessWidget {
  const Maschine({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Maschine'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,

      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              showDialog(
                context: context,
                barrierDismissible: false,
                 builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Maschine'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('maschine 1.'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            splashColor: Colors.white,
            child: Ink.image(
              image: AssetImage("assets/images/1.jpg"),
            ),
          )         
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              showDialog(
                context: context,
                barrierDismissible: false,
                 builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Maschine'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('maschine 2.'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            splashColor: Colors.white,
            child: Ink.image(
              image: AssetImage("assets/images/2.jpg"),
            ),
          )         
        ),Container(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              showDialog(
                context: context,
                barrierDismissible: false,
                 builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Maschine'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('maschine 3.'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            splashColor: Colors.white,
            child: Ink.image(
              image: AssetImage("assets/images/3.jpg"),
            ),
          )         
        ),Container(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              showDialog(
                context: context,
                barrierDismissible: false,
                 builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Maschine'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('maschine 4.'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            splashColor: Colors.white,
            child: Ink.image(
              image: AssetImage("assets/images/4.jpg"),
            ),
          )         
        ),
      ],
    )
    );
  }
}