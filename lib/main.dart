import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Falculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Falculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controlador = TextEditingController(text: '');

  String operacion = '';
  double resultado = 0;
  bool primerOperando = true;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      /* appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ), */
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: controlador,
                  readOnly: true,
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  //keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '7';
                          },
                          child: Text('7')),
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '8';
                          },
                          child: Text('8')),
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '9';
                          },
                          child: Text('9')),
                      FloatingActionButton(
                        onPressed: () {
                          resultado = double.parse(controlador.text);
                          controlador.text = '';
                          operacion = '+';
                        },
                        child: Text('+'),
                        backgroundColor: Colors.yellowAccent,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '4';
                          },
                          child: Text('4')),
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '5';
                          },
                          child: Text('5')),
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '6';
                          },
                          child: Text('6')),
                      FloatingActionButton(
                          onPressed: () {
                            resultado = double.parse(controlador.text);
                            controlador.text = '';
                            operacion = '-';
                          },
                          child: Text('-'),
                          backgroundColor: Colors.yellowAccent),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '1';
                          },
                          child: Text('1')),
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '2';
                          },
                          child: Text('2')),
                      FloatingActionButton(
                          onPressed: () {
                            controlador.text = '';
                            controlador.text += '3';
                          },
                          child: Text('3')),
                      FloatingActionButton(
                          onPressed: () {
                            resultado = double.parse(controlador.text);
                            controlador.text = '';
                            operacion = 'x';
                          },
                          child: Text('x'),
                          backgroundColor: Colors.yellowAccent),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                          onPressed: () {
                            if (!controlador.text.contains('.')) {
                              controlador.text += '.';
                            }
                          },
                          child: Text('.')),
                      FloatingActionButton(
                          onPressed: () => controlador.text += '0',
                          child: Text('0')),
                      FloatingActionButton(
                        onPressed: () {
                          resultado = double.parse(controlador.text);
                          controlador.text = '';
                          operacion = 'MOD';
                        },
                        child: Text(
                          'MOD',
                        ),
                        backgroundColor: Colors.yellowAccent,
                      ),
                      FloatingActionButton(
                          onPressed: () {
                            resultado = double.parse(controlador.text);
                            controlador.text = '';
                            operacion = '/';
                          },
                          child: Text('/'),
                          backgroundColor: Colors.yellowAccent),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          resultado = 0;
                          controlador.text = '';
                        },
                        child: Text(
                          'AC',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          controlador.text = '';
                        },
                        child: Text(
                          'C',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          String texto = controlador.text;
                          int longitudText = texto.length;
                          if (longitudText > 0) {
                            controlador.text = texto.replaceRange(
                                longitudText - 1, longitudText, "");
                          }
                        },
                        child: Icon(
                          Icons.backspace_outlined,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.red,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          calcular(controlador.text);
                          controlador.text = resultado.toString();
                        },
                        child: Text(
                          '=',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        'By: ObejaShaun',
                        style: TextStyle(
                            color: Colors.blueGrey[800],
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void calcular(String n2) {
    if (n2.isNotEmpty) {
      switch (operacion) {
        case '+':
          resultado += double.parse(n2);
          break;
        case '-':
          resultado -= double.parse(n2);
          break;
        case 'x':
          resultado *= double.parse(n2);
          break;
        case '/':
          resultado /= double.parse(n2);
          break;
        case 'MOD':
          resultado %= double.parse(n2);
          break;
      }
    }
  }
}
