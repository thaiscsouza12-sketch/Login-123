# 📱 Tela de Login em Flutter

Este projeto apresenta uma implementação simples de uma **tela de login utilizando Flutter e Dart**.

O objetivo é demonstrar, de forma prática, como criar uma interface contendo:

* Barra superior com título;
* Título da tela;
* Campo para e-mail;
* Campo para senha;
* Botão de entrada;
* Estilização básica dos componentes;
* Ação executada ao pressionar o botão.

---

## 📋 Sumário

* [Sobre o projeto](#-sobre-o-projeto)
* [Tecnologias utilizadas](#-tecnologias-utilizadas)
* [Estrutura do código](#-estrutura-do-código)
* [Passo 1 — Importando o Flutter](#-passo-1--importando-o-flutter)
* [Passo 2 — Criando a função principal](#-passo-2--criando-a-função-principal)
* [Passo 3 — Criando o MaterialApp](#-passo-3--criando-o-materialapp)
* [Passo 4 — Criando a tela de login](#-passo-4--criando-a-tela-de-login)
* [Passo 5 — Criando o Scaffold](#-passo-5--criando-o-scaffold)
* [Passo 6 — Criando a AppBar](#-passo-6--criando-a-appbar)
* [Passo 7 — Criando o conteúdo](#-passo-7--criando-o-conteúdo)
* [Passo 8 — Criando os campos de entrada](#-passo-8--criando-os-campos-de-entrada)
* [Passo 9 — Criando o botão](#-passo-9--criando-o-botão)
* [Código completo](#-código-completo)
* [Como executar o projeto](#-como-executar-o-projeto)
* [Resultado esperado](#-resultado-esperado)
* [Possíveis melhorias](#-possíveis-melhorias)

---

## 📌 Sobre o projeto

A aplicação consiste em uma tela inicial de autenticação.

O usuário visualiza dois campos:

1. **E-mail**
2. **Senha**

Depois de preencher os campos, ele pode pressionar o botão **Entrar**.

Neste exemplo, o botão ainda **não realiza uma autenticação real**. Ao ser pressionado, apenas uma mensagem é exibida no console:

```text
Botão pressionado
```

Portanto, este projeto tem como principal finalidade demonstrar a construção da **interface gráfica de uma tela de login em Flutter**.

---

## 🛠 Tecnologias utilizadas

O projeto utiliza:

* **Flutter** — framework para desenvolvimento de aplicações multiplataforma;
* **Dart** — linguagem de programação utilizada pelo Flutter;
* **Material Design** — conjunto de componentes visuais utilizado pelo Flutter.

O único pacote necessário neste exemplo é o próprio:

```dart
package:flutter/material.dart
```

---

# 🧩 Estrutura do código

De forma simplificada, podemos visualizar o funcionamento da aplicação desta maneira:

```text
main()
  │
  └── MaterialApp
        │
        └── login
              │
              └── Scaffold
                    │
                    ├── AppBar
                    │
                    └── Body
                          │
                          └── Padding
                                │
                                └── Column
                                      │
                                      ├── Text
                                      ├── SizedBox
                                      ├── TextField
                                      ├── SizedBox
                                      ├── TextField
                                      ├── SizedBox
                                      └── ElevatedButton
```

Cada componente possui uma responsabilidade específica na construção da interface.

---

# 🚀 Passo 1 — Importando o Flutter

O primeiro passo é importar a biblioteca de componentes visuais do Flutter:

```dart
import 'package:flutter/material.dart';
```

O pacote `material.dart` disponibiliza diversos componentes utilizados na aplicação, como:

* `MaterialApp`;
* `Scaffold`;
* `AppBar`;
* `Text`;
* `TextField`;
* `ElevatedButton`;
* `Column`;
* `Padding`;
* `SizedBox`;
* `Colors`.

Sem essa importação, esses componentes não poderiam ser utilizados diretamente no código.

> **Observação:** no código apresentado, o `import` aparece com uma barra invertida (`package\:flutter`). Em um arquivo Dart real, o correto é utilizar `package:flutter/material.dart`.

---

# ▶️ Passo 2 — Criando a função principal

Toda aplicação Dart possui um ponto de entrada. Nesse projeto, ele é definido pela função `main()`:

```dart
void main() {
  runApp(
    MaterialApp(
      home: login(),
    ),
  );
}
```

A função:

```dart
main()
```

é executada quando a aplicação é iniciada.

Dentro dela, utilizamos:

```dart
runApp()
```

A função `runApp()` recebe o widget que será utilizado como raiz da aplicação.

---

# 📱 Passo 3 — Criando o MaterialApp

O código utiliza:

```dart
MaterialApp(
  home: login(),
)
```

O `MaterialApp` é um dos principais widgets utilizados em aplicações Flutter que seguem o Material Design.

A propriedade:

```dart
home: login()
```

define qual será a primeira tela apresentada ao usuário.

Nesse caso, a primeira tela será a classe:

```dart
login
```

Uma boa prática de nomenclatura em Dart seria utilizar uma classe com inicial maiúscula, por exemplo:

```dart
Login
```

Assim, profissionalmente, o ideal seria:

```dart
home: Login()
```

---

# 🖥️ Passo 4 — Criando a tela de login

A tela é criada através da classe:

```dart
class login extends StatelessWidget {
```

Ela herda de:

```dart
StatelessWidget
```

Isso significa que a interface, nesse exemplo, não possui um estado interno que seja alterado durante a execução.

A classe possui o construtor:

```dart
const login({super.key});
```

E implementa o método:

```dart
@override
Widget build(BuildContext context)
```

O método `build()` é responsável por construir a interface visual do widget.

---

# 🏗️ Passo 5 — Criando o Scaffold

Dentro do método `build()`, utilizamos:

```dart
return Scaffold(
```

O `Scaffold` fornece uma estrutura básica para uma tela de aplicativo.

Ele permite trabalhar facilmente com elementos como:

* `AppBar`;
* `body`;
* `FloatingActionButton`;
* `Drawer`;
* `BottomNavigationBar`.

Neste projeto, utilizaremos principalmente:

```dart
Scaffold(
  appBar: ...,
  body: ...,
)
```

---

# 🔝 Passo 6 — Criando a AppBar

A barra superior da aplicação é criada com:

```dart
appBar: AppBar(
  title: Text(
    'Tela de Login',
    style: TextStyle(
      color: Colors.white,
    ),
  ),
  backgroundColor: Color(0xFF002060),
),
```

## Título

O título é definido por:

```dart
title: Text('Tela de Login')
```

O widget `Text` é responsável por apresentar textos na interface.

Também podemos configurar sua aparência:

```dart
style: TextStyle(
  color: Colors.white,
)
```

Nesse caso, a cor do texto é branca.

## Cor da AppBar

A propriedade:

```dart
backgroundColor: Color(0xFF002060)
```

define a cor de fundo da barra.

O valor:

```text
0xFF002060
```

representa uma cor hexadecimal.

---

# 📦 Passo 7 — Criando o conteúdo

O conteúdo principal da tela é definido através da propriedade:

```dart
body:
```

Neste projeto, utilizamos:

```dart
body: Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      ...
    ],
  ),
),
```

## Padding

O `Padding` adiciona espaçamento ao redor do conteúdo.

```dart
padding: EdgeInsets.all(16)
```

significa que será aplicado um espaçamento de 16 pixels em todos os lados.

---

## Column

O widget:

```dart
Column
```

organiza seus elementos verticalmente.

Os componentes são inseridos dentro de:

```dart
children: [
  ...
]
```

A ordem em que os widgets aparecem nessa lista determina a ordem em que serão apresentados na tela.

---

# 📝 Passo 8 — Criando o título da tela

O primeiro elemento da `Column` é:

```dart
Text(
  'Acesso ao sistema',
  style: TextStyle(
    fontSize: 24,
  ),
),
```

Esse componente apresenta o texto:

> Acesso ao sistema

A propriedade:

```dart
fontSize: 24
```

define o tamanho da fonte.

---

# ↕️ Utilizando SizedBox

Entre os componentes existem widgets como:

```dart
SizedBox(height: 24)
```

O `SizedBox` é utilizado para criar espaçamento.

Nesse caso:

```dart
height: 24
```

cria 24 pixels de espaço vertical.

Por exemplo:

```dart
Text('Acesso ao sistema'),

SizedBox(height: 24),

TextField(),
```

produz um espaço entre o título e o campo de texto.

---

# 📧 Passo 9 — Criando o campo de e-mail

O campo de e-mail é criado com:

```dart
TextField(
  decoration: InputDecoration(
    labelText: 'E-mail',
  ),
),
```

O `TextField` permite que o usuário digite informações.

Já o:

```dart
InputDecoration
```

permite configurar visualmente o campo.

Neste exemplo:

```dart
labelText: 'E-mail'
```

define o texto exibido como identificação do campo.

---

# 🔐 Passo 10 — Criando o campo de senha

O campo de senha utiliza outro `TextField`:

```dart
TextField(
  obscureText: true,
  decoration: InputDecoration(
    labelText: 'senha',
  ),
),
```

A principal diferença está em:

```dart
obscureText: true
```

Essa propriedade faz com que os caracteres digitados sejam ocultados.

Por exemplo:

```text
MinhaSenha123
```

será visualmente apresentado como caracteres ocultos.

Isso é importante para campos que recebem informações sensíveis.

---

# 🔴 Passo 11 — Criando o botão Entrar

O botão é criado com:

```dart
ElevatedButton(
  onPressed: () {
    print('Botão pressionado');
  },
  child: Text('Entrar'),
),
```

O widget `ElevatedButton` representa um botão elevado.

O texto apresentado ao usuário é:

```dart
Text('Entrar')
```

---

## ⚙️ Evento onPressed

A propriedade:

```dart
onPressed:
```

define o que deve acontecer quando o usuário pressionar o botão.

Neste projeto:

```dart
onPressed: () {
  print('Botão pressionado');
}
```

faz com que a mensagem seja enviada para o console.

Isso **não realiza login**.

Em uma aplicação real, essa função poderia:

1. Validar o e-mail;
2. Validar a senha;
3. Enviar os dados para uma API;
4. Verificar as credenciais;
5. Exibir uma mensagem de erro;
6. Redirecionar o usuário para outra tela.

---

# 🎨 Estilizando o botão

O botão possui:

```dart
style: ElevatedButton.styleFrom(
  backgroundColor: Color(0xFFFF2800),
  foregroundColor: Colors.white,
),
```

A propriedade:

```dart
backgroundColor
```

define a cor de fundo.

Já:

```dart
foregroundColor
```

define a cor dos elementos em primeiro plano, como o texto do botão.

Neste caso:

```dart
backgroundColor: Color(0xFFFF2800)
```

define uma cor vermelha/alaranjada.

E:

```dart
foregroundColor: Colors.white
```

define o texto como branco.

---

# 💻 Código completo

A versão organizada do código pode ser apresentada da seguinte maneira:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
    ),
  );
}

// Criando a tela de login
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Título do APP
      appBar: AppBar(
        title: const Text(
          'Tela de Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF002060),
      ),

      // Conteúdo da página
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Título da tela
            const Text(
              'Acesso ao sistema',
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 24),

            // Campo para o e-mail
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),

            const SizedBox(height: 24),

            // Campo para a senha
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),

            const SizedBox(height: 24),

            // Botão Entrar
            ElevatedButton(
              onPressed: () {
                print('Botão pressionado');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF2800),
                foregroundColor: Colors.white,
              ),
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
```

### 🔎 O que foi melhorado?

A lógica original foi preservada, mas foram aplicadas algumas boas práticas:

* `login` foi alterado para `Login`, seguindo a convenção de nomenclatura do Dart;
* Foram adicionados `const` onde os widgets são constantes;
* A formatação foi organizada para facilitar a leitura;
* O `import` foi corrigido para a sintaxe válida do Dart;
* `Senha` foi padronizado com letra maiúscula.

---

# ▶️ Como executar o projeto

## 1. Instale o Flutter

Primeiro, é necessário ter o Flutter instalado na máquina.

Depois, verifique a instalação executando:

```bash
flutter doctor
```

O comando verifica se o ambiente está configurado corretamente.

---

## 2. Crie um novo projeto

Execute:

```bash
flutter create tela_login
```

Depois entre na pasta:

```bash
cd tela_login
```

---

## 3. Abra o projeto

Abra o projeto em uma IDE, como:

* Visual Studio Code;
* Android Studio;
* IntelliJ IDEA.

---

## 4. Localize o arquivo principal

O arquivo normalmente utilizado é:

```text
lib/main.dart
```

Substitua o conteúdo desse arquivo pelo código apresentado neste README.

---

## 5. Execute a aplicação

Com um dispositivo ou emulador disponível, execute:

```bash
flutter run
```

O Flutter irá compilar e executar a aplicação.

---

# 🖼️ Resultado esperado

Ao executar o aplicativo, a tela deverá apresentar aproximadamente esta estrutura:

```text
┌─────────────────────────────────────┐
│          Tela de Login              │
├─────────────────────────────────────┤
│                                     │
│        Acesso ao sistema            │
│                                     │
│        E-mail                       │
│        ───────────────────          │
│                                     │
│        Senha                        │
│        ───────────────────          │
│                                     │
│             [ Entrar ]              │
│                                     │
└─────────────────────────────────────┘
```

A barra superior terá fundo azul e o botão terá fundo vermelho/alaranjado.

---

# 🔧 Possíveis melhorias

Apesar de funcionar como exemplo de interface, esta implementação ainda pode ser aprimorada para utilização em um sistema real.

## 1. Adicionar validação

Atualmente, o usuário pode pressionar o botão sem preencher os campos.

Uma evolução seria verificar:

```text
E-mail preenchido?
       ↓
Senha preenchida?
       ↓
Dados válidos?
       ↓
Realizar autenticação
```

---

## 2. Utilizar Form

Uma abordagem mais adequada para formulários seria utilizar:

```dart
Form
```

junto com:

```dart
GlobalKey<FormState>
```

Isso permite centralizar e controlar as validações.

---

## 3. Utilizar TextEditingController

Para acessar os valores digitados pelo usuário, podemos utilizar:

```dart
TextEditingController
```

Por exemplo:

```dart
final emailController = TextEditingController();
```

E associá-lo ao campo:

```dart
TextField(
  controller: emailController,
)
```

Assim, o programa poderá recuperar o e-mail digitado.

---

## 4. Implementar autenticação

Em uma aplicação real, o botão **Entrar** poderia enviar os dados para um servidor:

```text
Aplicativo Flutter
       │
       ▼
   API REST
       │
       ▼
Banco de dados
       │
       ▼
Validação das credenciais
       │
       ▼
Resposta para o aplicativo
```

A autenticação poderia ser implementada utilizando uma API própria ou serviços especializados.

---

## 5. Criar navegação

Depois de um login bem-sucedido, o usuário poderia ser encaminhado para uma tela inicial:

```text
Login
  │
  │ credenciais válidas
  ▼
Home
  │
  ├── Perfil
  ├── Configurações
  └── Sair
```

No Flutter, isso pode ser implementado utilizando o sistema de navegação e rotas.

---

# 📚 Conceitos Flutter apresentados

Este pequeno projeto permite compreender vários conceitos fundamentais do Flutter:

| Conceito          | Utilização                        |
| ----------------- | --------------------------------- |
| `main()`          | Ponto de entrada da aplicação     |
| `runApp()`        | Inicializa a aplicação Flutter    |
| `MaterialApp`     | Estrutura principal do aplicativo |
| `StatelessWidget` | Widget sem estado mutável         |
| `Scaffold`        | Estrutura básica da tela          |
| `AppBar`          | Barra superior                    |
| `Text`            | Exibição de textos                |
| `TextField`       | Entrada de dados                  |
| `InputDecoration` | Configuração visual do campo      |
| `Column`          | Organização vertical              |
| `Padding`         | Espaçamento                       |
| `SizedBox`        | Espaçamento entre componentes     |
| `ElevatedButton`  | Botão de ação                     |
| `onPressed`       | Evento de clique                  |
| `TextStyle`       | Estilização de textos             |
| `Color`           | Definição de cores                |

---

# 🎯 Conclusão

Este projeto demonstra os fundamentos necessários para criar uma **tela de login simples utilizando Flutter**.

A aplicação começa no método `main()`, inicializa um `MaterialApp` e apresenta a classe `Login`.

A tela é estruturada utilizando `Scaffold`, contendo uma `AppBar` e um `body`. Dentro do corpo são utilizados `Column`, `Text`, `TextField`, `SizedBox` e `ElevatedButton` para construir a interface.

Embora o botão ainda não faça uma autenticação real, essa estrutura serve como ponto de partida para evoluir o projeto para um sistema completo, adicionando:

* validação de formulário;
* autenticação;
* integração com API;
* banco de dados;
* tratamento de erros;
* navegação entre telas;
* armazenamento de sessão;
* controle de usuários.
