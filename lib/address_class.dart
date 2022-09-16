class Address {
  String street;
  String number;
  String complement;
  String district;
  String city;
  String state;
  String cep;

  Address(this.street, this.number,
      this.complement,
      this.city,
      this.district,
      this.state,
      this.cep);

  @override
  String toString() {
    return "Street $street, $number, $complement, $district, $city/$state, CEP $cep";
  }
}
