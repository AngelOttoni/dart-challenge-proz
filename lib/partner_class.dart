import 'package:dart_challenge/address_class.dart';
import 'package:dart_challenge/input_functions.dart';

class Partner {
  late String _doc;
  late String _name;
  late Address address;
  Partner(this._doc, this._name, this.address);
  //Getter
  String get getDoc {
    return _doc;
  }

  infoPartner() {}
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
  String infoPartner() {
    return "CPF: ${Inputs.formatCpf(getCpf)}\n Full Name: $getFullName\n Address: ${address.toString()}";
  }
}

//Pessoa Jurídica
class LegalPerson extends Partner {
  @override
  final String _cnpj;
  @override
  late String _tradeName; //Nome Fantasia

  late String _corporateName; //Razão social

  LegalPerson(this._cnpj, this._corporateName, Address address, this._tradeName)
      : super(_cnpj, _corporateName, address);

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
  // set setarCnpj(String cnpj) {
  //   _cnpj = cnpj;
  // }

  set setarCorporateName(String corporateName) {
    _corporateName = corporateName;
  }

  set setarTradeName(String tradeName) {
    _tradeName = tradeName;
  }

  String formatCnpj(String cnpj) {
    return '${getCnpj.substring(0, 2)}.${getCnpj.substring(2, 5)}.${getCnpj.substring(5, 8)}/${getCnpj.substring(8, 12)}-${getCnpj.substring(12, 14)}';
  }

  @override
  String infoPartner() {
    return "Partner:\nCNPJ: ${formatCnpj(getCnpj)}\n Corporate Name: $getCorporateName\n Trade Name: $getTradeName\n Address: ${address.toString()}";
  }
}
