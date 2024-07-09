FROM gradle:jdk17 AS base
CMD ["bash"]

# test-and-build
FROM base AS test-and-build
COPY . /workspace
WORKDIR /workspace
RUN ./gradlew build

# production
FROM openjdk:17 AS production
COPY --from=test-and-build /workspace/build/libs/userdate-0.0.1-SNAPSHOT.jar ./userdate.jar
CMD [ "java", "-jar", "userdate.jar" ]

