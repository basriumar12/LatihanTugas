import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  List<String> _agama = ['Islam', 'Kristen', 'Budha', 'Hindhu', 'Konghucu'];
  String _nAgama = "Islam";
  int _groupValue1 = 0;

  TextEditingController nama = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController moto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Form"),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: nama,
                  decoration: InputDecoration(
                      hintText: 'Nama Lengkap',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                ),
                TextFormField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                ),
                TextFormField(
                  controller: moto,
                  minLines: 3,
                  maxLines: 10,
                  decoration: InputDecoration(
                      hintText: 'Moto Hidup',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      onChanged: (int? i) {
                        setState(() {
                          _groupValue1 = i!;
                        });
                      },
                      value: 0,
                      groupValue: _groupValue1,
                    ),
                    Text('Lak-laki'),
                    Radio(
                      onChanged: (int? i) {
                        setState(() {
                          _groupValue1 = i!;
                        });
                      },
                      value: 1,
                      groupValue: _groupValue1,
                    ),
                    Text('Perempuan'),
                  ],
                ),
                Text("Agama : ",
                    style: TextStyle(color: Colors.brown, fontSize: 16.0)),
                DropdownButtonFormField(
                  onChanged: (String? value) {
                    setState(() {
                      _nAgama = value!;
                    });
                  },
                  value: _nAgama,
                  items: _agama.map((String value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
                MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Submit"),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Nama Lengkap : " +
                            nama.text.toString() +
                            "\n" +
                            "Password : " +
                            pass.text.toString() +
                            "\n" +
                            "Moto hidup : " +
                            moto.text.toString() +
                            "\n" +
                            "Jenis Kelamin :" +
                            ((_groupValue1 == 0) ? "Laki" : "Wanita") +
                            "\n" +
                            "Agama : " +
                            _nAgama,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                )
              ],
            ),
          )),
    );
  }
}
