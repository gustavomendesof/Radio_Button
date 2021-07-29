import 'package:flutter/material.dart';
import 'cadastro.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuso para Java'),
        backgroundColor: Colors.orange[300],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/java.png'),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              ConstrainedBox(
                constraints:
                    const BoxConstraints.expand(width: 800, height: 100),
                child: const Card(
                    child: Text(
                  'Java é uma linguagem de programação e plataforma computacional lançada pela primeira vez pela Sun Microsystems em 1995. Existem muitas aplicações e sites que não funcionarão, a menos que você tenha o Java instalado, e mais desses são criados todos os dias. O Java é rápido, seguro e confiável. De laptops a datacenters, consoles de games a supercomputadores científicos, telefones celulares à Internet, o Java está em todos os lugares!  ',
                  textAlign: TextAlign.justify,
                )),
              ),
              Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                child: Text('Cadastre-se'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
            ]),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorIdade = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: Colors.orange[300],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(16)),
            Text(
              'Cadastre-se já',
              style: TextStyle(fontSize: 20),
            ),
            Padding(padding: const EdgeInsets.only(top: 16)),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 100, width: 800),
              //campo de texto
              child: TextField(
                //controlador de edição de testo
                //declarado nos atributos da classe
                controller: _controladorNome,
                //inserção do label - placeholder
                decoration: InputDecoration(labelText: 'Nome:'),
                //keyboard type recurso q permite o 'autocorretor'
                //busca os recursos
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 16)),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 100, width: 800),
              child: TextField(
                controller: _controladorEmail,
                decoration: InputDecoration(labelText: 'Email:'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 16)),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 100, width: 800),
              child: TextField(
                controller: _controladorIdade,
                decoration: InputDecoration(labelText: 'Idade'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(padding: const EdgeInsets.all(16)),
            Text(
              'Possuem algum nivel de conhecimendo',
              style: TextStyle(fontSize: 20),
            ),
            Padding(padding: const EdgeInsets.all(16)),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 50, width: 800),
              child: CheckboxListTile(
                title: const Text('Basico'),
                activeColor: Colors.orange[300],
                checkColor: Colors.orange[200],
                selected: _isChecked,
                value: _isChecked,
                onChanged: (value) {},
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 50, width: 800),
              child: CheckboxListTile(
                title: const Text('Intermediario'),
                activeColor: Colors.orange[300],
                checkColor: Colors.orange[200],
                selected: _isChecked,
                value: _isChecked,
                onChanged: (value) {},
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 50, width: 800),
              child: CheckboxListTile(
                title: const Text('Avançado'),
                activeColor: Colors.orange[300],
                checkColor: Colors.orange[200],
                selected: _isChecked,
                value: _isChecked,
                onChanged: (value) {},
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 16)),
            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                final String nome = _controladorNome.text;
                final String email = _controladorEmail.text;
                final int? idade = int.tryParse(_controladorIdade.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
