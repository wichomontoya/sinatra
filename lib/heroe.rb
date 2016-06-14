require "./lib/tecnica"
class Heroe
    #Caracteristicas
    attr_reader :tecnicas
    attr_accessor :nivelDePoder,:nombre,:id
    @@identificador=0
    FASEUNO=1
    FASEDOS=2
    FASETRES=3
    #Constructor
    def initialize nombre,nivelDePoder
        @id=@@identificador
        @nombre=nombre
        @nivelDePoder=nivelDePoder
        @tecnicas=[]
        @@identificador+=1
    end

    def aprenderTecnica(tecnica)
        @tecnicas.push(tecnica)
    end
   #Comportamiento (Métodos)
   def obtenerExperiencia(poder)
       @nivelDePoder+=poder
   end

   def self.estadoClase 
       return @@identificador
   end


end

#var Heroe=function(nombre, nivelDePoder){
#    this.nombre=nombre
#    this.nivelDePoder=nivelDePoder
#}