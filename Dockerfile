# Define a imagem base
FROM node:20.10

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo package.json e package-lock.json (se disponível) para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN pnpm install

# Copia os arquivos restantes do projeto para o diretório de trabalho
COPY . .

RUN pnpm build

# Comando para iniciar a aplicação
CMD ["pnpm", "start"]