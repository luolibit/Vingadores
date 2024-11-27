import os
from model.vingadores import Vingadores
from model.database import Database

class Interface:

    @staticmethod
    def imprimir_titulo_app():
        print('''

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████──██████─██████████████─██████──────────██████─██████████████─██████████████─████████████████───██████████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░██████████──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─
─██░░██████░░██─██░░██──██░░██─██░░██████████─██░░░░░░░░░░██──██░░██─██░░██████████─██░░██████████─██░░████████░░██───██░░██████████─
─██░░██──██░░██─██░░██──██░░██─██░░██─────────██░░██████░░██──██░░██─██░░██─────────██░░██─────────██░░██────██░░██───██░░██─────────
─██░░██████░░██─██░░██──██░░██─██░░██████████─██░░██──██░░██──██░░██─██░░██─────────██░░██████████─██░░████████░░██───██░░██████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░██──██░░██──██░░██─██░░██──██████─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─
─██░░██████░░██─██░░██──██░░██─██░░██████████─██░░██──██░░██──██░░██─██░░██──██░░██─██░░██████████─██░░██████░░████───██████████░░██─
─██░░██──██░░██─██░░░░██░░░░██─██░░██─────────██░░██──██░░██████░░██─██░░██──██░░██─██░░██─────────██░░██──██░░██─────────────██░░██─
─██░░██──██░░██─████░░░░░░████─██░░██████████─██░░██──██░░░░░░░░░░██─██░░██████░░██─██░░██████████─██░░██──██░░██████─██████████░░██─
─██░░██──██░░██───████░░████───██░░░░░░░░░░██─██░░██──██████████░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░░░░░██─
─██████──██████─────██████─────██████████████─██████──────────██████─██████████████─██████████████─██████──██████████─██████████████─
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
          ''')
    
    @staticmethod
    def apresentar_menu_principal():
        os.system('cls')
        Interface.imprimir_titulo_app()
        print()
        print('Menu Principal')
        print('1. Cadastrar Vingador')
        print('2. Listar Vingadores')
        print('3. Listar detalhes de algum Vingador específico')
        print('4. Sair')
        print()
        Interface.ler_opcao_usuario()

    @staticmethod
    def imprime_titulo_tela(titulo):
        os.system('cls')
        Interface.imprimir_titulo_app()
        print(f'{str(titulo).upper()}')
        print('*' * 30)
        print()

    def cadastrar_vingador():
        os.system('cls')
        Interface.imprime_titulo_tela('Cadastrando novo Vingador')
        nome_heroi = input('Nome de Heroí: ')
        nome_real = input('Nome Real : ')
        categoria = input('Categoria (opcional): ')
        poderes = input('Poderes (opcional): ')
        poder_principal = input('Poder Principal (opcional): ')
        fraquezas = input('Fraquezas: ')
        nivel_forca = input('Nível de Força: ')


        vingador = Vingadores(nome_heroi, nome_real, categoria, poderes, poder_principal, fraquezas, nivel_forca)

        print(f'O Vingador foi registrado: \n{vingador}')

    @staticmethod
    def detalhes_vingador():
        os.system('cls')
        Interface.imprime_titulo_tela('Listando detalhes do Vingador')

        Vingadores.listar_vingadores()

        try:
            indice = int(input('\nDigite o número do Vingador para ver os detalhes: '))
            if 1 <= indice <= len(Vingadores.lista_de_vingadores):
                vingador = Vingadores.lista_de_vingadores[indice - 1]
                print(f"\nDetalhes do Vingador '{vingador.nome_heroi}':")
                print(f"Nome Real: {vingador.nome_real}")
                print(f"Categoria: {vingador.categoria}")
                print(f"Poderes: {vingador.poderes}")
                print(f"Poder Principal: {vingador.poder_principal}")
                print(f"Fraquezas: {vingador.fraquezas}")
                print(f"Nível de Força: {vingador.nivel_forca}")
            else:
                print("Número inválido! Tente novamente.")
                Interface.detalhes_vingador()
        except ValueError:
            print("Entrada inválida! Digite um número.")
            Interface.detalhes_vingador()

    @staticmethod
    def ler_opcao_usuario():
        try:
            opcao = int(input ('Digite sua opcâo: '))
            if opcao == 1:
                Interface.cadastrar_vingador()
            elif opcao == 2:
                Interface.imprime_titulo_tela('Listando Vingadores')
                Vingadores.listar_vingadores()
            elif opcao == 3:
                Interface.detalhes_vingador()
            elif opcao == 4:
                print('Encerrando o programa')
                exit()
            else:
                print('Digite uma opção válida!')
        except ValueError:
            print('Você deve digitar um número inteiro')

        Interface.voltar_ao_menu_principal()

    @staticmethod
    def voltar_ao_menu_principal():
        print()
        input('Pressione ENTER para voltar ao menu principal')
        os.system('cls')
        Interface.apresentar_menu_principal()