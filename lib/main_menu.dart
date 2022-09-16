import 'package:dart_challenge/input_functions.dart';
import 'package:dart_challenge/company_class.dart';


void mainMenu() {
  bool condition = true;
  List<Company> companyList = [];
  //List<Map<String, dynamic>> companyList = [];

  while (condition) {
    print("Company Registration System");
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
        Inputs.addCompany(companyList);
        Inputs.addPartner();
        break;
      case 2:
        //Buscar Empresa cadastrada por CNPJ;
        print("\x1B[2J\x1B[0;0H");
        Inputs.searchCompanyByCnpj(companyList);
        Inputs.pressEnter();
        print("\x1B[2J\x1B[0;0H");
        break;
      case 3:
        //Buscar Empresa por CPF/CNPJ do Sócio;
        print("\x1B[2J\x1B[0;0H");
        Inputs.searchCompanyMemberCpfCnpj(companyList);
        Inputs.pressEnter();
        break;
      case 4:
        //Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);
        //print("Selecione o contato que deseja excluir:");
        Inputs.displayCompanyList();
        Inputs.pressEnter();
        break;
      case 5:
        //Excluir uma empresa (por ID);
        Inputs.delCompanyId(companyList);
        break;
      case 6:
        //Sair
        print("Ending the program...");
        condition = false;
        break;
      default:
        print("Please choose a valid option");
    }
  }
}


