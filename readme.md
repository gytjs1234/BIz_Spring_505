# Spring Mybatis Project
* SpringMVC Project 와 Orale ,MYSQL등 DBMS와 연동하는 Project

## Depedency 설정
* spring-jdbc
* mybatis
* mybatis-spring
* commons-dbcp2
* ojdbc 또는 mysql-connector/j
* spring-jdbc 는 spring=webmvc와 버전을 일치시켜양한다
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-jdbc</artifactId>
    
    <version>${org.springframework-version}</version>
</dependency>
 ### mybatis
 * 현재 3.5.9최신버전
<!-- https://mvnrepository.com/artifact/org.mybatis/mybatis -->
<dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis</artifactId>
    <version>3.5.9</version>
</dependency>

### mybatis-spring
*현재 2.0.7최신버전
<!-- https://mvnrepository.com/artifact/org.mybatis/mybatis-spring -->
<dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis-spring</artifactId>
    <version>2.0.7</version>
</dependency>

###commons-dbcp2
*현재2.9.0
*dbms와 연결할때 Connection pool 울 관리하는도구
<!-- https://mvnrepository.com/artifact/org.apache.commons/commons-dbcp2 -->
<dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-dbcp2</artifactId>
    <version>2.9.0</version>
</dependency>```

###ojdbc 또는 mysql-connection/j
oracle은 ojdbc8을 사용ㅇ하며 21.5.0.0현재사용
*ㅡmavenrepository에서 oracle로검색하기
<!-- https://mvnrepository.com/artifact/com.oracle.database.jdbc/ojdbc8 -->
<dependency>
    <groupId>com.oracle.database.jdbc</groupId>
    <artifactId>ojdbc8</artifactId>
    <version>19.8.0.0</version>
</dependency>

*mysql은DBMS버전에 따라 다른 connector을 사용한다
*5.7.x 은5.x.x를 사용하고 8.x.x는 현재 8.0.29를 사용한다
<!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>5.1.49</version>
</dependency>
