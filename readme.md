# Alura Food Microservices - Projeto Kubernetes Helm

## Visão Geral do Projeto

Este projeto implementa um sistema de pedidos de comida baseado em microsserviços utilizando Kubernetes e Helm. O sistema é composto por vários serviços, incluindo pagamentos, pedidos, gateway e um servidor de descoberta.

## Componentes da Arquitetura

### Microsserviços

- Gateway (Porta: 8080)

- Serviço de Pagamentos (Porta: 40000)

- Serviço de Pedidos (Porta: 40001)

- Servidor/Eureka (Porta: 8081)

### Configuração

- Banco de Dados: MySQL

- Descoberta de Serviços: Servidor Eureka

- API Gateway

## Configuração de Implantacão

### Especificações de Recursos

- Cada microsserviço é configurado com 2 réplicas para alta disponibilidade.

- Parâmetros de conexão do banco de dados configuráveis.

- Configuração do servidor Eureka para descoberta de serviços.

### Serviços

1. **Gateway**

- Imagem: leonardosartorello/java-gateway-k8s:v3

- Réplicas: 2

2. **Serviço de Pagamentos**

- Imagem: leonardosartorello/java-pagamentos-k8s:v3

- Réplicas: 2

3. **Serviço de Pedidos**

- Imagem: leonardosartorello/java-pedidos-k8s:v3

- Réplicas: 2

4. **Servidor/Eureka**

- Imagem: leonardosartorello/java-server-k8s:v3

- Réplicas: 2

## Instalação

1. Clone o repositório:
   
```bash
   git clone git@github.com:JhackCosta/Kubernetes-Helm.git
```

2. Instale o Helm.

3. instale as dependências do projeto com o seguinte comando:
```bash
  helm dependency update ./helm
```

4. Implemente o projeto com o seguinte comando:
```bash
   helm install alura-food ./helm
```

5. Acesse o sistema em:
```bash
   minikube dashboard
```