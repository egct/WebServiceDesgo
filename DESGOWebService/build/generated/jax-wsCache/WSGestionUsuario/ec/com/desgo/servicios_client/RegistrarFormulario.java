
package ec.com.desgo.servicios_client;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para registrarFormulario complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="registrarFormulario"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="form" type="{http://servicios.desgo.com.ec/}formulario" minOccurs="0"/&gt;
 *         &lt;element name="user" type="{http://servicios.desgo.com.ec/}user" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "registrarFormulario", propOrder = {
    "form",
    "user"
})
public class RegistrarFormulario {

    protected Formulario form;
    protected User user;

    /**
     * Obtiene el valor de la propiedad form.
     * 
     * @return
     *     possible object is
     *     {@link Formulario }
     *     
     */
    public Formulario getForm() {
        return form;
    }

    /**
     * Define el valor de la propiedad form.
     * 
     * @param value
     *     allowed object is
     *     {@link Formulario }
     *     
     */
    public void setForm(Formulario value) {
        this.form = value;
    }

    /**
     * Obtiene el valor de la propiedad user.
     * 
     * @return
     *     possible object is
     *     {@link User }
     *     
     */
    public User getUser() {
        return user;
    }

    /**
     * Define el valor de la propiedad user.
     * 
     * @param value
     *     allowed object is
     *     {@link User }
     *     
     */
    public void setUser(User value) {
        this.user = value;
    }

}
