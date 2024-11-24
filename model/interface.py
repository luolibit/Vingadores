import os
from model import vingadores
from model.vingadores import Vingadores

class Interface:

    @staticmethod
    def imprimir_titulo_app():
        print(''' 
─█▀▀█ ▀█─█▀ █▀▀ █▀▀▄ █▀▀▀ █▀▀ █▀▀█ █▀▀ 
░█▄▄█ ─█▄█─ █▀▀ █──█ █─▀█ █▀▀ █▄▄▀ ▀▀█ 
░█─░█ ──▀── ▀▀▀ ▀──▀ ▀▀▀▀ ▀▀▀ ▀─▀▀ ▀▀▀''')
    
    @staticmethod
    def apresentar_menu_principal():
        os.system('cls')
        Interface.imprimir_titulo_app()
        print('\nMenu Principal')
        print('1. Cadastrar Vingador')
        print('2. Listar Vingadores')
        print('3. Convocar Vingador')
        print('4. Aplicar Tornozeleira')
        print('5. Aplicar Chip GPS')
        print('6. Listar Detalhes do Vingador')
        print('7. Emitir Mandado de Prisão')
        print('8. Sair')
        print()
        Interface.ler_opcao_usuario()

    @staticmethod
    def imprime_titulo_tela(titulo):
        os.system('cls')
        Interface.imprimir_titulo_app()
        print(f'{str(titulo).upper()}')
        print('*' * 30)
        print()

    @staticmethod
    def cadastrar_vingador():
        os.system('cls')
        Interface.imprime_titulo_tela('Cadastrando Novo Vingador')
        nome_heroi = input('Nome de Herói: ')
        nome_real = input('Nome Real : ')
        categoria = input('Categoria (Humano, Meta-Humano, Androide, Deidade, Alienígena): ')
        poderes = input('Poderes (separados por vírgula): ').split(', ') 
        poder_principal = input('Poder Principal: ')
        fraquezas = input('Fraquezas: ').split(', ')
        nivel_forca = int(input('Nível de Força (0 a 10000): '))
        
        try:
            vingadores = Vingadores(nome_heroi, nome_real, categoria, poderes, poder_principal, fraquezas, nivel_forca)
            print(f'{nome_heroi} foi cadstrado!')
        except ValueError as e:
            print(f'{e}')
        input('Pressione ENTER para continuar')

    def convocar_vingador():
        os.system('cls')
        Interface.imprime_titulo_tela()
        nome = input('Digite o nome do herói, ou seu nome real, para convocá-lo: ')
        vingadores = Vingadores.buscar_vingador(nome_heroi = nome) or Vingadores.buscar_vingador(nome_real = nome)
        if vingadores:
            vingadores.convocado = True
            print(f'{vingadores.nome_heroi} foi convocado!')
        else:
            print('Vingador não encontrado')
        input('Pressione ENTER para continuar')

    @staticmethod
    def aplicar_tornozeleira():
        os.system('cls')
        Interface.imprimir_titulo_app()
        nome = input('Digite o nome do herói, ou seu nome real, para aplicar a tornozeleira: ')
        vingadores = Vingadores.buscar_vingador(nome_heroi = nome) or Vingadores.buscar_vingador(nome_real = nome)
        if vingadores:
            vingadores.aplicar_tornozeleira()
        else:
            print('Vingador não encontrado')
        input('Pressione ENTER para continuar')

    @staticmethod
    def aplicar_chip():
        os.system('cls')
        Interface.imprimir_titulo_app()
        nome = input ('Digite o nome do herói, ou seu nome real, para aplicar o chip GPS: ')
        vingadores = Vingadores.buscar_vingador(nome_heroi = nome) or Vingadores.buscar_vingador(nome_real = nome)
        if vingadores:
            vingadores.aplicar_chip()
        else:
            print('Vingador não encontrado')
        input('Pressione ENTER para continuar')

    @staticmethod
    def emitir_mandado():
        os.system('cls')
        Interface.imprimir_titulo_app()
        nome = input('Digite o nome do herói, ou seu nome real, para emitir um mandado de prisão: ')
        vingadores = Vingadores.buscar_vingador(nome_heroi = nome) or Vingadores.buscar_vingador(nome_real = nome)
        if vingadores:
            print('Mandado de prisão emitido com sucesso para {vingador.nome_heroi}!')
        else:
            print('Vingador não encontrado')
        input('Pressione ENTER para continuar')

    @staticmethod
    def ler_opcao_usuario():
        opcao = input('Digite sua opção: ')
        if opcao == '1':
            Interface.cadastrar_vingador()
        elif opcao == '2':
            Vingadores.listar_vingadores()
        elif opcao == '3':
            Interface.convocar_vingador()
        elif opcao == '4':
            Interface.aplicar_tornozeleira()
        elif opcao == '5':
            Interface.aplicar_chip()
        elif opcao == '6':
            Interface.emitir_mandado()
        elif opcao == '7':
            print('Encerrando o programa')
            exit()
        else:
            print('Digite uma opção válida!')
        Interface.apresentar_menu_principal()


