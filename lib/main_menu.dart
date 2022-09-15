//import 'dart:convert';

import 'package:dart_challenge/registrationsystem_class.dart';
import 'package:dart_challenge/company_class.dart';
import 'dart:io';

void mainMenu() {
  bool condition = true;
  //List<Company> companyList = [];
  //List<Map<String, dynamic>> companyList = [];

  while (condition) {
    print("1 - Register a new company ");
    print("2 - Search Company registered by CNPJ ");
    print("3 - Search Company by Partner's CPF/CNPJ ");
    print(
        "4 - List Registered Companies in alphabetical order (based on Corporate Name) ");
    print("5 - Delete a company (by ID) ");
    print("6 - Exit");
    print("0 - Back to main menu");
    int option = int.parse(getStringValue(
        "Awesome! Now, choose the option you want: ", "defaultValue"));
    print("");

    switch (option) {
      case 1:
        //Cadastrar uma nova empresa;
        
        break;
      case 2:
        //Buscar Empresa cadastrada por CNPJ;
        print("\x1B[2J\x1B[0;0H");
        CompanyRegistrationSystem.searchCompanyByCnpj;
        print("\x1B[2J\x1B[0;0H");
        break;
      case 3:
        //Buscar Empresa por CPF/CNPJ do Sócio;
        print("\x1B[2J\x1B[0;0H");
        CompanyRegistrationSystem.searchCompanyByPartnerCpfCnpj;
        break;
      case 4:
        //Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);
        print("Selecione o contato que deseja excluir:");
        CompanyRegistrationSystem.displayCompanyList;
        break;
      case 5:
        //Excluir uma empresa (por ID);
        CompanyRegistrationSystem();
        break;
      case 6:
        //Sair
        print("Going out...");
        condition = false;
        break;
      default:
        print("Please make a valid selection");
    }
  }
}

String getStringValue(String description, String defaultValue) {
  stdout.write(description);
  String? inputUser = stdin.readLineSync();
  return inputUser ?? defaultValue;
}
