# Criação da chave 
SET numero 1

# Visualizar o valor
GET numero 

# Incrementar valor, default 1
INCR numero

# Decrementar valor, default 1
DECR numero

# Confirmar incremento
GET numero

# Incrementar 15
INCRBY numero 15

# Incrementar decimal
INCRBYFLOAT numero 7.5

# Decrementar 10
INCRBY numero -10
DECRBY numero 2

# Remover chave
DEL numero
