import 'package:uuid/uuid.dart';
import 'package:dart_challenge/partner_class.dart';

class Company extends LegalPerson {
  final id = Uuid().v4();
  final registrationDate = DateTime.now();
  String phone;
  Company(cnpj, corporateName, tradeName, this.phone, address)
      : super(cnpj, corporateName, tradeName, address);

  void newCompany() {}
  void searchCompanyCnpj() {}
  void searchCompanyMemberCpfCnpj() {}
  void listCompanies() {}
  void delCompanyId() {}
}