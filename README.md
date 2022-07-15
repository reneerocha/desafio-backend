# Link Projeto Heroku

- https://rankingdeputado.herokuapp.com/

# Instruções para Execução

## Pré-requisitos

Instação docker windows
- https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe

Instação docker Ubuntu

Primeiro, atualize sua lista existente de pacotes:

- sudo apt update

Em seguida, instale alguns pacotes pré-requisito que deixam o apt usar pacotes pelo HTTPS:

- sudo apt install apt-transport-https ca-certificates curl software-properties-common
Então, adicione a chave GPG para o repositório oficial do Docker no seu sistema:
- curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
Adicione o repositório do Docker às fontes do APT:
- sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
Em seguida, atualize o banco de dados do pacote com os pacotes do Docker do recém adicionado repositório:
- sudo apt update

Certifique-se de que você está prestes a instalar do repositório do Docker ao invés do repositório padrão do Ubuntu:

- apt-cache policy docker-ce

Instalação 
- sudo apt install docker-ce

### Passo execução

- git clone git@github.com:reneerocha/desafio-backend.git

Criação da imagem
- docker-compose build --force-rm

Criação Banco de Dados
- docker-compose run web rake db:create

Criação da Tabelas
- docker-compose run web rake db:migrate

Executar suítes de teste
- docker-compose run web rspec .

Inicializar a aplicação
- docker-compose up

Acesso navegador
- localhost:3000

# Ranking dos gastos dos Deputados

Estamos muito felizes que você tenha chegado nessa etapa do nosso processo seletivo, para essa fase, desejamos que você resolva um desafio. Nosso desafio consiste em analisar alguns dados disponibilizados pelo Câmara dos Deputados relativos aos gastos dos parlamentares. A ideia é descobrir quem, do seu estado, está gastando mais e exibir de forma resumida esses principais gastos.

## Descrição do desafio

Você já ouviu falar da CEAP? A Cota para o Exercício da Atividade Parlamentar, custeia as despesas do mandato, como passagens aéreas e conta de celular. Algumas são reembolsadas, como as com os Correios, e outras são pagas por débito automático, como a compra de passagens. Nos casos de reembolso, os deputados têm três meses para apresentar os recibos. O valor mensal não utilizado fica acumulado ao longo do ano. Por esse motivo, em alguns meses o valor gasto pode ser maior que a média mensal. (Fonte: [Portal da Câmara dos Deputados](https://www2.camara.leg.br/transparencia/acesso-a-informacao/copy_of_perguntas-frequentes/cota-para-o-exercicio-da-atividade-parlamentar)). Através do portal da transparência, nós temos acesso a essas despesas e podemos saber como e onde os políticos estão gastando.

## Base de dados e explicações complementares

- [Fonte de dados (pegar o referente ao ano 2021 em formato CSV)](https://dadosabertos.camara.leg.br/swagger/api.html#staticfile)
- [Explicação dos campos do arquivo CSV](https://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/explicacoes-sobre-o-formato-dos-arquivos-xml)
- Ignorar linhas que não tenham no campo `sgUF` o estado que você mora. O objetivo do trabalho é focar apenas no seu estado;
- Considerar para fins de cálculos de despesa, o campo `vlrLiquido`. Esse é o valor que de fato foi debitado da cota do candidato;
- Dica para pegar a foto do político: **http://www.camara.leg.br/internet/deputado/bandep/{ideCadastro}.jpg**


## Requisitos Obrigatórios
- Possibilitar o upload do arquivo;
- Organizar os dados extraidos do arquivo em tabelas no banco de dados;
- Listagem dos deputados do seu estado;
- Mostrar o somatório dos seus gastos;
- Listar as despesas, mostrando a data(`datEmissao`), estabelecimento(`txtFornecedor`), valor(`vlrLiquido`), e link para a nota(`urlDocumento`);
- Destacar a maior despesa do candidato;
- Usar o framework Rails (utilize esse repositório como base);
- Ter uma cobertura de código;

# Requisitos bônus
Esses requisitos não são obrigatórios, mas serão levados em consideração como pontos extras no momento da avaliação.

- Exibir gráficos para melhorar a visualização dos gastos;
- Aplicação hospedada no Heroku, AWS ou similares;
- Evitar N + 1 nas queries;
- Organizar estrutura do projeto utilizando padrões de projetos;

# Critérios de avaliação

- Organização do projeto: Avalia a estrutura do projeto, documentação e uso de controle de versão;
- Coerência: Avalia se os requisitos foram atendidos;
- Boas práticas: Avalia se o projeto segue boas práticas de desenvolvimento, incluindo segurança e otimização;
- Criatividade: Avalia o quanto você "pensou fora da caixa", levando em conta soluções criativas para os problemas levantados;

O desafio deve ser entregue nos passando a URL de seu repositório. Fique a vontade caso queira incrementar o projeto com outras features não listadas aqui, iremos levar em consideração também!

Qualquer dúvida em relação ao desafio, responderemos por e-mail.

Bom trabalho!
