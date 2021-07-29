import 'package:flutter/material.dart';

class Cad {
  final String nome;
  final String email;
  final double idade;

  Cad(
    this.nome,
    this.email,
    this.idade,
  );

  @override
  String toString() {
    return 'Cad(Nome: $nome, Email: $email, Idade: $idade)';
  }
}
