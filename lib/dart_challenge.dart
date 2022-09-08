import 'dart:ffi';

import 'package:uuid/uuid.dart';

int calculate() {
  return 6 * 7;
}

abstract class Person {
  late String street;
  late String number;
  late String complement;
  late String district;
  late String state;
  late String cep;
  Person(this.street, this.number, this.complement, this.district, this.state,
      this.cep);
}

//Pessoa Física
class NaturalPerson extends Person {
  String cpf;
  String fullName;

  NaturalPerson(
      this.cpf, this.fullName, street, number, complement, district, state, cep)
      : super(street, number, complement, district, state, cep);
}

//Pessoa Jurídica
class LegalPerson extends Person {
  String cnpj;
  //Razão Social
  String corporateName;
  //Nome Fantasia
  String tradeName;

  LegalPerson(this.cnpj, this.corporateName, this.tradeName, street, number,
      complement, district, state, cep)
      : super(street, number, complement, district, state, cep);
}

class Company extends LegalPerson {
  final id = Uuid().v4();
  final registrationDate = DateTime.now();
  String phone;
  Company(cnpj, corporateName, tradeName, this.phone, street, number,
      complement, district, state, cep)
      : super(cnpj, corporateName, tradeName, street, number, complement,
            district, state, cep);
  
  void newCompany(){}
  void searchCompanyCnpj(){}
  void searchCompanyMemberCpfCnpj(){}
  void listCompanies(){}
  void delCompanyId(){}

}
