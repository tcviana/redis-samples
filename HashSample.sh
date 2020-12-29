# Criar hash
HSET "aluno:1" "nome" "Sebastião"
HSET "aluno:1" "email" "seba@tiao.com.br"
HSET "aluno:1" "sexo" "M"
HSET "aluno:1" "pontos" 1

# consultar o tipo da chave
TYPE aluno:1

# buscar um valor específico
HGET "aluno:1" "nome"

# buscar todos os valores
HGETALL aluno:1

# incrementar a pontuação
HINCRBY aluno:1 pontos 10

# incrementar a pontuação decimal
HINCRBYFLOAT aluno:1 pontos 10.55

# remover uma sub-chave
HDEL aluno:1 sexo

# expirar a chave hash em 60 segundos
EXPIRE aluno:1 60

# Criar hash com multiplos valores
HMSET "aluno:2" "nome" "Tiago" "email" "tcviana.sp@gmail.com" "sexo" "M" "pontos" 1
