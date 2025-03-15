#include <stdio.h>
#include <locale.h>

#define MAX_SHORT_STRING 50
#define MAX_ALUNOS 10
#define MAX_MATRICULA 6

struct CadastroDeAlunos {
    char nome[MAX_SHORT_STRING];
    int idade;
    int matricula[MAX_MATRICULA];
};
typedef struct CadastroDeAlunos cadastro;

void limparBufferEntrada();
void lerCadastro(cadastro Aluno[MAX_ALUNOS], int i);
void imprimirCadastro(cadastro Aluno[MAX_ALUNOS], int i);
void explicarPrograma();

int main() {
    setlocale(LC_ALL, "Portuguese");
    int numAlunos, i;
    cadastro Aluno[MAX_ALUNOS];

    explicarPrograma();
    
    printf("\n	Quantos alunos deseja cadastrar?: ");
    scanf("%d", &numAlunos);
    printf("\n");
    
    limparBufferEntrada();
    
    for(i = 0; i < numAlunos; i++) {
        lerCadastro(Aluno, i);
        printf("\n");
    }

    printf("\n");

    for(i = 0; i < numAlunos; i++) {
        printf("	- Aluno %d:\n", i + 1);
        imprimirCadastro(Aluno, i);
        printf("\n");
    }
}

void limparBufferEntrada() {
    int c;
    while((c = getchar()) != '\n' && c != EOF);
}

void lerCadastro(cadastro Aluno[MAX_ALUNOS], int i) {
    int j, k;

    printf("	Nome: ");
    fgets(Aluno[i].nome, MAX_SHORT_STRING, stdin);
    
    for(j = 0; Aluno[i].nome[j] != '\n'; j++);
        Aluno[i].nome[j] = '\0'; // Substitui o \n por \0
    
    printf("	Idade: ");
    scanf("%d", &Aluno[i].idade);
    printf("	Matrícula (6 dígitos): ");

    for(j = 0; j < MAX_MATRICULA; j++)
        scanf("%1d", &Aluno[i].matricula[j]); // Lê um dígito por vez (%1d)
    
    limparBufferEntrada();
}

void imprimirCadastro(cadastro Aluno[MAX_ALUNOS], int i) {
    int j;

    printf("	Nome: %s\n", Aluno[i].nome);
    printf("	Idade: %d\n", Aluno[i].idade);
    
    printf("	Matrícula: ");
    for(j = 0; j < MAX_MATRICULA; j++)
        printf("%d", Aluno[i].matricula[j]);
    printf("\n");
}

void explicarPrograma() {
    printf("\n");
    printf("	Esse programa cadastra alunos de uma turma usando uma structure.\n");
    printf("	Para isso, ele pede o nome, a idade e a matrícula de cada aluno.\n");
    printf("	Para a matrícula, ele pede um número de 6 dígitos.\n");
    printf("	Depois de cadastrar todos os alunos, ele imprime os dados de cada um.\n\n");
}