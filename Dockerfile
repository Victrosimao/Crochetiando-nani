# Use a imagem base do Python
FROM python:3.11-slim

# Instale as dependências do sistema necessárias para o mysqlclient
RUN apt-get update && apt-get install -y \
    gcc \
    libmysqlclient-dev \
    default-libmysqlclient-dev \
    build-essential \
    --no-install-recommends

# Crie e ative o ambiente virtual
ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Copie o arquivo de dependências para o container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante da aplicação para o container
COPY . /app

# Defina o diretório de trabalho
WORKDIR /app

# Defina o comando para iniciar o servidor
CMD ["gunicorn", "ecommerce.wsgi:application", "--bind", "0.0.0.0:8000"]
