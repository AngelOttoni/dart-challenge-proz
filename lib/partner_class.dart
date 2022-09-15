// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_challenge/address_class.dart';

class Partner {
  late String _cnpj;
  late String _fullName;
  late String _cpf;
  //Razão Social
  late String _corporateName;
  //Nome Fantasia
  late String _tradeName;
  late Address address;
  Partner(this.address);
}

//Pessoa Física
class NaturalPerson extends Partner {
  @override
  String _cpf;
  @override
  String _fullName;

  NaturalPerson(this._cpf, this._fullName, address) : super(address);

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
  String _cnpj;
  @override
  String _corporateName;
  @override
  String _tradeName;

  LegalPerson(this._cnpj, this._corporateName, this._tradeName, address)
      : super(address);

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
