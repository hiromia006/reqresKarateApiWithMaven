package reqres.in;

import com.intuit.karate.junit5.Karate;

public class ApiTestRunner {
    @Karate.Test
    public Karate runFeatures() {
        String projectHomeDirectory = System.getProperty("user.dir");
        String pathFromContent = "/src/test/java/reqres/in/";
        String featureFiles = projectHomeDirectory + pathFromContent + "CreateUserTest.feature" + "," +
                projectHomeDirectory + pathFromContent + "UpdateUserTest.feature" + ", " +
                projectHomeDirectory + pathFromContent + "GetSingleUserTest.feature" + ", " +
                projectHomeDirectory + pathFromContent + "GetListUsersTest.feature" + ", " +
                projectHomeDirectory + pathFromContent + "DeleteUserTest.feature";

        return Karate.run(featureFiles);
    }
}
