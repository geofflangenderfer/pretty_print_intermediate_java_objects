# install gradle. sdkman is pretty cool: https://sdkman.io/install
# sdk install gradle 7.3.3
build_gradle="apply plugin: 'application'

mainClassName = 'example.PrettyPrintExample'

repositories { 
    mavenCentral() 
}

sourceCompatibility = 1.8
targetCompatibility = 1.8

dependencies {
    implementation 'com.google.code.gson:gson:2.8.9'
}
"
pretty_print_java='package example;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class PrettyPrintExample {
    Gson gson = new GsonBuilder().setPrettyPrinting().serializeNulls().create();
    static class DataStructure {
        int x    = 1;
        String y = "hello";
        int[] z  = new int[]{1,2,3,4};

    }
    public void printObject() {
        DataStructure obj = new DataStructure();
        System.out.println(gson.toJson(obj));
    }
    public static void main(String[] args) {
        PrettyPrintExample test = new PrettyPrintExample();
        test.printObject();
    }

}
'

# write to files
echo -e "$build_gradle" > build.gradle
mkdir -p src/main/java/example
echo -e "$pretty_print_java" > src/main/java/example/PrettyPrintExample.java

gradle build
gradle run
