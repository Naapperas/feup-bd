class Keyword:
    def __init__(self, keyword: str):
        self.keyword = keyword

    def __repr__(self):
        return str(self.keyword) 

CREATE = Keyword("CREATE")
TABLE = Keyword("TABLE")
VALUES = Keyword("VALUES")
CONSTRAINT = Keyword("CONSTRAINT")
INSERT = Keyword("INSERT")
TEXT = Keyword("TEXT")
CHAR = Keyword("CHAR")
INT = Keyword("INT")
REAL = Keyword("REAL")
PRIMARY = Keyword("PRIMARY")
KEY = Keyword("KEY")
CHECK = Keyword("CHECK")
NOT = Keyword("NOT")
UNIQUE = Keyword("UNIQUE")

def createAttribute(attrName, **kwargs):
    options = {}

    if "type" not in kwargs:
        raise "No type specified for given attribute"
    
    options["type"] = kwargs["type"]

    if "null" in kwargs and type(kwargs["null"]) == bool:
        if kwargs["null"]:
            options["null"] = True
    
    if "unique" in kwargs:
        options["unique"] = True

    return f"{attrName}"