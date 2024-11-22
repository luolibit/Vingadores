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

        cabecalho = (
            f"{'ID'.ljust(5)} | {'Nome de Herói'.ljust(10)} | {'Nome Real'.ljust(10)} | "
            f"{'Categoria'.ljust(10)} | {'Poderes'.ljust(10)} | {'Poder Principal'.ljust(10)} | "
            f"{'Fraquezas'.ljust(10)} | {'Nível de Força'.ljust(10)}"
        )

        print(cabecalho)
        print('-' * len(cabecalho))

        for idx, vingador in enumerate(cls.lista_de_vingadores, start=1):
            print(
                f"{str(idx).ljust(5)} | {vingador.nome_heroi.ljust(10)} | {vingador.nome_real.ljust(10)} | "
                f"{vingador.categoria.ljust(10)} | {vingador.poderes.ljust(10)} | "
                f"{vingador.poder_principal.ljust(10)} | {vingador.fraquezas.ljust(10)} | "
                f"{vingador.nivel_forca.ljust(10)}"
            )

    def __str__(self):
    #     largura_nome_heroi = 1
    #     largura_nome_real = 1
    #     largura_categoria = 1
    #     largura_poderes = 1
    #     largura_poder_principal = 1
    #     largura_fraquezas = 1
    #     largura_nivel_forca = 1

        return (
            f"{'Nome de Herói'.ljust(10)} | {'Nome Real'.ljust(10)} | "
            f"{'Categoria'.ljust(10)} | {'Poderes'.ljust(10)} | "
            f"{'Poder Principal'.ljust(10)} | {'Fraquezas'.ljust(10)} | "
            f"{'Nível de Força'.ljust(10)}\n"
            f"{self.nome_heroi.ljust(10)} | {self.nome_real.ljust(10)} | "
            f"{self.categoria.ljust(10)} | {self.poderes.ljust(10)} | "
            f"{self.poder_principal.ljust(10)} | {self.fraquezas.ljust(10)} | "
            f"{self.nivel_forca.ljust(10)}"
        )