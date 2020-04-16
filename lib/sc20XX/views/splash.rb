require_relative '../ui/view'

module Sc20XX
  module Views
    # is responsible for drawing the wonderful splash screen
    class Splash < UI::View
      CONTENT = %q{


        _________
        / ======= \
       / __________\
      | ___________ |
      | | -       | |
      | | sc20XX  | |
      | |_________| | 
      \=____________/         
      / """"""""""" \                        
     / ::::::::::::: \                   
    (_________________)




    .-'''-.     _______      .`````-.   .-```````-.  _____     __   _____     __   
    / _     \   /   __  \    /   ,-.  \ / ,```````. \ \   _\   /  /  \   _\   /  /  
   (`' )/`--'  | ,_/  \__)  (___/  |   ||/ .-./ )  \| .-./ ). /  '   .-./ ). /  '   
  (_ o _).   ,-./  )              .'  / || \ '_ .')|| \ '_ .') .'    \ '_ .') .'    
   (_,_). '. \  '_ '`)        _.-'_.-'  ||(_ (_) _)||(_ (_) _) '    (_ (_) _) '     
  .---.  \  : > (_)  )  __  _/_  .'     ||  / .  \ ||  /    \   \     /    \   \    
  \    `-'  |(  .  .-'_/  )( ' )(__..--.||  `-'`"` ||  `-'`-'    \    `-'`-'    \   
   \       /  `-'`-'     /(_{;}_)      |\'._______.'/ /  /   \    \  /  /   \    \  
    `-...-'     `._____.'  (_,_)-------' '._______.' '--'     '----''--'     '----' 
                                                                                    
  

                       A SoundCloud client for the terminal
}

      protected

      def left
        (rect.width - lines.map(&:length).max) / 2
      end

      def top
        (rect.height - lines.size) / 2
      end

      def lines
        CONTENT.split("\n")
      end

      def draw
        0.upto(top) { line '' }
        lines.each do |row|
          with_color(:green) do
            line ' ' * left + row
          end
        end
      end

      def refresh
        super

        # show until any keypress
        @window.getch
      end
    end
  end
end
