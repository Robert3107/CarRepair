package pl.register.dao;

import org.springframework.stereotype.Repository;
import pl.register.entity.TaskRegister;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class TaskRegisterDao {
    @PersistenceContext
    private EntityManager em;

    public TaskRegister findTaskByID(long id){
        return em.find(TaskRegister.class, id);
    }

    public void update(TaskRegister e){
        em.merge(e);
    }
}
