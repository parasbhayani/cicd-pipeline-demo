# CI-CD pipeline - Gradle

- A gradle build is defined in a groovy script called build.gradle, and is under the root directory of your project dir

- We use gradle init command to initialize new project, and this sets the gradle wrapper too

    ```
    gradle init
    ```

    ```
    Starting a Gradle Daemon, 1 incompatible Daemon could not be reused, use --status for details

    Select type of project to generate:
    1: basic
    2: application
    3: library
    4: Gradle plugin
    Enter selection (default: basic) [1..4] 1

    Select build script DSL:
    1: Groovy
    2: Kotlin
    Enter selection (default: Groovy) [1..2] 1

    Project name (default: cicd-pipeline-demo): 


    > Task :init
    Get more help with your project: Learn more about Gradle by exploring our samples at https://docs.gradle.org/7.1.1/samples

    BUILD SUCCESSFUL in 28s
    2 actionable tasks: 2 executed
    ```

- Gradle build file has **tasks**, which you can call from CLI

    ```
    ./gradlew sampleTask1 sampleTask2
    ```
- This command will run both the tasks

- Example task,

    ```
    task myTask {
        printIn 'Hello World!'
    }
    ```

- Most tasks can be accomplished by getting plugins, the plugins can be explored here
[Gradle plugin](https://plugins.gradle.org)

- Gradle tasks can have dependencies on one-another, which can be explictly defined using **dependsOn** property in your build.gradle file

- In our sample build file we are using dependency between tasks, where-in Task2 is dependent on Task1

- So when Task2 is run via gradle wrapper as below, you can notice output which also runs Task1

    ```
    ./gradlew Task2
    ```

    ```
    > Task :Task1
    Hello, World!

    > Task :Task2
    Welcome to Gradle

    BUILD SUCCESSFUL in 1s
    2 actionable tasks: 2 executed
    ```