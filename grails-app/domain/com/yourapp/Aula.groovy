package com.yourapp

import com.yourapp.User
import com.yourapp.Categoria
import com.yourapp.Nivel
import com.yourapp.Proposito

class Aula {
    
    String especialidade        
    BigDecimal valorHoraAula
    boolean exibirValorHoraAula
    
    //User usuarioProfessor
    //Categoria categoria
    //Nivel nivelEscolar
    //Proposito proposito
    
    /* Isso faz o relacionamento bidirecional*/
    static belongsTo = [ usuarioProfessor : User, categoria : Categoria, nivelEscolar : Nivel, proposito : Proposito ] 
    
    
    static hasMany = [ avaliacoes : Avaliacao ]
    
    
    static constraints = {
        
        especialidade(nullable:false,blank:false,maxSize: 2000)
        exibirValorHoraAula(nullable:false,blank:false,inList:[true,false])
        valorHoraAula(nullable:false,blank:false,scale:2)
                          
        usuarioProfessor(nullable:false,blank:false)
        categoria(nullable:false,blank:false)
        nivelEscolar(nullable:false,blank:false)
        proposito(nullable:false,blank:false)
        
    }
        
    static mapping = {  
        especialidade type:'text' 
    }
    
}
