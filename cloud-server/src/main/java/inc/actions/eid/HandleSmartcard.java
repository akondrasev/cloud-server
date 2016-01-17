package inc.actions.eid;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.naming.InvalidNameException;
import javax.naming.ldap.LdapName;
import javax.naming.ldap.Rdn;
import javax.servlet.http.HttpServletRequest;
import java.security.cert.X509Certificate;

public class HandleSmartcard extends ActionSupport {
    public String execute() throws InvalidNameException {
        HttpServletRequest request = ServletActionContext.getRequest();
        String cipherSuite = (String) request.getAttribute("javax.servlet.request.cipher_suite");

        if (cipherSuite != null) {
            X509Certificate[] certChain = (X509Certificate[]) request.getAttribute("javax.servlet.request.X509Certificate");

            if (certChain != null) {

                String dn = certChain[0].getSubjectDN().toString();

                LdapName ldapDN = new LdapName(dn);

                for (Rdn rdn : ldapDN.getRdns()) {
                    String val = (String) rdn.getValue();
                }
                certChain[0].getNotAfter();
            }
        }
        return Action.SUCCESS;
    }
}
