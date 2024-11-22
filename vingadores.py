class Vingadores:

    lista_de_vingadores = []

    def __init__(self, nome_heroi, nome_real, categoria, poderes, poder_principal, fraquezas, nivel_forca):
        self.nome_heroi = nome_heroi
        self.nome_real = nome_real
        self.categoria = categoria
        self.poderes = poderes
        self.poder_principal = poder_principal
        self.fraquezas = fraquezas
        self.nivel_forca = nivel_forca
        Vingadores.lista_de_vingadores.append(self)

    @classmethod
    def listar_vingadores(cls):

        print(f'{'Nome de Herói'.ljust(17)} | {'Nome Real'.ljust(20)} | {'Categoria'.ljust(12)} | {'Poderes'.ljust(25)} | {'Poder Principal'.ljust(20)} | {'Fraquezas'.ljust(20)} | {'Nível de Força'.ljust(15)}')

        print("-" * 149)

        for  vingador in Vingadores.lista_de_vingadores:
            print(f'{str(vingador.nome_heroi).ljust(17)} | {str(vingador.nome_real).ljust(20)} | {str(vingador.categoria).ljust(12)} | {str(vingador.poderes).ljust(25)} | {str(vingador.poder_principal).ljust(20)} | {str(vingador.fraquezas).ljust(20)} | {str(vingador.nivel_forca).ljust(15)}')

    def __str__(self):
        return f'{'Nome de Herói'.ljust(17)} | {'Nome Real'.ljust(20)} | {'Categoria'.ljust(12)} | {'Poderes'.ljust(25)} | {'Poder Principal'.ljust(20)} | {'Fraquezas'.ljust(20)} | {'Nível de Força'.ljust(15)}\n {str(self.nome_heroi).ljust(17)} | {str(self.nome_real).ljust(20)} | {str(self.categoria).ljust(12)} | {str(self.poderes).ljust(25)} | {str(self.poder_principal).ljust(20)} | {str(self.fraquezas).ljust(20)} | {str(self.nivel_forca).ljust(15)}'
        