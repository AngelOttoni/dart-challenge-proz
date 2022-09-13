//import 'dart:ffi';

int calculate() {
  return 6 * 7;
}

// class Address {
//   late String street;
//   late String number;
//   late String complement;
//   late String district;
//   late String state;
//   late String cep;
//   Address(
//       {required this.street,
//       required this.number,
//       required this.complement,
//       required this.district,
//       required this.state,
//       required this.cep});
// }

// abstract class Partner {
//   late String cpf;
//   late String fullName;
//   late String cnpj;
//   //Razão Social
//   late String corporateName;
//   //Nome Fantasia
//   late String tradeName;
//   late Address address;
  
// }

// //Pessoa Física
// class NaturalPerson extends Partner {
//   NaturalPerson(cpf, fullName, address);
// }

// //Pessoa Jurídica
// class LegalPerson extends Partner {
//   LegalPerson(cnpj, corporateName, tradeName, address);
// }

// class Company extends LegalPerson {
//   final id = Uuid().v4();
//   final registrationDate = DateTime.now();
//   String phone;
//   Company(cnpj, corporateName, tradeName, this.phone, address)
//       : super(cnpj, corporateName, tradeName, address);

//   void newCompany() {}
//   void searchCompanyCnpj() {}
//   void searchCompanyMemberCpfCnpj() {}
//   void listCompanies() {}
//   void delCompanyId() {}
// }
