import 'package:uuid/uuid.dart';
import 'package:dart_challenge/partner_class.dart';
//import 'package:dart_challenge/registrationsystem_class.dart';

class Company extends LegalPerson {
  String id = Uuid().v4();
  final registrationDate = DateTime.now();
  String _phone;
  Partner partner;

  
  Company(id, _cnpj, registrationDate, _corporateName, _tradeName, this._phone,
      address, this.partner)
      : super(_cnpj, _corporateName, _tradeName, address);

  //Getters
  String get getPhone {
    return _phone;
  }
  //Setters

  @override
  String toString() {
    return "Company Id: $id,\n CNPJ: $getCnpj,\n Registration Date: $registrationDate,\n Company: $getCorporateName,\n Trade Name: $getTradeName,\n Phone: $getPhone,\n Patner:\n ${partner.toString()}"; //como inserir o sócio? resolvido
  }

  // void newCompany() {}
  // void searchCompanyCnpj() {}
  // void searchCompanyMemberCpfCnpj() {}
  // void listCompanies() {}
  // void delCompanyId() {}
}
