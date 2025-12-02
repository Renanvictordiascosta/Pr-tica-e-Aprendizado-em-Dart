// Bibliotecas importadas
import 'dart:math';
import 'dart:io';

void main () {
    
    // Declaraçao de variáveis excenciais e listas
    var random = Random();
    
    int registro = 0;
    
    List <String> primeiro_nome = ["Maria", "José", "Ana", "João", "Antônio", "Francisco", "Pedro", "Carlos", "Lucas", "Luiz", "Paulo", "Gabriel", "Marcos", "Davi", "Rafael", "Luis", "Daniel", "Miguel", "Gustavo", "Felipe", "Guilherme", "Francisca", "Eduardo", "Matheus", "Julia", "Bruno", "Marcelo", "Arthur", "Leonardo", "Rodrigo", "André", "Antônia", "Juliana", "Adriana", "Fernanda", "Marcia", "Samuel", "Fernando", "Patricia", "Fábio", "Raimundo", "Amanda", "Vitor", "Alice", "Letícia", "Laura", "Aline", "Manoel", "Mateus", "Leandro", "Bruna", "Thiago", "Mariana", "Jessica", "Sandra", "Anderson", "Beatriz", "Vitoria", "Camila", "Larissa", "Marcio", "Ricardo", "Alexandre", "Jorge", "Gabriela", "Luciana", "Enzo", "Diego", "Vanessa", "Vinícius", "Edson", "Roberto", "Helena", "Luana", "Victor", "Tiago", "Isabela", "Sérgio", "Sebastião", "Vera", "Cláudia", "Júlio", "Renanta", "Sônia", "Simone", "Eliane", "Débora", "Rafaela", "Cláudio", "Nicolas", "Rita", "Luciano", "Adriano", "Cristiane", "Henrique", "Sara", "Carla", "Heitor", "Rosângela", "Natália", "Alex", "Renato", "Luiza", "Jaqueline", "Sofia", "Caio", "Daniela", "Raquel", "Andreia", "Lara", "Bianca", "Josefa", "Fabiana", "Igor", "Livia", "Ângela", "Marlene", "Geraldo", "Rogério", "Douglas"];
    
    List <String> sobrenome = ["Silva", "Santos", "Oliveira", "Souza", "Pereira", "Ferreira", "Lima", "Alves", "Rodrigues", "Costa", "Sousa", "Gomes", "Nascimento", "Araújo", "Ribeiro", "Almeida", "Jesus", "Barbosa", "Soares", "Carvalho", "Martins", "Lopes", "Vieira", "Rocha", "Dias", "Gonçalves", "Fernandes", "Santana", "Andrade", "Batista", "Nunes", "Freitas", "Conceição", "Melo", "Moreira", "Cardoso", "Reis", "Cruz", "Ramos", "Mendes", "Marques", "Machado", "Rosa", "Brito", "Moraes", "Moura", "Teixeira", "Barros", "Castro", "Borges"];
    
    List <int> idade = [];
    
    List <String> estado_civil = ["Casado", "Solteiro", "Viúvo", "Divorciado", "União Estável"];
    
    List <double> altura = [];
    
    List <double> peso = [];
    
    // Preenchimento da lista de idade
    for (int i = 18; i <= 85; i++) {
        
        idade.add(i);
        
    }
    
    // Preenchimento da lista de alturas
    for (double j = 1.50; j <= 2.10; j += 0.01) {
        
        altura.add(j);
        
    }
    
    // Preenchimento da lista de pesos
    for (double j = 50; j <= 150; j += 0.01) {
        
        peso.add(j);
        
    }

    // Lista da base de dados das pessoas
    List <dynamic> pessoas = [];

    // Loop para criação dos dados sintéticos
    while (registro <= 1000) {

        // Criação do nome da pessoa
        String nome_pessoa = "${primeiro_nome[random.nextInt(primeiro_nome.length)]}" + " " + "${sobrenome[random.nextInt(sobrenome.length)]}";
        
        // Criação da idade da pessoa
        int idade_pessoa = idade[random.nextInt(idade.length)];

        // Criação do estado civil da pessoa
        String estado_civil_pessoa = estado_civil[random.nextInt(estado_civil.length)]; 

        // Criação e tratamento do peso da pessoa
        dynamic peso_pessoa = peso[random.nextInt(peso.length)];
        peso_pessoa = peso_pessoa.toStringAsFixed(2);
        peso_pessoa = double.parse(peso_pessoa);

        // Criação e tratamento da altura da pessoa
        dynamic altura_pessoa = altura[random.nextInt(altura.length)];
        altura_pessoa = altura_pessoa.toStringAsFixed(2);
        altura_pessoa = double.parse(altura_pessoa);

        // Cálculo do imc com base nos valores criados de peso e altura, logo seguido do tratamento
        dynamic imc_pessoa = (peso_pessoa) / (altura_pessoa * altura_pessoa);
        imc_pessoa = imc_pessoa.toStringAsFixed(2);
        imc_pessoa = double.parse(imc_pessoa);
        
        // Criação das informaçoes sintéticas de uma pessoa
        Map <String, dynamic> pessoa = {
            
            "Nome" : nome_pessoa,
            "Idade" : idade_pessoa,
            "Estado Civil" : estado_civil_pessoa,
            "Peso (Kg)" : peso_pessoa,
            "Altura (Metros)" : altura_pessoa,
            "IMC" : imc_pessoa
            
        };
        
        // Adicionamento dos dados individuais na lista
        pessoas.add(pessoa);
        
        registro = registro + 1;
        
    }
    
    // Demonstração de como ficou a base de dados
    stdout.write("Banco de Dados das Pessoas Geradas: ${pessoas}");
    
}
