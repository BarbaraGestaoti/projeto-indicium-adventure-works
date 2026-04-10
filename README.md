# projeto-indicium-adventure-works
Projeto de Engenharia de Analytics - Certificação Indicium (Modern Data Stack)


# Projeto de Engenharia de Analytics - Adventure Works

## 🏢 Cenário de Negócio
A Adventure Works é uma indústria de bicicletas em expansão que enfrenta dificuldades para consolidar seus dados e extrair insights estratégicos. Este projeto visa implementar uma **Modern Data Stack** para responder a perguntas críticas da diretoria.

## 🎯 Objetivos Estratégicos (Stakeholders)
* **Carlos Silveira (CEO):** Validar a acurácia dos dados. O faturamento bruto de 2011 deve ser próximo a **$12.646.112,16**.
* **João Muller (Diretor de Inovação):** Implementar uma cultura *Data Driven* e reduzir a dependência de consultas manuais em SQL, focando em um modelo de autoatendimento (Self-service BI).

## 🛠️ Tecnologias e Ferramentas
* **Banco de Dados:** PostgreSQL (Armazenamento dos dados brutos).
* **Data Warehouse:** Databricks (Ambiente de processamento em nuvem).
* **Transformação:** dbt (Camadas de Staging, Intermediate e Marts).
* **Documentação:** GitHub (Controle de versão e documentação técnica).

## 📂 Organização do Repositório
* `/documentos`: Contém o planejamento detalhado (Anexo B) e diagramas conceituais.
* `/models`: inserção do banco de dados no databricks

* 
🚀 Upgrade de Stack: Integração com Databricks
Nesta etapa do projeto, evoluí a arquitetura para utilizar o Databricks como o motor de processamento.

Data Warehouse: Databricks (Cloud Azure).

Orquestração e Transformação: dbt (data build tool).

Destaque Técnico: Configuração de conexão via Unity Catalog, garantindo governança e segurança nos modelos de dados.
