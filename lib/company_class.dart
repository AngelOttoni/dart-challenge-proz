import 'package:uuid/uuid.dart';
import 'package:dart_challenge/partner_class.dart';

class Company extends LegalPerson {
  final id = Uuid().v4();
  final registrationDate = DateTime.now();
  String _phone;
  Company(id, _cnpj, _corporateName, _tradeName, this._phone, address)
      : super(_cnpj, _corporateName, _tradeName, address);

  //Getters

  //Setters

  
  // void newCompany() {}
  // void searchCompanyCnpj() {}
  // void searchCompanyMemberCpfCnpj() {}
  // void listCompanies() {}
  // void delCompanyId() {}
}
