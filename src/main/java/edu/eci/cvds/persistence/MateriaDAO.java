/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.eci.cvds.persistence;

import edu.eci.cvds.entities.Materia;
import edu.eci.cvds.entities.Programa;
import java.util.List;

/**
 *
 * @author 2109117
 */
public interface MateriaDAO {
    public void save(Materia m) throws PersistenceException;
    
    public List<Materia> loadFromProgram(int idp) throws PersistenceException ;
    
}
