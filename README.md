# Memoria-e-Contador

Este repositório contém projetos desenvolvidos em Verilog para simulação e implementação de um contador e de módulos de memória. O objetivo é demonstrar conceitos fundamentais de eletrônica digital utilizando a linguagem de descrição de hardware Verilog.

## Estrutura do Projeto

- **questao01_p02/**  
  Projeto do contador digital.
  - `contador.v`: Código-fonte em Verilog do contador.
  - `contador.bdf`: Diagrama esquemático do contador.
  - `contador_vetor_teste.vt`: Vetor de teste para simulação.
  - `contador_nativelink_simulation.rpt`: Relatório de simulação.
  - Outros arquivos de projeto e configuração.

- **questao02_p02/**  
  Projeto dos módulos de memória.
  - `mem_a.v`, `mem_b.v`, `mem_c.v`, `mem_s.v`: Códigos-fonte em Verilog dos módulos de memória.
  - `cRW.v`: Módulo de controle de leitura/escrita.
  - Arquivos `.bsf` e `.bdf`: Diagramas esquemáticos dos módulos.
  - `mem_s_vetor_teste.vt`: Vetor de teste para simulação da memória.
  - `mem_s_nativelink_simulation.rpt`: Relatório de simulação.
  - Outros arquivos de projeto e configuração.

## Como Utilizar

1. **Abrir o Projeto**  
   Utilize o Quartus Prime ou outro software compatível para abrir os arquivos `.qpf` de cada questão.

2. **Simulação**  
   - Utilize os arquivos de vetor de teste (`*.vt`) para simular o funcionamento dos módulos.
   - Consulte os relatórios de simulação (`*.rpt`) para verificar os resultados.

3. **Implementação**  
   - Os arquivos `.bdf` e `.bsf` podem ser usados para visualizar e editar os esquemas dos circuitos.
   - Os arquivos `.v` contêm o código Verilog para síntese e simulação.

## Descrição dos Módulos

- **Contador**  
  Implementa um contador digital com funcionalidades básicas, podendo ser utilizado em aplicações de temporização e contagem de eventos.

- **Memória**  
  Inclui diferentes módulos de memória (A, B, C, S) para armazenamento e manipulação de dados, além de um módulo de controle de leitura e escrita.

## Requisitos

- Quartus Prime (recomendado)
- Conhecimento básico em Verilog e eletrônica digital

## Autoria

Projeto desenvolvido para fins acadêmicos, demonstrando a implementação de circuitos digitais básicos em Verilog.
