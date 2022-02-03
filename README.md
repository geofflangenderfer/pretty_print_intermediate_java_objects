```
❯ bash run.sh

BUILD SUCCESSFUL in 1s
5 actionable tasks: 5 executed

> Task :run
{
  "x": 1,
  "y": "hello",
  "z": [
    1,
    2,
    3,
    4
  ]
}

BUILD SUCCESSFUL in 1s
2 actionable tasks: 1 executed, 1 up-to-date

❯ tree
.
├── build
│   ├── classes
│   │   └── java
│   │       └── main
│   │           └── example
│   │               ├── PrettyPrintExample$DataStructure.class
│   │               └── PrettyPrintExample.class
│   ├── distributions
│   │   ├── test.tar
│   │   └── test.zip
│   ├── generated
│   │   └── sources
│   │       ├── annotationProcessor
│   │       │   └── java
│   │       │       └── main
│   │       └── headers
│   │           └── java
│   │               └── main
│   ├── libs
│   │   └── test.jar
│   ├── scripts
│   │   ├── test
│   │   └── test.bat
│   └── tmp
│       ├── compileJava
│       │   └── previous-compilation-data.bin
│       └── jar
│           └── MANIFEST.MF
├── build.gradle
├── run.sh
└── src
    └── main
        └── java
            └── example
                └── PrettyPrintExample.java

23 directories, 12 files

❯
```
