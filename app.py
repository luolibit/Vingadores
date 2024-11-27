from model.vingadores import Vingadores
from model.interface import Interface as I

def main():
    Vingadores("Thor", "Thor Odinson", "Deidade", ["Raio", "Martelo do Thor"], "Martelo do Thor", ["Ego", "Maldições"], 10000)
    Vingadores("Homem Aranha", "Peter Parker", "Meta-Humano", ["Soltar teia", "Aderência"], "Soltar teia", ["Responsabilidade, Emoções"], 5000)
    Vingadores("Homem de Ferro", "Tony Stark", "Humano", ["Inteligência", "Aramdura"], "Armadura", ["Dependência da armadura"], 8500)
    Vingadores("Hulk", "Bruce Banner", "Meta-Humano", ["Superforça", "Regeneração"], "Superforça", ["Fúria incontrolável", "Emocional"], 10000)

    I.apresentar_menu_principal()

if __name__ == '__main__':
    main()
