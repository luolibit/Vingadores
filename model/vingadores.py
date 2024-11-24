class Vingadores:

    lista_de_vingadores = []
    categorias_permitidas = ["Humano", "Meta-humano", "Androide", "Deidade", "Alienígena"]

    def __init__(self, nome_heroi, nome_real, categoria, poderes, poder_principal, fraquezas, nivel_forca):
        if categoria not in Vingadores.categorias_permitidas:
            raise ValueError(f"Categoria inválida. As categorias permitidas são: {', '.join(Vingadores.categorias_permitidas)}")
        
        if nivel_forca < 0 or nivel_forca > 10000:
            raise ValueError("O nível de força deve estar entre 0 e 10000.")


        self.nome_heroi = nome_heroi
        self.nome_real = nome_real
        self.categoria = categoria
        self.poderes = poderes
        self.poder_principal = poder_principal
        self.fraquezas = fraquezas
        self.nivel_forca = nivel_forca
        self.convocado = False
        self.tornozeleira = False
        self.chip = False

        Vingadores.lista_de_vingadores.append(self)

    @classmethod
    def listar_vingadores(cls):
        print(f"{'Índice'.ljust(7)} | {'Nome de Herói'.ljust(17)} | {'Nome Real'.ljust(20)} | {'Categoria'.ljust(12)} | {'Convocado'.ljust(10)} | {'Tornozeleira'.ljust(15)} | {'Chip GPS'.ljust(10)}")
        print("-" * 100)
        for index, vingador in enumerate(cls.lista_de_vingadores, start=1):
            print(f"{str(index).ljust(7)} | {str(vingador.nome_heroi).ljust(17)} | {str(vingador.nome_real).ljust(20)} | {str(vingador.categoria).ljust(12)} | {str(vingador.convocado).ljust(10)} | {str(vingador.tornozeleira).ljust(15)} | {str(vingador.chip_gps).ljust(10)}")

    @classmethod
    def listar_detalhes_vingador(cls, nome):
        vingador = cls.buscar_vingador(nome)
        if vingador:
            print(f"{'Nome de Herói'.ljust(17)} | {'Nome Real'.ljust(20)} | {'Categoria'.ljust(12)} | {'Poderes'.ljust(25)} | {'Poder Principal'.ljust(20)} | {'Fraquezas'.ljust(20)} | {'Nível de Força'.ljust(15)}")

            print("-" * 149)

            print(f'{vingador.nome_heroi.ljust(17)} | {vingador.nome_real.ljust(20)} | {vingador.categoria.ljust(12)} | {", ".join(vingador.poderes).ljust(25)} | {vingador.poder_principal.ljust(20)} | {", ".join(vingador.fraquezas).ljust(20)} | {str(vingador.nivel_forca).ljust(15)}')
        else:
            print('Vingador não encontrado')

             
    @classmethod
    def buscar_vingador(cls, nome_heroi = None, nome_real = None):
        for vingador in cls.lista_de_vingadores:
            if(nome_heroi and vingador.nome_heroi.lower() == nome_heroi.lower()) or (nome_real and vingador.nome_real.lower() == nome_real.lower()):
                return vingador
        return None
    
    def convocar(self):
        self._convocado = True
    
    def aplicar_tornozeleira(self):
        if not self.convocado:
            print(f'{self.nome_heroi} não foi convocado ainda!')
            return
        self.tornozeleira = True
        if self.nome_heroi == 'Thor' or self.nome_heroi == 'Hulk':
            print(f'{self.nome_heroi} resiste à tornozeleira!')
        else:
            print(f"{self.nome_heroi} teve a tornozeleira aplicada com sucesso!")

    def aplicar_chip(self):
        if not self.tornozeleira:
            print('O chip GPS só pode ser aplicado após a tornozeleira!')
            return
        self.chip = True
        print(f'{self.nome_heroi} teve o chip GPS aplicado com sucesso!')
        