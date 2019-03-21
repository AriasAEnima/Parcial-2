/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.eci.cvds.persistence.mybatisimpl.mappers;

import edu.eci.cvds.entities.Materia;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 *
 * @author 2109117
 */
public interface MateriaMapper {
    public void insertarMateria(@Param("mat") Materia m);
   
    public List<Materia> consultarMateriaPorPrograma(@Param("pro") int idp);
    
}
