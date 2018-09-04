import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.service.LoginService;
import junit.framework.TestCase;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;

//@RunWith(TestRunner.class)
//@PrepareForTest(DAOFactory.class)
public class TestLoginService extends TestCase {

    LoginService loginService = null;
    IClientDAO clientDAO = Mockito.mock(IClientDAO.class);

    public TestLoginService(String name) {
        super(name);

    }

    @Before
    public void setUp(){

        loginService = LoginService.getLoginService();
    }


    @Test
    public void testAuthentificate() throws Exception {
        boolean result = loginService.authentificate("sania@gmail.com", "sania");
        assertEquals(true , result);
    }
}
