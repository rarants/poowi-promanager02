# Programação Orientada a Objetos da Web I - Trabalho ProManager 02
Trabalho II desenvolvido durante a disciplina de Programação Orientada a Objetos da Web I
Implementação de sistema de gerenciamento de tarefas (quadro kanban): CRUD de usuários, quadros, colunas, cards e etiquetas. Atualmente, 
foco no backend (java), portanto, ainda não há drag and drop dos itens dentro do quadro nem estilização. 

> Utilizando-se o [IntelliJ IDEA](https://www.jetbrains.com/pt-br/idea/) para implementação e o [Maven](https://mvnrepository.com/) 
> para lidar com versões das ferramentas, bibliotecas e frameworks.

## :zap: A elaboração :zap: 
### 🔸 Semelhante ao primeiro projeto, migrando os controllers para o modelo Spring, alterando os formulários nos JSP para Spring Form e mantendo o restante do projeto 🔸

## :zap: O projeto :zap:
### Descrição do projeto
1 - INTRODUÇÃO

O projeto visa utilizar na prática os conhecimentos adquiridos ao longo do curso até o
momento com enfoque nos conhecimentos obtidos na disciplina de Programação Orientada
a Objetos da Web I do curso de Sistemas para Internet. Além disso, o projeto visa auxiliar a
gerenciar as atividades do dia a dia, através de um quadro interativo que segue o modelo
Kanban. Esse modelo permitirá adicionar quadros/murais interativos e tarefas dentro dos
mesmos, definindo lembretes, estado de conclusão entre outras informações . Assim, o
usuário poderá gerenciar suas tarefas dinamicamente por meio de software, sem precisar
depender de um planner físico para tal.

Atualmente já existem alternativas desse modelo de sistema, que utiliza a metodologia
Kanban. Assim sendo, a proposta deste trabalho vem como uma alternativa para os
softwares existentes, que poderá ser disponibilizada gratuitamente e usada como auxílio ao
estudo de outros estudantes da área da informática, bem como uma forma de colocar em
prática os conhecimentos obtidos em um sistema de já sucesso.

2 - ESTRUTURA DO PROJETO

A estrutura planejada para o projeto visa englobar
- Usuários individuais do sistema, por meio de cadastro e login, armazenando
as seguintes informações, email, nome de usuário e senha/
- Usuários individuais podem cadastrar quadros /murais. Cada quadro terá um
nome e poderá ter também uma descrição e a opção de ser público ou não.

>Se o quadro for público, deve ser gerada uma url pública para edição e
visualização do quadro. Do contrário, somente o usuário proprietário do
quadro terá permissão para acessar e editar.

- Em cada quadro, o usuário poderá cadastrar colunas, seguindo o modelo
Kanban. Cada coluna possui um título ou nome e a ordem de exibição da
mesma dentro do quadro, que será gerada automaticamente e poderá ser
editada.
- Em cada coluna, por sua vez, o usuário poderá cadastrar tarefas/cards de
tarefas que terão obrigatoriamente um título, status (pendente, em
andamento ou concluído), ordem de exibição (que seguirá a mesma lógica
usada nas colunas) e poderá ter também data de início e término e a data da
última alteração realizada.
- Também em cada quadro, deve ser possível adicionar tags/etiquetas que
poderão ser vinculadas às tarefas. Cada tag precisará conter um título e uma
cor, podendo ser definida uma cor padrão de acordo com o layout utilizado na
aplicação. (a adicionar)

### Modelo Relacional (Diagrama Entidade - Relacionamento/ER)
A partir dos requisitos definidos anteriormente, foram gerados os diagramas relacional e lógico, conforme pode ser visto abaixo

![img](./poow1.jpg)
