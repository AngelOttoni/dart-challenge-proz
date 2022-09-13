import 'package:dart_challenge/company_class.dart';

class CompanyRegistrationSystem {
  //Cadastrar uma nova empresa;
  Map addCompany(Company company, List<Company> companyList) {
    companyList.add(company);
    var response = {"status": 201, "message": "Company successfully added!"};

    return response;
  }

  //Excluir uma empresa (por ID);
  Map removeCompany(Company company, List<Company> companyList) {
    companyList.remove(company);
    var response = {"status": 200, "message": "Company successfully deleted!"};

    return response;
  }

  //Buscar Empresa cadastrada por CNPJ;
  void searchCompanyByCnpj(Company company, List<Company> companyList) {
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
  void searchCompanyByPartnerCpfCnpj(
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
  void displayCompanyList(Company company, List<Company> companyList) {
    for (var i = 0; i < companyList.length; i++) {
      print(
          "Registered companies\n, Company ID: ${companyList[i].id},\n Registration Date: ${companyList[i].registrationDate},\n CNPJ: ${companyList[i].getCnpj},\n Company: ${companyList[i].getCorporateName},\n Trade Name: ${companyList[i].getTradeName},\n Phone: ${companyList[i].getPhone},\n Patner: ${companyList[i].partner}");
    }
  }
}