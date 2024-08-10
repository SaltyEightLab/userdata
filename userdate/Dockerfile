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

# 環境変数の設定
ARG DB_URL
ARG DB_USERNAME
ARG DB_PASSWORD
ENV DB_URL=$DB_URL
ENV DB_USERNAME=$DB_USERNAME
ENV DB_PASSWORD=$DB_PASSWORD

CMD [ "java", "-jar", "userdate.jar" ]