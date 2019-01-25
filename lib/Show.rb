require 'pry'
class Show
  
    def show_board
      #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
        puts "*"*16.5*3
        puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
        puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
        puts "*#{" "*6}#{0}#{" "*7}*#{" "*7}#{1}#{" "*7}*#{" "*7}#{2}#{" "*7}*"
        puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
        puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
        puts "*"*16*3
            # deuxieme row
     
        puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
        puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
        puts "*#{" "*6}#{4}#{" "*7}*#{" "*7}#{5}#{" "*7}*#{" "*7}#{6}#{" "*7}*"
      puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
      puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
      puts "*"*16*3
            #troisieme row
      puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
      puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
      puts "*#{" "*6}#{7}#{" "*7}*#{" "*7}#{8}#{" "*7}*#{" "*7}#{9}#{" "*7}*"
      puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
      puts "*#{" "*14}*#{" "*15}*#{" "*15}*"
      puts "*"*16*3

      Playeur.new.playeur
    
    end
    
end


class Game
    def choisir_un_chiffre
        puts "choisire un chiffre entre 1-9 selon le tableau ci-dessus"
            @chiffreA = gets.chomp.to_i
                while @chiffreA < 1 || @chiffreA > 9 
                   puts "veuillez choisir entre 1 et 9 svp"
                   @chiffreA = gets.chomp.to_i
                end
                if  @chiffreA < 1 || @chiffreA > 9 
                    puts "bdhksjb"
                else
                    system("clear")
                    Change.new.changement
                    
                end
                
                    
    end

end

class Playeur

  
    def playeur
        joueur = []
        puts "entrer le nom du joueur 1"
        joueur1 = gets.chomp
        joueur  << joueur1
        puts "entrer le nom du joueur 2"
        joueur2 = gets.chomp
       joueur  << joueur2
        @@joueur = playeur
        # valeur des deux joueur por tirer au hasard
            if @@joueur.sample(1) == @@joueur[0]
                puts " tour du #{@@joueur.sample(1)}"
                Game.new.choisir_un_chiffre
            else
                puts "tour du #{@@joueur[1]}"
                Game.new.choisir_un_chiffre
            end
    end

    
    def connecteur
        playeur
        choix_du_hasard(joueur1,joueur2)
    end
end

Show.new.show_board
