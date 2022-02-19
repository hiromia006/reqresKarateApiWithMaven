package reqres.in;

import com.intuit.karate.junit5.Karate;

public class ApiTestRunner {
    @Karate.Test
    public Karate runFeatures() {
        String pathFromContent = System.getProperty("user.dir") + "/src/test/java/reqres/in/";

        return Karate.run(pathFromContent + "CreateUserTest.feature",
                pathFromContent + "UpdateUserTest.feature",
                pathFromContent + "GetListUsersTest.feature",
                pathFromContent + "GetListUsersTest.feature",
                pathFromContent + "GetSingleUserTest.feature",
                pathFromContent + "DeleteUserTest.feature"
        );
    }
}
