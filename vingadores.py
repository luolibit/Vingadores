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

        largura_nome_heroi = 15 
        largura_nome_real = 15  
        largura_categoria = 20 
        largura_poderes = 25   
        largura_poder_principal = 25 
        largura_fraquezas = 25   
        largura_nivel_forca = 10 

        cabecalho = (
            f"{'ID'.ljust(5)} | {'Nome de Herói'.ljust(largura_nome_heroi)} | {'Nome Real'.ljust(largura_nome_real)} | "
            f"{'Categoria'.ljust(largura_categoria)} | {'Poderes'.ljust(largura_poderes)} | {'Poder Principal'.ljust(largura_poder_principal)} | "
            f"{'Fraquezas'.ljust(largura_fraquezas)} | {'Nível de Força'.ljust(largura_nivel_forca)}"
        )

        print(cabecalho)
        print('-' * len(cabecalho))

        for idx, vingador in enumerate(cls.lista_de_vingadores, start=1):
            print(
                f"{str(idx).ljust(5)} | {vingador.nome_heroi.ljust(largura_nome_heroi)} | {vingador.nome_real.ljust(largura_nome_real)} | "
                f"{vingador.categoria.ljust(largura_categoria)} | {vingador.poderes.ljust(largura_poderes)} | "
                f"{vingador.poder_principal.ljust(largura_poder_principal)} | {vingador.fraquezas.ljust(largura_fraquezas)} | "
                f"{vingador.nivel_forca.ljust(largura_nivel_forca)}"
            )

    def __str__(self):
        largura_nome_heroi = 15
        largura_nome_real = 15
        largura_categoria = 20
        largura_poderes = 25
        largura_poder_principal = 25
        largura_fraquezas = 25
        largura_nivel_forca = 10

        return (
            f"{'Nome de Herói'.ljust(largura_nome_heroi)} | {'Nome Real'.ljust(largura_nome_real)} | "
            f"{'Categoria'.ljust(largura_categoria)} | {'Poderes'.ljust(largura_poderes)} | "
            f"{'Poder Principal'.ljust(largura_poder_principal)} | {'Fraquezas'.ljust(largura_fraquezas)} | "
            f"{'Nível de Força'.ljust(largura_nivel_forca)}\n"
            f"{self.nome_heroi.ljust(largura_nome_heroi)} | {self.nome_real.ljust(largura_nome_real)} | "
            f"{self.categoria.ljust(largura_categoria)} | {self.poderes.ljust(largura_poderes)} | "
            f"{self.poder_principal.ljust(largura_poder_principal)} | {self.fraquezas.ljust(largura_fraquezas)} | "
            f"{self.nivel_forca.ljust(largura_nivel_forca)}"
        )