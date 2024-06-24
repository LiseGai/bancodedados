1. Sistema gerenciador de banco de dados: É o conjunto de programas de computador (softwares) responsáveis pelo gerenciamento de bases de dados. O principal objetivo
   é retirar da aplicação cliente a responsabilidade de gerenciar o acesso, manipulação e organização dos dados. O SGBD disponibiliza uma interface para que os seus
   clientes possam incluir, alterar ou consultar dados.
2. Restrições em banco de dados: As restrições de dados podem ser condicionais ou incondicionais. É possível restringir o acesso a dados para um usuário ou para um
   grupo de usuários. Os dados podem ser ocultos, somente leitura ou obrigatórios.
   Existem cinco tipos de restrições: NOT NULL (impede que os valores sejam nulos); exclusiva (proíbe valores duplicados dentro de tabelas; chave primária (com
   propriedades de restrição exclusiva, define relacionamentos entre tabelas); chave estrangeira (é uma restrição referencial que informa que o ID de uma tabela
   tem informações em outra tabela); restrição de verificação (configura restrições em dados adicionados em uma tabela específica)
3. Modelo relacional: Se trata de um modelo de dados representativo (ou de implementação), adequado a ser o modelo subjacente de um Sistema Gerenciador de
   Banco de Dados (SGBD), que se baseia no princípio de que todos os dados estão armazenados em tabelas (ou, matematicamente falando, relações)
4. Modelagem conceitual: Usados no começo da modelagem de um banco de dados, serve para organizar e definir conceitos e regras baseados em requisitos de caso de uso.
   Eles são os menos detalhados dos três tipos de modelos de dados, mas de forma alguma isso os torna menos úteis
5. Modelagem lógica: Usa a estrutura do modelo conceitual e agrega outras informações que garantem a lógica do sistema sendo desenvolvido
6. Modelagem física: É o modelo feito de maneira mais detalhada que ajudam os administradores e desenvolvedores do banco de dados a implementar a lógica de negócios
   em um banco de dados físico
7. Linguagem SQL: É a linguagem para a manipulação do banco de dados e suas tabelas, incluindo o acesso às suas informações e cálculos como somatórios e média, dentre
   outros
8. Data Definition Language (DDL): É responsável pelos comandos de criação e alteração no banco de dados, sendo composto por três comandos: CREATE, ALTER e DROP, além
   de permitir definir as novas tabelas e os elementos que serão associados a elas
9. Data Manipulation Language (DML): É a linguagem usada para manipular os dados armazenados no banco de dados. As principais operações DML incluem: INSERT: Usado para
   adicionar novos registros a uma tabela. SELECT: Utilizado para recuperar dados de uma ou mais tabelas
10. Boas práticas em modelagem de banco de dados: Manter os dados organizados no banco; evitar a possibilidade de dados repetidos com ortografias alternativas; cuide
    da estrutura do BD (como, por exemplo, considerar cada ponto de vista durante o planejamento; escolher um tipo de banco de dados; normalizar os dados para obter o
    mínimo de redundância; tornar as estruturas transparentes; definir restrições para manter a integridade dos dados; sempre documentar tudo)


