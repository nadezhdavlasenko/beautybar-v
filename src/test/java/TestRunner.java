import junit.framework.TestResult;
import junit.framework.TestSuite;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner{
    public static void main(String[] args) {
        TestRunner runner = new TestRunner();
        TestSuite suite = new TestSuite();
        Result result = JUnitCore.runClasses(TestLoginService.class);;
        suite.addTest(new TestLoginService ("testAutheficate"));
        for (Failure failure : result.getFailures()) {
            System.out.println(failure.toString());
        }

        System.out.println(result.wasSuccessful());
    }
}
