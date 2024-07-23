FROM gradle:jdk17 AS base

ENV DB_URL=jdbc:postgresql://postgres:5432/seatarrangerdb
ENV DB_USERNAME=saltyeight
ENV DB_PASSWORD=Yashi0Takuya
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
ENV DB_URL=jdbc:postgresql://seatarranger-db.cb0ug2gk6bpf.ap-northeast-1.rds.amazonaws.com:5432/seatarranger_db
ENV DB_USERNAME=saltyeight
ENV DB_PASSWORD=Yashi0Takuya

CMD [ "java", "-jar", "userdate.jar" ]