# 📊 Fundamentos de SQL - Análises de Vendas 🗄️

## 📚 Tecnologias Utilizadas

O projeto foi desenvolvido usando as seguintes tecnologias e ferramentas:

- **MySQL 8.x** – Banco de dados relacional para criação de tabelas, inserção de dados e consultas.
- **SQL padrão ANSI** – Garantindo compatibilidade com diferentes bancos de dados.
- **VS Code** – IDE utilizada para editar e gerenciar os scripts SQL.
- **MySQL Workbench** – Ferramenta para execução e visualização das queries e do banco de dados.

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue) 
![VS Code](https://img.shields.io/badge/VS%20Code-IDE-brightgreen) 
![MySQL Workbench](https://img.shields.io/badge/MySQL_Workbench-IDE-orange) 
![GitHub](https://img.shields.io/badge/GitHub-Repo-black)  

> Repositório para estudo e prática de SQL, cobrindo criação de banco, tabelas, inserção de dados, joins, agregações, views e consultas avançadas.  

---

## 🧩 Sobre o Projeto

Este projeto demonstra como analisar dados de vendas usando **MySQL**, desde a criação de tabelas até a geração de **indicadores estratégicos**.  

> ⚠️ **Atenção:** Todos os dados das tabelas foram gerados de forma **fictícia com auxílio do ChatGPT**, para agilizar o processo e fins didáticos.

**Objetivos do projeto:**  

- 🏗️ Criar bancos de dados e tabelas.  
- 📝 Inserir e manipular dados fictícios.  
- 📊 Criar **views** para análise de faturamento e lucro.  
- 🏆 Gerar indicadores e rankings de produtos, categorias e clientes.  
- 📅 Entender o comportamento de vendas por dia, semana e mês.  
- 💻 Desenvolver usando **VS Code** e **MySQL Workbench**.  

---

## ⚙ Estrutura do Projeto

O repositório contém:  

- **`fundamentos_sql.sql`** – Script completo com:  
  - 🏦 Criação do banco de dados  
  - 🗂️ Criação de tabelas (`vendas_lojas`, `clientes`, `tabela_completa`)  
  - 📥 Inserção de dados fictícios  
  - 📆 Colunas geradas para datas (`mes`, `Dia`, `Dia_semana`)  
  - 🔍 Criação de **views** (`faturamento_categoria`, `faturamento_produto`, `faturamento_dia`)  
  - 📈 Consultas de exemplo e análises  

- **Views e Consultas**  
  - `faturamento_categoria` – faturamento e lucro por categoria  
  - `faturamento_produto` – faturamento e lucro por produto  
  - `faturamento_dia` – faturamento e lucro por dia da semana  

- **Indicadores**  
  - 👑 Clientes top (compras > 1000)  
  - 📊 Compras por período  
  - 🏅 Rankings de produtos e categorias  
  - 💰 Lucro total e faturamento total  

---








