# 📊 Fundamentos de SQL - Repositório de Análises de Vendas 🗄️

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue) 
![VS Code](https://img.shields.io/badge/VS%20Code-IDE-brightgreen) 
![GitHub](https://img.shields.io/badge/GitHub-Repo-black)  

> Repositório para estudo e demonstração de fundamentos de SQL, cobrindo criação de banco, tabelas, inserção de dados, joins, agregações, views e consultas avançadas.


---

## 🧩 Sobre o Projeto

Este projeto apresenta de forma prática como analisar dados de vendas usando **MySQL**, desde a criação de tabelas até a geração de **indicadores estratégicos**.

> ⚠️ **Atenção:** Todos os dados das tabelas foram gerados de forma **fictícia com auxílio do ChatGPT**, para agilizar o processo e servir apenas para fins didáticos.

**Objetivos do projeto:**

- Aprender criação de bancos e tabelas.
- Inserir e manipular dados fictícios.
- Criar **views** para análise de faturamento e lucro.
- Gerar indicadores e rankings de produtos, categorias e clientes.
- Entender comportamento de vendas por dia, semana e mês.

---

## ⚙ Estrutura do Projeto

O repositório contém:

- **`fundamentos_sql.sql`** – Script completo com:
  - Criação de banco de dados
  - Criação de tabelas (`vendas_lojas`, `clientes`, `tabela_completa`)
  - Inserção de dados fictícios
  - Criação de colunas geradas para datas (`mes`, `Dia`, `Dia_semana`)
  - Criação de **views** (`faturamento_categoria`, `faturamento_produto`, `faturamento_dia`)
  - Consultas de exemplo e análises
- **Views e Consultas**
  - `faturamento_categoria` – faturamento e lucro por categoria
  - `faturamento_produto` – faturamento e lucro por produto
  - `faturamento_dia` – faturamento e lucro por dia da semana
- **Indicadores**
  - Clientes top (compras > 1000)
  - Compras por período
  - Rankings de produtos e categorias
  - Lucro total e faturamento total

## 🚀 Como Usar

1. **Clonar o repositório:**

```bash
git clone https://github.com/rodsonsantos/fundamentos_sql.git
cd fundamentos_sql







