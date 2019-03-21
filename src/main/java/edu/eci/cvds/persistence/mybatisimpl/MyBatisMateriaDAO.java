/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.eci.cvds.persistence.mybatisimpl;

import com.google.inject.Inject;
import edu.eci.cvds.entities.Materia;
import edu.eci.cvds.entities.Programa;
import edu.eci.cvds.persistence.MateriaDAO;
import edu.eci.cvds.persistence.PersistenceException;
import edu.eci.cvds.persistence.mybatisimpl.mappers.MateriaMapper;
import java.util.List;

/**
 *
 * @author 2109117
 */
public class MyBatisMateriaDAO implements MateriaDAO{
    @Inject
    private MateriaMapper mp;

    @Override
    public void save(Materia m) throws PersistenceException {
        mp.insertarMateria(m);
    }

    @Override
    public List<Materia> loadFromProgram(int idp) {
        return mp.consultarMateriaPorPrograma(idp);
    }
    
}
