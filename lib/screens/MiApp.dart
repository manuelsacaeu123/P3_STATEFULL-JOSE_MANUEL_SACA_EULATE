import 'package:flutter/material.dart';

class app extends StatefulWidget {
  @override
  calcu createState() => calcu();
}

class calcu extends State<app> {
  double n1 = 0, n2 = 0, r = 0;
  TextEditingController num1 = TextEditingController(text: '');
  TextEditingController num2 = TextEditingController(text: '');
  suma() {
    setState(() {
      n2 = double.parse(num2.text);
      n1 = double.parse(num1.text);
      r = n1 + n2;
    });
  }
  resta() {
    setState(() {
      n2 = double.parse(num2.text);
      n1 = double.parse(num1.text);
      r = n1 - n2;
    });
  }
  multiplicacion() {
    setState(() {
      n2 = double.parse(num2.text);
      n1 = double.parse(num1.text);
      r = n1 * n2;
    });
  }
  division() {
    setState(() {
      n2 = double.parse(num2.text);
      n1 = double.parse(num1.text);
      r = (n1 / n2);
    });
  }
  limpiar() {
    setState(() {
      num1 = TextEditingController(text: '');
      num2 = TextEditingController(text: '');
      r = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom:.0, top: 15.0, left: 65.0, right: 65.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //N1
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.blue,
              controller: num1,
              decoration: InputDecoration(
                labelText: 'Número 1',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0),
            ),

            //N2
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.blue,
              controller: num2,
              decoration: InputDecoration(
                labelText: 'Número 2',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('Sumar'),
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15.0, bottom: 15.0),
                  color: Colors.redAccent,
                  onPressed: () {
                    suma();
                  },
                ),
                MaterialButton(
                  child: Text('Restar'),
                  color: Colors.purpleAccent,
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15.0, bottom: 15.0),
                  shape: StadiumBorder(),
                  onPressed: () {
                    resta();
                  },
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('Multiplicar'),
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15.0, bottom: 15.0),
                  color: Colors.orange,
                  onPressed: () {
                    multiplicacion();
                  },
                ),
                MaterialButton(
                  child: Text('Dividir'),
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15.0, bottom: 15.0),
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    division();
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:60.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('Limpiar', textAlign: TextAlign.center,),
                  color: Colors.lightGreen,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 110.0, right: 110.0, top: 15.0, bottom: 15.0),
                  onPressed: () {
                    limpiar();
                  },
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top:75.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:42.0),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                enabled: false,
                //enableInteractiveSelection: false,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: '  $r', hintStyle: TextStyle(fontSize: 30.0, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}