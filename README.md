A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

# Desafio Dart

Foi solicitado a criação de um sistema de registros de empresas. Toda empresa nesse sistema deve ter um sócio associado a ela, que pode ser uma Pessoa Física ou uma Pessoa Jurídica.

Sobre as entidades:

    Uma Empresa no sistema tem os seguintes dados: ID, Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP), Telefone, Horário do Cadastro e Sócio.
    Uma Pessoa Física tem os seguintes dados: Nome, CPF e Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP).
    Uma Pessoa Jurídica tem os seguintes dados: Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP).

O sistema ao ser executado deve oferecer as seguintes opções:

    Cadastrar uma nova empresa;
    Buscar Empresa cadastrada por CNPJ;
    Buscar Empresa por CPF/CNPJ do Sócio;
    Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);
    Excluir uma empresa (por ID);
    Sair.

Requisitos:

    Toda pessoa seja física ou jurídica, devem saber validar seu documento (CPF/CNPJ);
    O programa deve ser criado considerando os recursos disponíveis da Orientação à Objetos e boas práticas;
    O programa deve ter no mínimo uma herança;
    CPF e CNPJ são do tipo String, mas o input do usuário será apenas números;
    Telefone é do tipo String, mas o input do usuário será apenas números, ex.: 81987654321;
    CEP é do tipo String, mas o input do usuário será apenas números;
    O ID deve ser único, para cada Empresa cadastrada;
    O horário de cadastro deve ser obtido automaticamente pelo sistema;
    A impressão do conteúdo de uma empresa deve atender no mínimo a seguinte formatação:

ID: ca3e6c78-dae6-4629-b819-e5576c00f68b
CNPJ: 11.941.838/0001-04 Data Cadastro: 2022-08-31 22:37:17.921952
Razão Social: Elisa e Flávia Pães e Doces ME
Nome Fantasia: Pães e Doces
Telefone: (19) 9 8838-0630
Endereço: Rua Três, 338, Vila Industrial, Piracicaba/SP, 13.412-233
Sócio:
CPF: 763.679.800-08
Nome Completo: Mirella Kamilly Letícia Barbosa
Endereço: Rua Ulisses Bueno, 175, Vila Rosa, Aparecida de Goiânia/GO, 74.935-870

ID: fb7afcf0-2669-4e2b-8bd7-72d7456762b0
CNPJ: 92.456.516/0001-63  Data Cadastro: 2022-08-31 22:37:17.922076
Razão Social: Arthur e Andreia Telas Ltda
Nome Fantasia: Telas
Telefone: (11) 9 9572-6906
Endereço: Rua Domingos Vendemiati, 154, Parque Recanto do Parrilho, Jundiaí/SP, 13.219-051
Sócio:
CNPJ: 87.009.263/0001-40
Razão Social: Lavínia e Tereza Locações de Automóveis Ltda
Nome Fantasia: Loc. Auto
Endereço: Rua Ângelo Alberto Nesti, 639, Bussocaba, Osasco/SP, 06.053-060