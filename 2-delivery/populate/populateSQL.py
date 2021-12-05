from ids import *
from typing import *

def addRow(tableName: str, attributes: List[str]):

    options = []

    for attribute in attributes:
        if type(attribute) == str:
            options.append('\"' + attribute + '\"')
        elif type(attribute) == int or type(attribute) == float:
            options.append(attribute)
        else:
            options.append("TRUE" if attribute else "FALSE")

    return f"INSERT INTO {tableName} VALUES ({', '.join(map(str, options))});"

def addUser(id: int, name: str, email: str, verified: bool, dateOfBirth: str):
    ret = addRow("User", [id, name, email, verified, dateOfBirth]) + '\n'
    global userId
    userId += 1
    return ret

def addRankingByMonthlyListeners(monthlyListeners: int, ranking: int):
    return addRow("RankingByMonthlyListeners", [monthlyListeners, ranking]) + '\n'

def addArtist(id: int, name: str, email: str, verified: bool, dateOfBirth: str, about: str, monthlyListeners: int, ranking: int):
    ret = addUser(id, name, email, verified, dateOfBirth) + addRankingByMonthlyListeners(monthlyListeners, ranking) + addRow("Artist", [id, about, monthlyListeners]) + '\n'
    return ret

def addConsumer(id: int, name: str, email: str, verified: bool, dateOfBirth: str, paymentPlan: str):
    ret = addUser(id, name, email, verified, dateOfBirth) + addRow("Consumer", [id, paymentPlan]) + '\n'
    return ret

commands = [
    addArtist(userId, "NAAPPERAS", "nunoafonso2002@gmail.com", True, "20-02-2002", "Artista NAAPPERAS", 20_000, 1), 
    addConsumer(userId, "Nuno Pereira", "up202007865@edu.fe.up.pt", False, "20-02-2002", "Free"),
]

with open("povoar.sql", "w") as povoar:
    for command in commands:
        print(command)
        povoar.write(command)