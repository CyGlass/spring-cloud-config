# CyGlass - Spring Cloud Config

Information on the CyGlass fork of [Spring Cloud Config](https://github.com/spring-cloud/spring-cloud-config). 

## Building


## Eclipse IDE



### Problems

**Failed to access classpath of mojo**
```
Failed to access classpath of mojo org.apache.maven.plugins:maven-checkstyle-plugin:3.0.0:check
Plugin org.apache.maven.plugins:maven-checkstyle-plugin:3.0.0 or one of its dependencies could not be resolved: Failed to collect dependencies at org.apache.maven.plugins:maven-checkstyle-plugin:jar:3.0.0 -> org.springframework.cloud:spring-cloud-build-tools:jar:2.2.0.BUILD-SNAPSHOT

```
This is usually caused by not having the appropriate maven profile selected (active). Be sure to select the maven `spring` profile in the maven section of the project properties. 


**Plugin execution not covered by lifecycle configuration**
```
Description	Resource	Path	Location	Type
Plugin execution not covered by lifecycle configuration: io.spring.javaformat:spring-javaformat-maven-plugin:0.0.9:apply (execution: default, phase: validate)	pom.xml	/spring-cloud-config-client	line 10	Maven Project Build Lifecycle Mapping Problem
```
