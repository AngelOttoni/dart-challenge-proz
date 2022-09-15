import 'package:uuid/uuid.dart';
import 'package:dart_challenge/partner_class.dart';
//import 'package:dart_challenge/registrationsystem_class.dart';

class Company extends LegalPerson {
  final id = Uuid().v4();
  final registrationDate = DateTime.now();
  late String _phone;
  //Partner partner;

  Company(super._cnpj, super._corporateName, super._tradeName, super.address,
      this._phone);

  //Getters
  String get getPhone {
    return _phone;
  }
  //Setters

  @override
  String toString() {
    return "Company Id: $id,\n CNPJ: $getCnpj,\n Registration Date: $registrationDate,\n Company: $getCorporateName,\n Trade Name: $getTradeName,\n Phone: $getPhone"; //como inserir o sócio? resolvido
  }

  // void newCompany() {}
  // void searchCompanyCnpj() {}
  // void searchCompanyMemberCpfCnpj() {}
  // void listCompanies() {}
  // void delCompanyId() {}
}
