// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_challenge/address_class.dart';

abstract class Partner {
  late String _cpf;
  late String _fullName;
  late String _cnpj;
  //Razão Social
  late String _corporateName;
  //Nome Fantasia
  late String _tradeName;
  late Address address;
}

//Pessoa Física
class NaturalPerson extends Partner {
  NaturalPerson(_cpf, _fullName, address) : super();

  //Getters
  String get getCpf {
    return _cpf;
  }

  String get getFullName {
    return _fullName;
  }

  // Address get getAddress {
  //   return address;
  // }

  //Setters
  set setarCpf(String cpf) {
    _cpf = cpf;
  }

  set setarFullName(String fullName) {
    _fullName = fullName;
  }

  // set setarAddress(Address address) {
  //   address = address;
  // }
}

//Pessoa Jurídica
class LegalPerson extends Partner {
  LegalPerson(_cnpj, _corporateName, _tradeName, address) : super();

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
}
