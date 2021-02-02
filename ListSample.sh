# Adiciona valor no começo da lista, ou seja, com index 0
LPUSH ultimas_noticias "Quarentena no feriado de Natal?"
LPUSH ultimas_noticias "Bancos abrem no ano novo?"

# Adiciona objeto no fim da lista
RPUSH ultimas_noticias "Jogador de futebol e flagrado jogando basquete na rua"
RPUSH ultimas_noticias "Rumores sobre o lançamento de Avatar 2"

# Retorna número do index referente ao valor
LPOS ultimas_noticias "Bancos abrem no ano novo?"

# Retorna o valor do INDEX
LINDEX ultimas_noticias 0

# Quantidade de itens na lista
LLEN ultimas_noticias

# Retorna os valores da lista dentro de um range
LRANGE ultimas_noticias 1 2

# Retorna o primeiro item da lista e remove da fila
LPOP ultimas_noticias

# Retorna o ultimo item da lista e remove da fila
RPOP ultimas_noticias

# Bloqueia o comando POP caso a lista esteja vazia por um determinado tempo, ou seja, só executará o comando quando entrar item na lista
BLPOP fila:confirma-email 30 #Aguarda 30 segundos
BLPOP fila:confirma-email 0  #Tempo indeterminado de espera

# Remove itens da lista (dois últimos)
LREM ultimas_noticias -2

# Recorte da lista dentro do range index
LTRIM ultimas_noticias 0 2
