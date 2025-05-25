import csv

# Nome do arquivo para salvar
nm_arquivo = '1_5_arquivo_produto.csv'

produtos = {'ds_produto': [],
            'vlr_produto': [],
            'tp_embalagem': []
            }

cabecalho = ['Descrição do Produto', 'Valor do Produto', 'Tipo de embalagem']

cadastrar = str(input('Deseja cadastrar um novo produto? Digite SIM ou NÃO: ')).strip()

resposta_afirmativa = ['Sim', 's', 'SIM', 'S', 'sim']

while cadastrar in resposta_afirmativa:
    novo_produto = {}  # Dicionário temporário para armazenar os valores do novo produto

    for c in cabecalho:
        valor = input(f"Digite o(a) {c}: ")
        novo_produto[c] = valor  # Armazena o valor para cada campo do novo produto

    # Adiciona os valores do novo produto ao dicionário produtos
    produtos['ds_produto'].append(novo_produto['Descrição do Produto'])
    produtos['vlr_produto'].append(novo_produto['Valor do Produto'])
    produtos['tp_embalagem'].append(novo_produto['Tipo de embalagem'])

    cadastrar = str(input('Deseja cadastrar um novo produto? Digite SIM ou NÃO: ')).strip()

    # Verificar quantidade de produtos cadastrados e se a pessoa pretende continuar registrando
    if cadastrar not in resposta_afirmativa and len(produtos['ds_produto']) < 5:
       print('O sistema necessita de no minímo 5 registros para salvar, cadastre mais alguns!')
       cadastrar = 'SIM'

try:

  # Guardar o nome da lista para conversão
  nm_lista = 'vlr_produto'

  # Conversão utilizando list comprehension
  produtos[nm_lista] = [float(n) for n in produtos[nm_lista]]

except ValueError:

    print(f"Um valor inserido em 'vlr_produto' foi inserido de maneira incorreta, lembrando que só é aceito valores float.")

# Escrever os dados para csv
with open(nm_arquivo, 'w', newline='') as arquivo_csv:
  escritor_csv = csv.writer(arquivo_csv)

  # Escrever cabeçalho
  escritor_csv.writerow(produtos.keys())

  # Escrever os dados
  for linha in zip(*produtos.values()):
    escritor_csv.writerow(linha)