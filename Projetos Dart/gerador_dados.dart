import 'dart:math';
import 'dart:io';

void main () {
    
    var random = Random();
    
    int registro = 0;
    
    List <String> primeiro_nome = ["Maria", "José", "Ana", "João", "Antônio", "Francisco", "Pedro", "Carlos", "Lucas", "Luiz", "Paulo", "Gabriel", "Marcos", "Davi", "Rafael", "Luis", "Daniel", "Miguel", "Gustavo", "Felipe", "Guilherme", "Francisca", "Eduardo", "Matheus", "Julia", "Bruno", "Marcelo", "Arthur", "Leonardo", "Rodrigo", "André", "Antônia", "Juliana", "Adriana", "Fernanda", "Marcia", "Samuel", "Fernando", "Patricia", "Fábio", "Raimundo", "Amanda", "Vitor", "Alice", "Letícia", "Laura", "Aline", "Manoel", "Mateus", "Leandro", "Bruna", "Thiago", "Mariana", "Jessica", "Sandra", "Anderson", "Beatriz", "Vitoria", "Camila", "Larissa", "Marcio", "Ricardo", "Alexandre", "Jorge", "Gabriela", "Luciana", "Enzo", "Diego", "Vanessa", "Vinícius", "Edson", "Roberto", "Helena", "Luana", "Victor", "Tiago", "Isabela", "Sérgio", "Sebastião", "Vera", "Cláudia", "Júlio", "Renanta", "Sônia", "Simone", "Eliane", "Débora", "Rafaela", "Cláudio", "Nicolas", "Rita", "Luciano", "Adriano", "Cristiane", "Henrique", "Sara", "Carla", "Heitor", "Rosângela", "Natália", "Alex", "Renato", "Luiza", "Jaqueline", "Sofia", "Caio", "Daniela", "Raquel", "Andreia", "Lara", "Bianca", "Josefa", "Fabiana", "Igor", "Livia", "Ângela", "Marlene", "Geraldo", "Rogério", "Douglas"];
    
    List <String> sobrenome = ["Silva", "Santos", "Oliveira", "Souza", "Pereira", "Ferreira", "Lima", "Alves", "Rodrigues", "Costa", "Sousa", "Gomes", "Nascimento", "Araújo", "Ribeiro", "Almeida", "Jesus", "Barbosa", "Soares", "Carvalho", "Martins", "Lopes", "Vieira", "Rocha", "Dias", "Gonçalves", "Fernandes", "Santana", "Andrade", "Batista", "Nunes", "Freitas", "Conceição", "Melo", "Moreira", "Cardoso", "Reis", "Cruz", "Ramos", "Mendes", "Marques", "Machado", "Rosa", "Brito", "Moraes", "Moura", "Teixeira", "Barros", "Castro", "Borges"];
    
    List <int> idade = [];
    
    List <String> estado_civil = ["Casado", "Solteiro", "Viúvo", "Divorciado", "União Estável"];
    
    List <double> altura = [];
    
    List <double> peso = [];
    
    for (int i = 18; i <= 85; i++) {
        
        idade.add(i);
        
    }
    
    for (double j = 1.50; j <= 2.10; j += 0.01) {
        
        altura.add(j);
        
    }
    
    for (double j = 50; j <= 150; j += 0.01) {
        
        peso.add(j);
        
    }

    stdout.write("Idade: ");
    stdout.write(idade);
    
    stdout.write("\n\n\nAltura: ");
    stdout.write(altura);
    
    stdout.write("\n\n\nPeso: ");
    stdout.write(peso);
    
}
