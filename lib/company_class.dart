import 'package:uuid/uuid.dart';
import 'package:dart_challenge/partner_class.dart';

class Company extends LegalPerson {
  final id = Uuid().v4();
  final registrationDate = DateTime.now();
  late String _phone;
  Partner partner;

  Company(super._cnpj, super._corporateName, super.address, super._tradeName,
      this._phone, this.partner);

  //Getters
  String get getPhone {
    return _phone;
  }

  //Setters
  set setarPhone(String phone) {
    _phone = phone;
  }

  @override
  String toString() {
    return "Company Id: $id,\n CNPJ: $getCnpj,\n Registration Date: $registrationDate,\n Company: $getCorporateName,\n Trade Name: $getTradeName,\n Partner: ${partner.infoPartner()}\nPhone: $getPhone";
  }
}
