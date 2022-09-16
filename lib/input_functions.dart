import 'dart:convert';
import 'dart:io';

import 'package:dart_challenge/address_class.dart';
import 'package:dart_challenge/company_class.dart';
import 'package:dart_challenge/main_menu.dart';
import 'package:dart_challenge/partner_class.dart';

abstract class Inputs {
  static String inputUser(String message) {
    stdout.write(message);
    String? input = stdin.readLineSync(encoding: utf8)!;
    if (input == null || input == "") {
      print("Invalid input! Try again!");
      input = inputUser(message);
    }
    return input;
  }

  static String checkNumber(String message, [int lenght = 0]) {
    bool condition = true;
    String number = Inputs.inputUser(message);

    while (condition) {
      if (int.tryParse(number) == null) {
        print("Just type numbers!");
        number = Inputs.inputUser(message);
        if (lenght == 0) {
          return number;
        }
      } else if (number.toString().length < lenght) {
        stdout.write("Invalid! \n");
        number = Inputs.inputUser(message);
      } else {
        condition = false;
      }
    }
    return number;
  }

  static String formatCpf(String cpf) {
    return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}';
  }

  static String formatCnpj(String cnpj) {
    return '${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12, 14)}';
  }

  static String formatPhone(String phone) {
    return '(${phone.substring(0, 2)}) ${phone.substring(2, 3)} ${phone.substring(3, 7)}-${phone.substring(7, 11)}';
  }

  static String formatCep(String cep) {
    return '${cep.substring(0, 2)}.${cep.substring(2, 5)}-${cep.substring(5, 8)}';
  }

  static Partner addPartner() {
    String option = inputUser(
        "Partner Registration:: \nIs the company partner a legal person (type lp) or a natural person (type np)? ");
    late Partner newPartner;
    switch (option.toUpperCase()) {
      case "lp":
        newPartner = LegalPerson(
            Inputs.checkNumber("CNPJ: ", 14),
            Inputs.inputUser("Corporate Name: "),
            Inputs.inputUser("Trade Name: "),
            Address(
                Inputs.inputUser("Street: "),
                Inputs.checkNumber("Number: ", 0),
                Inputs.inputUser("Complement: "),
                Inputs.inputUser("District: "),
                Inputs.inputUser("City: "),
                Inputs.inputUser("State: "),
                Inputs.checkNumber("CEP: ", 8)));
        break;
      case "np":
        newPartner = NaturalPerson(
            Inputs.checkNumber("Informe o CPF: ", 11),
            Inputs.inputUser("Informe o Nome Completo: "),
            Address(
                Inputs.inputUser("Street: "),
                Inputs.checkNumber("Number: ", 0),
                Inputs.inputUser("Complement: "),
                Inputs.inputUser("District: "),
                Inputs.inputUser("City: "),
                Inputs.inputUser("State: "),
                Inputs.checkNumber("CEP: ", 8)));
        break;
      default:
        print("Invalid option!");
        addPartner();
        break;
    }
    return newPartner;
  }

  static void formatCompany(List<Company> companyList) {
    // ignore: avoid_function_literals_in_foreach_calls
    companyList.forEach((e) => infoCompany(e));
  }

  static void pressEnter() {
    print("Press enter to continue...");
    stdin.readLineSync();
  }

/*static infoEmpresa(Empresa empresa) {
    print(
        "\nID: ${empresa.id}\nCNPJ: ${Entradas.formataCNPJ(empresa.cnpj)} | Data Cadastro: ${empresa.dataCdastro}\nRazão Social: ${empresa.razaoSocial}\nNome Fantasia: ${empresa.nomeFantasia}\nTelefone: ${Entradas.formataTelefone(empresa.telefone!)}\nEndereço: ${empresa.enderecoPJ.logradouro}, ${empresa.enderecoPJ.numero}, ${empresa.enderecoPJ.bairro}, ${empresa.enderecoPJ.estado}, ${Entradas.formataCEP(empresa.enderecoPJ.cep)}\n${empresa.socio.infoSocio()}");
  } */
  static infoCompany(Company company) {
    print("${company.toString()}\n${company.partner.toString()}");
  }

  // static List<Company> getSortedList(List<Company> companyList) {
  //   List<Company> list = companyList;
  //   list.sort((a, b) => a.getTradeName.compareTo(b.getTradeName));
  //   return list;
  // }

  //Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);
  static void displayCompanyList(Company company, List<Company> companyList) {
    for (var i = 0; i < companyList.length; i++) {
      print(
          "Registered companies\n, Company ID: ${companyList[i].id},\n Registration Date: ${companyList[i].registrationDate},\n CNPJ: ${companyList[i].getCnpj},\n Company: ${companyList[i].getCorporateName},\n Trade Name: ${companyList[i].getTradeName},\n Phone: ${companyList[i].getPhone}");
    }
  }

  static void companyData(companyList) {
    print("Enter the following company details: ");
    Company newCompany = Company(
        Inputs.checkNumber("CNPJ: ", 14),
        Inputs.inputUser("Corporate Name: "),
        Inputs.inputUser("Trade Name: "),
        Address(
            Inputs.inputUser("Street: "),
            Inputs.checkNumber("Number: ", 0),
            Inputs.inputUser("Complement: "),
            Inputs.inputUser("District: "),
            Inputs.inputUser("City: "),
            Inputs.inputUser("State: "),
            Inputs.checkNumber("CEP: ", 8)),
        Inputs.checkNumber("Phone: ", 11),
        Inputs.addPartner());
    companyList.add(newCompany);
  }

//Buscar Empresa cadastrada por CNPJ;
  static void searchCompanyByCnpj(List<Company> companyList) {
    String receiveCnpj = Inputs.checkNumber("Search by CNPJ: ", 14);
    infoCompany(companyList.firstWhere((e) => e.getCnpj == receiveCnpj));
  }

//Buscar Empresa por CPF/CNPJ do Sócio
  static void searchCompanyMemberCpfCnpj(List<Company> companyList) {
    String receiveCpfCnpj =
        Inputs.checkNumber("Informe o CPF/CNPJ do sócio para pesquisar: ");
    infoCompany(
        companyList.firstWhere((e) => e.partner.getDoc == receiveCpfCnpj));
  }

  static void delCompanyId(List<Company> companyList) {
    String receiveId = Inputs.inputUser("Enter the ID: ");
    if (companyList.any((e) => e.id == receiveId)) {
      companyList.remove(companyList.firstWhere((e) => e.id == receiveId));
      print("Company successfully removed!");
      return;
    }
    print("Company not found! Try again!");
    backToMainMenu();
  }

  static void backToMainMenu() {
    print("\nReturning to main menu...\n");
    mainMenu();
  }
}
