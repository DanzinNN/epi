import 'package:epi/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CriandoPerfil extends StatefulWidget {
  const CriandoPerfil({Key? key}) : super(key: key);

  @override
  State<CriandoPerfil> createState() => _CriandoPerfilState();
}

class _CriandoPerfilState extends State<CriandoPerfil> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _dataNascimentoController = TextEditingController();
  final TextEditingController _contatoController = TextEditingController();
  final TextEditingController _identificacaoController = TextEditingController();
  final TextEditingController _cargoController = TextEditingController();
  final TextEditingController _setorController = TextEditingController();
  final TextEditingController _empresaController = TextEditingController();

  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    _checkFormValidity();
  }

  void _checkFormValidity() {
    setState(() {
      _isValid = _nomeController.text.isNotEmpty &&
          _cpfController.text.isNotEmpty &&
          _dataNascimentoController.text.isNotEmpty &&
          _contatoController.text.isNotEmpty &&
          _identificacaoController.text.isNotEmpty &&
          _cargoController.text.isNotEmpty &&
          _setorController.text.isNotEmpty &&
          _empresaController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10), 
            Text(
              "Criando",
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Perfil",
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        titleSpacing: 15.0, 
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20), 
              Padding(
                padding: EdgeInsets.only(top: 20), 
                child: SizedBox(
                  width: 318,
                  height: 50,
                  child: TextField(
                    controller: _nomeController,
                    onChanged: (value) => _checkFormValidity(),
                    decoration: InputDecoration(
                      labelText: "Nome Completo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 318,
                height: 50,
                child: TextField(
                  controller: _cpfController,
                  onChanged: (value) => _checkFormValidity(),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(11),
                    CpfInputFormatter(),
                  ],
                  decoration: InputDecoration(
                    labelText: "CPF",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 318,
                height: 50,
                child: TextField(
                  controller: _dataNascimentoController,
                  onChanged: (value) => _checkFormValidity(),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(8),
                    DataInputFormatter(),
                  ],
                  decoration: InputDecoration(
                    labelText: "Data de Nascimento",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 318,
                height: 50,
                child: TextField(
                  controller: _contatoController,
                  onChanged: (value) => _checkFormValidity(),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Número de Contato",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 318,
                height: 50,
                child: TextField(
                  controller: _identificacaoController,
                  onChanged: (value) => _checkFormValidity(),
                  decoration: InputDecoration(
                    labelText: "Número de Identificação",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 318,
                height: 50,
                child: TextField(
                  controller: _cargoController,
                  onChanged: (value) => _checkFormValidity(),
                  decoration: InputDecoration(
                    labelText: "Cargo/Função",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 318,
                height: 50,
                child: TextField(
                  controller: _setorController,
                  onChanged: (value) => _checkFormValidity(),
                  decoration: InputDecoration(
                    labelText: "Setor/Departamento Responsável",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 318,
                height: 50,
                child: TextField(
                  controller: _empresaController,
                  onChanged: (value) => _checkFormValidity(),
                  decoration: InputDecoration(
                    labelText: "Empresa",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isValid ? Colors.blue.withOpacity(0.1) : Colors.grey.withOpacity(0.5),
                  ),
                  child: IconButton(
                    onPressed: _isValid ? () {
                      Navigator.push(
          context,
          PageRouteBuilder(transitionDuration: Duration.zero, pageBuilder: (context, animation, secondaryAnimation) {
              return home();
          }
        ),
        );
                    } : null,
                    icon: Icon(
                      Icons.check,
                      size: 30,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CpfInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');
    final formatted = StringBuffer();

    for (var i = 0; i < text.length; i++) {
      if (i == 3 || i == 6) {
        formatted.write('.');
      } else if (i == 9) {
        formatted.write('-');
      }
      formatted.write(text[i]);
    }

    return newValue.copyWith(
      text: formatted.toString(),
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

class DataInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');
    final formatted = StringBuffer();

    for (var i = 0; i < text.length; i++) {
      if (i == 2 || i == 4) {
        formatted.write('/');
      }
      formatted.write(text[i]);
    }

    return newValue.copyWith(
      text: formatted.toString(),
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
