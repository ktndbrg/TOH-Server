
class Player ():
    name = "ghost"
    fd = 0
    position = 10000
    direction = 1
    
    def __init__ (self):
        pass

class Enemy ():
    def __init__ (self, type):
        if type == "small":
            self.position = 10

class Server ():
    

    def __init__ (self):
        self.tick = 0
        self.foobars = 0
        self.tick_delay = 100
        self.game_timer = 1
        self.game_state = 1
        self.connections = 0
        self.players = []

