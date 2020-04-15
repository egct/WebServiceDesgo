/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.modelo;


/**
 *
 * @author egct
 */
public class HashMapClassForm {
    FormularioIds form;
    User us;

    public HashMapClassForm() {
    }

    public HashMapClassForm(FormularioIds form, User us) {
        this.form = form;
        this.us = us;
    }

    public void setForm(FormularioIds form) {
        this.form = form;
    }

    public void setUs(User us) {
        this.us = us;
    }

    
    public FormularioIds getForm() {
        return form;
    }

    public User getUs() {
        return us;
    }
    
}
