import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.entity.Client;
import finalproj.beautybar.service.LoginService;
import org.junit.Before;
import org.junit.Test;
import org.mindrot.jbcrypt.BCrypt;
import org.mockito.Mock;
import org.powermock.api.mockito.PowerMockito;
import org.junit.runner.RunWith;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;
import static junit.framework.Assert.assertTrue;
import static org.mockito.Mockito.when;

@RunWith(PowerMockRunner.class)
@PrepareForTest(DAOFactory.class)
public class LoginServiceTest {

    @Mock
    IClientDAO clientDAO;

    @Before
    public void setUp() throws Exception {
        Client client = new Client();
        client.setEmail("anton@gmail.com");
        client.setPasswordHash(BCrypt.hashpw("pass", BCrypt.gensalt(31)));
        PowerMockito.mockStatic(DAOFactory.class);
        when(DAOFactory.getClientDAO()).thenReturn(clientDAO);
        when(clientDAO.findByEmail("anton@gmail.com")).thenReturn(client);

    }

    @Test
    public void testAuthentificate() throws Exception {
        boolean result = LoginService.getLoginService().authentificate("anton@gmail.com", "pass");
        assertTrue(result);
    }
}
