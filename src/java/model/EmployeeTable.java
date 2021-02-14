/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.transaction.UserTransaction;

/**
 *
 * @author kritsana135
 */
public class EmployeeTable {

    public static int insert(Employee emp) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmployeeWebAppPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Employee target = em.find(Employee.class, emp.getId());
            if (target != null) {
                return 0;
            }
            em.persist(emp);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
    }

    public static List<Employee> findAllEmployee() throws NamingException {
        List<Employee> empList = null;

        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("EmployeeWebAppPU");
        EntityManager entitymanager = emfactory.createEntityManager();
        try {
            empList = (List<Employee>) entitymanager.createNamedQuery("Employee.findAll").getResultList();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            entitymanager.close();
            emfactory.close();
        }
        return empList;
    }
    
    public static int updateEmployee(Employee emp) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmployeeWebAppPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Employee target = em.find(Employee.class, emp.getId());
            if (target == null) {
                return 0;
            }
            target.setName(emp.getName());
            target.setSalary(emp.getSalary());
            em.persist(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();   
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
        
    }
    
    public static Employee findById(int id) throws NamingException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmployeeWebAppPU");
        EntityManager em = emf.createEntityManager();
        Employee emp = null;
        try {
            emp = em.find(Employee.class, id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        finally {
            em.close();
            emf.close();
        }
        return emp;
    }

    public static String test() {
        return "Jiro Chasn";
    }
    
    public static int removeEmployee(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmployeeWebAppPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Employee target = em.find(Employee.class, id);
            if (target == null) {
                return 0;
            }
            em.remove(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
    }

    public void persist(Object object) {
        /* Add this to the deployment descriptor of this module (e.g. web.xml, ejb-jar.xml):
         * <persistence-context-ref>
         * <persistence-context-ref-name>persistence/LogicalName</persistence-context-ref-name>
         * <persistence-unit-name>EmployeeWebAppPU</persistence-unit-name>
         * </persistence-context-ref>
         * <resource-ref>
         * <res-ref-name>UserTransaction</res-ref-name>
         * <res-type>javax.transaction.UserTransaction</res-type>
         * <res-auth>Container</res-auth>
         * </resource-ref> */
        try {
            Context ctx = new InitialContext();
            UserTransaction utx = (UserTransaction) ctx.lookup("java:comp/env/UserTransaction");
            utx.begin();
            EntityManager em = (EntityManager) ctx.lookup("java:comp/env/persistence/LogicalName");
            em.persist(object);
            utx.commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }
}
