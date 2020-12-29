# criação de um bit referente a presença de aluno
SETBIT "presenca:2020-12-28" 12 1
SETBIT "presenca:2020-12-28" 13 1
SETBIT "presenca:2020-12-28" 14 0
SETBIT "presenca:2020-12-29" 12 1
SETBIT "presenca:2020-12-29" 13 0
SETBIT "presenca:2020-12-29" 14 1

# consultar valor
GETBIT "presenca:2020-12-29" 12

# contar as presenças do dia
BITCOUNT "presenca:2020-12-29"

# operação AND, cria uma nova chave para juntar duas outras sendo que precisa ter as duas presenças para computar verdadeiro
BITOP AND "presenca:2020-12-28-e-29" "presenca:2020-12-28" "presenca:2020-12-29"

# operação OR, cria uma nova chave para juntar duas outras sendo que precisa ter apenas uma presença para computar verdadeiro
BITOP OR "presenca:2020-12-28-ou-29" "presenca:2020-12-28" "presenca:2020-12-29"
