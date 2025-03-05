```
class Carro:
    pass # dizendo que ela Ã© vazia

meu_carro = Carro()
carro_da_ufmg = Carro()

# atributos do primeiro carro
meu_carro.ano = 2018
meu_carro.modelo = 'fusca'
meu_carro.cor = 'Vermelho'
meu_carro.arcondicionado = True

# atributos do segundo carro
carro_da_ufmg.ano = 2020
carro_da_ufmg.modelo = 'hillux'
carro_da_ufmg.cor = 'preto'
carro_da_ufmg.arcondicionado = False

print(meu_carro.ano)
print(carro_da_ufmg.ano)

novo_carro = Carro()
novo_carro.ano = 2001
novo_carro.modelo = 'gol'
novo_carro.cor = 'azul'
novo_carro.arcondicionado = True

print(novo_carro.ano)
novo_carro.ano += 10
print(novo_carro.ano)

novo_carro2= meu_carro # NAO FAÃA, LITERALMENTE VIRA UMA COPIA ATE PRA MUDAR DADOS EM UM MUDA NO OUTRO
novo_carro2.ano += 10

print(meu_carro.ano)
print(carro_da_ufmg.ano)
print(novo_carro.ano)
#-----------------------------------------------------------------------------------------
class Carro:
    pass # dizendo que ela é vazia

meu_carro = Carro()
carro_da_ufmg = Carro()

# atributos do primeiro carro
meu_carro.ano = 2018
meu_carro.modelo = 'fusca'
meu_carro.cor = 'Vermelho'
meu_carro.arcondicionado = True

# atributos do segundo carro
carro_da_ufmg.ano = 2020
carro_da_ufmg.modelo = 'hillux'
carro_da_ufmg.cor = 'preto'
carro_da_ufmg.arcondicionado = False

print(meu_carro.ano)
print(carro_da_ufmg.ano)

novo_carro = Carro()
novo_carro.ano = 2001
novo_carro.modelo = 'gol'
novo_carro.cor = 'azul'
novo_carro.arcondicionado = True

print(novo_carro.ano)
novo_carro.ano += 10
print(novo_carro.ano)

novo_carro2= meu_carro # NAO FAÇA, LITERALMENTE VIRA UMA COPIA ATE PRA MUDAR DADOS EM UM MUDA NO OUTRO
novo_carro2.ano += 10

print(meu_carro.ano)
print(carro_da_ufmg.ano)
print(novo_carro.ano)

# ------------------------------------------------------------------------------------------
class Pessoa:
    pass

a = Pessoa()
a.nome= 'joao'
a.idade= 15
a.nacionalidade= 'frances'
a.gostadechocolate= False

b = Pessoa()
b.nome= 'vini'
b.idade= 30
b.nacionalidade= 'japones'
b.gostadechocolate= True

c = Pessoa()
c.nome= 'julia'

print("O nome de a,b,c é respectivamente",a.nome,b.nome,c.nome)

c.nome= 'maria'
print("O nome de a,b,c é respectivamente",a.nome,b.nome,c.nome)
```