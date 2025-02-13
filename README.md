```markdown
# 🌍 Sistema de Gerenciamento de Planetas

Este é um aplicativo desenvolvido com **Flutter** e **SQLite** para gerenciar informações de planetas,
permitindo criar, visualizar, editar e excluir registros de planetas.

## 📌 Funcionalidades
✅ Cadastro de planetas com nome, distância do Sol, tamanho e apelido (opcional).  
✅ Listagem de planetas cadastrados.  
✅ Visualização de detalhes de um planeta.  
✅ Edição e exclusão de registros.  
✅ Persistência dos dados utilizando SQLite.  
✅ Interface amigável e intuitiva.  

## 📂 Estrutura do Projeto
O projeto segue uma arquitetura organizada em pastas para facilitar a manutenção e escalabilidade:
- **models/**: Definição da estrutura de dados dos planetas.
- **database/**: Configuração do SQLite e manipulação de dados.
- **screens/**: Telas do aplicativo (lista, detalhes e formulário).
- **api/**: Interface para integração futura com serviços externos.
- **services/**: Lógica de manipulação dos dados.
- **utils/**: Funções auxiliares como validações e formatações.
- **widgets/**: Componentes reutilizáveis para UI.
- **constants/**: Definições de constantes do projeto.
- **readme/**: Documentação do projeto.

## 🚀 Como Executar o Projeto
1. Instale o Flutter: [Flutter.dev](https://flutter.dev/docs/get-started/install)
2. Clone este repositório:
   ```sh
   git clone https://github.com/seu-usuario/seu-repositorio.git
   ```
3. Navegue até a pasta do projeto:
   ```sh
   cd nome-do-projeto
   ```
4. Instale as dependências:
   ```sh
   flutter pub get
   ```
5. Execute o aplicativo:
   ```sh
   flutter run
   ```

## 🔧 Tecnologias Utilizadas
- **Flutter** (Dart)
- **SQLite** (Persistência de dados)
- **Provider** (Gerenciamento de estado)

## 📌 Autor
Desenvolvido por Cawan E. de Oliveira. 
