import 'package:flutter/material.dart';

class Steak extends StatelessWidget {
  const Steak({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Steak'),
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
                    title: const Text('Steak'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('steak 1.'),
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
              image: AssetImage("assets/images/s1.jpeg"),
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
                    title: const Text('Steak'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('steak 2.'),
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
              image: AssetImage("assets/images/s2.jpeg"),
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
                    title: const Text('Steak'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('steak 3.'),
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
              image: AssetImage("assets/images/s3.jpeg"),
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
                    title: const Text('Steak'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('steak 4.'),
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
              image: AssetImage("assets/images/s4.jpeg"),
            ),
          )         
        ),
      ],
    )
    );
  }
}