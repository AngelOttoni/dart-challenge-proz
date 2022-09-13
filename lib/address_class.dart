import 'dart:html';

class Address {
  late String street;
  late int number;
  late String complement;
  late String district;
  late String city;
  late String state;
  late String cep;
  
  Address(
      {required this.street,
      required this.number,
      required this.complement,
      required this.district,
      required this.state,
      required this.cep});

  @override
  String toString() {
    return "Street $street, $number, $complement, $district, $city/$state, CEP $cep";
  }
}
