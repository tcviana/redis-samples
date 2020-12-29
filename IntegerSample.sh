# Criação da chave 
SET numero 0

# Visualizar o valor
GET numero 

# Incrementar valor, default 1
INCR numero

# Confirmar incremento
GET numero

# Incrementar 15
INCRBY numero 15

# Decrementar 10
INCRBY numero -10

# Remover chave
DEL numero
