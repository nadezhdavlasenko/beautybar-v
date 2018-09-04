import finalproj.beautybar.command.ICommand;
import finalproj.beautybar.controller.ControllerHelper;
import finalproj.beautybar.controller.Servlet;
import finalproj.beautybar.manager.Config;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.powermock.modules.junit4.PowerMockRunner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.powermock.api.mockito.PowerMockito.when;

@RunWith(PowerMockRunner.class)
public class ServletTest {

    @Mock
    HttpServletRequest request;
    @Mock
    HttpServletResponse response;
    @Mock
    RequestDispatcher dispatcher;
    @Mock
    ICommand command;
    @Mock
    HttpSession session;
    @Mock
    ControllerHelper controllerHelper;
    @Mock
    ServletContext servletContext;

    @Before
    public void setUp() throws Exception {

        String page = Config.INDEX;
        when(request.getSession(true)).thenReturn(session);
        when(controllerHelper.getCommand(request)).thenReturn(command);
        when(command.execute(request, response)).thenReturn(page);
        when(servletContext.getRequestDispatcher(any())).thenReturn(dispatcher);
    }

    @Test
    public void whenCallDoGet() throws Exception {
        Servlet servlet = new Servlet() {
            @Override
            public ServletContext getServletContext() {
                return servletContext;
            }
        };
        servlet.doGet(request, response);
        verify(dispatcher).forward(request, response);
    }
}
