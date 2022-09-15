// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_challenge/address_class.dart';

class Partner {
  // late String _cnpj;
  late String _doc;
  late String _name;
  late Address address;
  Partner(this._doc, this._name, this.address);
  // late String _cpf;
  // //Razão Social
  // late String _corporateName;
  // //Nome Fantasia
  // late String _tradeName;

}

//Pessoa Física
class NaturalPerson extends Partner {
  @override
  late String _cpf;
  @override
  late String _fullName;
  
  NaturalPerson(super._cpf, super.fullName, super.address);

  //Getters
  String get getCpf {
    return _cpf;
  }

  String get getFullName {
    return _fullName;
  }

  //Setters
  set setarCpf(String cpf) {
    _cpf = cpf;
  }

  set setarFullName(String fullName) {
    _fullName = fullName;
  }

  @override
  String toString() {
    return "CPF: $getCpf\n Full Name: $getFullName\n Address: ${address.toString()}";
  }
}

//Pessoa Jurídica
class LegalPerson extends Partner {
  @override
  late String _cnpj;
  @override
  late String _tradeName; //Nome Fantasia

  late String _corporateName; //Razão social

  LegalPerson(super._cnpj, this._corporateName, super._tradeName, super.address);
// criar um programa showpartner()
  //Getters
  String get getCnpj {
    return _cnpj;
  }

  String get getCorporateName {
    return _corporateName;
  }

  String get getTradeName {
    return _tradeName;
  }

  //Setters
  set setarCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  set setarCorporateName(String corporateName) {
    _corporateName = corporateName;
  }

  set setarTradeName(String tradeName) {
    _tradeName = tradeName;
  }

  @override
  String toString() {
    return "CNPJ: $getCnpj\n Corporate Name: $getCorporateName\n Trade Name: $getTradeName\n Address: ${address.toString()}";
  }
}
