# BankAccountOpening

## Usando Docker para o PostgreSQL

Rode o seguinte comando:
`docker run --name pg-docker -v /var/lib/postgresql/data:/var/lib/postgresql/data -e POSTGRES_HOST_AUTH_METHOD=trust -p 5432:5432 -d postgres:13.0-alpine`

## Rodando o Phoenix

Para inicializar seu servidor Phoenix, rode os seguintes comandos:

  * Instale as dependências com `mix deps.get`
  * Crie e rode as migrations com `mix ecto.setup`
  * Inicialize o servidor Phoenix com  `mix phx.server`
