import 'dart:convert';
import 'dart:io';

import 'package:dart_challenge/address_class.dart';
import 'package:dart_challenge/company_class.dart';
import 'package:dart_challenge/main_menu.dart';
// import 'package:dart_challenge/partner_class.dart';
// import 'package:uuid/uuid.dart';

class CompanyRegistrationSystem {
  //Cadastrar uma nova empresa;
  Map<String, dynamic> addCompany() {
    Map<String, dynamic> listRegisteredCompanies = {};
    Company newCompany = Company(
        "_cnpj",
        "_corporateName",
        "_tradeName",
        Address(
            street: "street",
            number: 0,
            complement: "complement",
            district: "district",
            city: "city",
            state: "state",
            cep: "cep"),
        "_phone");

    print("Enter: ");
    //newCompany.id = Uuid().v4();
    stdout.write("Enter your company's CNPJ:");
    newCompany.setarCnpj = stdin.readLineSync(encoding: utf8)!;

    stdout.write("Enter your ...:");
    newCompany.setarCorporateName = stdin.readLineSync(encoding: utf8)!;

    stdout.write("Enter your ...:");
    newCompany.setarTradeName = stdin.readLineSync(encoding: utf8)!;

    //.getCnpj() => stdin.readLineSync(encoding: utf8);
    //var response = {"status": 201, "message": "Company successfully added!"};
    return listRegisteredCompanies;
  }

  // Map addCompany(Company company, List<Company> companyList) {
  //   companyList.add(company);
  //   var response = {"status": 201, "message": "Company successfully added!"};

  //   return response;
  // }

  //Excluir uma empresa (por ID);
  Map removeCompanyId(Company company, List<Company> companyList) {
    companyList.remove(company);
    var response = {"status": 200, "message": "Company successfully deleted!"};

    return response;
  }

  //Buscar Empresa cadastrada por CNPJ;
  static void searchCompanyByCnpj(Company company, List<Company> companyList) {
    int aux = 0;
    for (var i = 0; i < companyList.length; i++) {
      if (companyList[i] == company) {
        aux++;
      }
    }
    if (aux > 0) {
      print(company);
    } else {
      print(company);
    }
  }

  //Buscar Empresa por CPF/CNPJ do Sócio
  static void searchCompanyByPartnerCpfCnpj(
      Company company, List<Company> companyList) {
    int aux = 0;
    for (var i = 0; i < companyList.length; i++) {
      if (companyList[i] == company) {
        aux++;
      }
    }
    if (aux > 0) {
      print(company);
    } else {
      print(company);
    }
  }

  //Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);
  static void displayCompanyList(Company company, List<Company> companyList) {
    for (var i = 0; i < companyList.length; i++) {
      print(
          "Registered companies\n, Company ID: ${companyList[i].id},\n Registration Date: ${companyList[i].registrationDate},\n CNPJ: ${companyList[i].getCnpj},\n Company: ${companyList[i].getCorporateName},\n Trade Name: ${companyList[i].getTradeName},\n Phone: ${companyList[i].getPhone}");
    }
  }

  static void backToMainMenu() {
    print("\nReturning to main menu...\n");
    mainMenu();
  }
}
