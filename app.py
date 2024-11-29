from model import vingadores
from model.database import Database
from model.vingadores import Vingadores
from model.interface import Interface as I

def main():
    db = Database()
    db.connect()

    query = 'SELECT * FROM heroi'
    herois = db.select(query)
    for heroi in herois:
        Vingadores(heroi[1], heroi[2], heroi[3], heroi[4], heroi[5], heroi[6], heroi[7])

    I.apresentar_menu_principal()

if __name__ == '__main__':
    main()