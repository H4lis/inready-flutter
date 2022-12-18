import 'package:flutter/material.dart';
import 'constants.dart';

enum SingingCharacter { laki_laki, perempuan }

class PageTiga extends StatefulWidget {
  @override
  State<PageTiga> createState() => _PageTigaState();
}

class _PageTigaState extends State<PageTiga> {
  SingingCharacter? _character = SingingCharacter.perempuan;

  List<String> agama = ['islam', 'kristen', 'budha', 'katolik', 'protestan'];
  String _agama = 'islam';

  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  TextEditingController controllerMoto = TextEditingController();

  void pilihagama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Text('Nama Lengkap  = ${controllerNama.text}'),
            Text('Password      = ${controllerPass.text}'),
            Text('Motto         = ${controllerMoto.text}'),
          ],
        ),
      ),
    );
    //)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controllerNama,
                decoration: InputDecoration(
                    hintText: 'Nama lengkap',
                    labelText: 'nama',
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controllerPass,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Input Password',
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: controllerMoto,
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: 'Alasan',
                    labelText: 'Alasan Join Inready',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 10,
              ),
              RadioListTile<SingingCharacter>(
                title: const Text('Perempuan'),
                value: SingingCharacter.perempuan,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                activeColor: emas,
              ),
              RadioListTile(
                title: const Text('Laki-Laki'),
                value: SingingCharacter.laki_laki,
                groupValue: _character,
                onChanged: ((value) {
                  setState(() {
                    _character = value;
                  });
                }),
                activeColor: emas,
              ),
              Row(
                children: [
                  const Text(
                    'Agama ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  DropdownButton(
                      onChanged: (value) {
                        pilihagama(value.toString());
                      },
                      value: _agama,
                      items: agama.map((String value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList()),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ok'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
