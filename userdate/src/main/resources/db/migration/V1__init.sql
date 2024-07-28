-- ユーザーテーブルの作成
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE
);

-- ユーザーデータテーブルの作成
CREATE TABLE IF NOT EXISTS user_data (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    data_date TIMESTAMP NOT NULL,  -- DATEからTIMESTAMPに変更
    json_data TEXT NOT NULL,
    hash_value UUID NOT NULL
    -- FOREIGN KEY (email) REFERENCES users(email)
);

-- ユーザーの追加
INSERT INTO users (username, email) VALUES ('SaltyEight', 'hachiman_hachi@icloud.com');


-- ユーザーデータの追加
INSERT INTO user_data (email, data_date, json_data, hash_value) VALUES ('hachiman_hachi@icloud.com', '2024-06-26 15:30:00+09', '{
    "rows": 5,
    "columns": 6,
    "perfectSeatArrangeMode": true,
    "fixedByGenderMode": false,
    "seatClosestTeacher": {
        "from_front": 0,
        "from_right": 4
    },
    "nextToPairs": [
        {
            "index": 0,
            "student1": 2,
            "student2": 4
        },
        {
            "index": 1,
            "student1": 3,
            "student2": 1
        }
    ],
    "withInTwoSeatsPairs": [
        {
            "index": 0,
            "student1": 3,
            "student2": 27
        }
    ],
    "awayOneSeatsPairs": [
        {
            "index": 0,
            "student1": 24,
            "student2": 25
        },
        {
            "index": 1,
            "student1": 23,
            "student2": 24
        }
    ],
    "awayTwoSeatsPairs": [
        {
            "index": 0,
            "student1": 7,
            "student2": 10
        }
    ],
    "students": [
        {
            "index": 0,
            "IDforBackend": 25,
            "name": "",
            "currentSeat": {
                "from_front": 0,
                "from_right": 5
            },
            "assignedSeat": {
                "from_front": 0,
                "from_right": 5
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "IsNotToBeUsed"
        },
        {
            "index": 1,
            "IDforBackend": 20,
            "name": "サクラ",
            "currentSeat": {
                "from_front": 0,
                "from_right": 4
            },
            "assignedSeat": {
                "from_front": 4,
                "from_right": 2
            },
            "studentsToPlaceNextTo": [
                {
                    "index": 3,
                    "IDforBackend": 10,
                    "name": "サスケ",
                    "currentSeat": {
                        "from_front": 0,
                        "from_right": 2
                    },
                    "assignedSeat": {
                        "from_front": 4,
                        "from_right": 3
                    },
                    "studentsToPlaceNextTo": [],
                    "studentsToPlaceWithinTwoSeats": [],
                    "studentsToPlaceAwayOneSeat": [
                        {
                            "index": 27,
                            "IDforBackend": 14,
                            "name": "香燐",
                            "currentSeat": {
                                "from_front": 4,
                                "from_right": 2
                            },
                            "assignedSeat": {
                                "from_front": 1,
                                "from_right": 2
                            },
                            "studentsToPlaceNextTo": [],
                            "studentsToPlaceWithinTwoSeats": [],
                            "studentsToPlaceAwayOneSeat": [],
                            "studentsToPlaceAwayTwoSeats": [],
                            "prefersFrontRow": false,
                            "prefersFrontTwoRows": false,
                            "prefersBackRow": false,
                            "prefersBackTwoRows": false,
                            "prefersLeftColumn": false,
                            "prefersRightColumn": false,
                            "prefersNearTeacher": false,
                            "gender": "FEMALE"
                        }
                    ],
                    "studentsToPlaceAwayTwoSeats": [],
                    "prefersFrontRow": false,
                    "prefersFrontTwoRows": false,
                    "prefersBackRow": false,
                    "prefersBackTwoRows": true,
                    "prefersLeftColumn": false,
                    "prefersRightColumn": false,
                    "prefersNearTeacher": false,
                    "gender": "MALE"
                }
            ],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 2,
            "IDforBackend": 15,
            "name": "ナルト",
            "currentSeat": {
                "from_front": 0,
                "from_right": 3
            },
            "assignedSeat": {
                "from_front": 1,
                "from_right": 3
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": true,
            "gender": "MALE"
        },
        {
            "index": 3,
            "IDforBackend": 10,
            "name": "サスケ",
            "currentSeat": {
                "from_front": 0,
                "from_right": 2
            },
            "assignedSeat": {
                "from_front": 4,
                "from_right": 3
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [
                {
                    "index": 27,
                    "IDforBackend": 14,
                    "name": "香燐",
                    "currentSeat": {
                        "from_front": 4,
                        "from_right": 2
                    },
                    "assignedSeat": {
                        "from_front": 1,
                        "from_right": 2
                    },
                    "studentsToPlaceNextTo": [],
                    "studentsToPlaceWithinTwoSeats": [],
                    "studentsToPlaceAwayOneSeat": [],
                    "studentsToPlaceAwayTwoSeats": [],
                    "prefersFrontRow": false,
                    "prefersFrontTwoRows": false,
                    "prefersBackRow": false,
                    "prefersBackTwoRows": false,
                    "prefersLeftColumn": false,
                    "prefersRightColumn": false,
                    "prefersNearTeacher": false,
                    "gender": "FEMALE"
                }
            ],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": true,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 4,
            "IDforBackend": 5,
            "name": "ヒナタ",
            "currentSeat": {
                "from_front": 0,
                "from_right": 1
            },
            "assignedSeat": {
                "from_front": 0,
                "from_right": 2
            },
            "studentsToPlaceNextTo": [
                {
                    "index": 2,
                    "IDforBackend": 15,
                    "name": "ナルト",
                    "currentSeat": {
                        "from_front": 0,
                        "from_right": 3
                    },
                    "assignedSeat": {
                        "from_front": 1,
                        "from_right": 3
                    },
                    "studentsToPlaceNextTo": [],
                    "studentsToPlaceWithinTwoSeats": [],
                    "studentsToPlaceAwayOneSeat": [],
                    "studentsToPlaceAwayTwoSeats": [],
                    "prefersFrontRow": false,
                    "prefersFrontTwoRows": false,
                    "prefersBackRow": false,
                    "prefersBackTwoRows": false,
                    "prefersLeftColumn": false,
                    "prefersRightColumn": false,
                    "prefersNearTeacher": true,
                    "gender": "MALE"
                }
            ],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": true,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 5,
            "IDforBackend": 0,
            "name": "我愛羅",
            "currentSeat": {
                "from_front": 0,
                "from_right": 0
            },
            "assignedSeat": {
                "from_front": 3,
                "from_right": 2
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 6,
            "IDforBackend": 26,
            "name": "ネジ",
            "currentSeat": {
                "from_front": 1,
                "from_right": 5
            },
            "assignedSeat": {
                "from_front": 1,
                "from_right": 1
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 7,
            "IDforBackend": 21,
            "name": "リー",
            "currentSeat": {
                "from_front": 1,
                "from_right": 4
            },
            "assignedSeat": {
                "from_front": 1,
                "from_right": 0
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 8,
            "IDforBackend": 16,
            "name": "長門",
            "currentSeat": {
                "from_front": 1,
                "from_right": 3
            },
            "assignedSeat": {
                "from_front": 3,
                "from_right": 5
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 9,
            "IDforBackend": 11,
            "name": "白",
            "currentSeat": {
                "from_front": 1,
                "from_right": 2
            },
            "assignedSeat": {
                "from_front": 3,
                "from_right": 4
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "UNISEX"
        },
        {
            "index": 10,
            "IDforBackend": 6,
            "name": "テンテン",
            "currentSeat": {
                "from_front": 1,
                "from_right": 1
            },
            "assignedSeat": {
                "from_front": 2,
                "from_right": 3
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 11,
            "IDforBackend": 1,
            "name": "小南",
            "currentSeat": {
                "from_front": 1,
                "from_right": 0
            },
            "assignedSeat": {
                "from_front": 1,
                "from_right": 5
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": true,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 12,
            "IDforBackend": 27,
            "name": "テマリ",
            "currentSeat": {
                "from_front": 2,
                "from_right": 5
            },
            "assignedSeat": {
                "from_front": 3,
                "from_right": 1
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 13,
            "IDforBackend": 22,
            "name": "サイ",
            "currentSeat": {
                "from_front": 2,
                "from_right": 4
            },
            "assignedSeat": {
                "from_front": 1,
                "from_right": 4
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 14,
            "IDforBackend": 17,
            "name": "いの",
            "currentSeat": {
                "from_front": 2,
                "from_right": 3
            },
            "assignedSeat": {
                "from_front": 3,
                "from_right": 3
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 15,
            "IDforBackend": 12,
            "name": "キバ",
            "currentSeat": {
                "from_front": 2,
                "from_right": 2
            },
            "assignedSeat": {
                "from_front": 2,
                "from_right": 0
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": true,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 16,
            "IDforBackend": 7,
            "name": "シノ",
            "currentSeat": {
                "from_front": 2,
                "from_right": 1
            },
            "assignedSeat": {
                "from_front": 3,
                "from_right": 0
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 17,
            "IDforBackend": 2,
            "name": "木ノ葉丸",
            "currentSeat": {
                "from_front": 2,
                "from_right": 0
            },
            "assignedSeat": {
                "from_front": 0,
                "from_right": 0
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": true,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 18,
            "IDforBackend": 28,
            "name": "カンクロウ",
            "currentSeat": {
                "from_front": 3,
                "from_right": 5
            },
            "assignedSeat": {
                "from_front": 0,
                "from_right": 3
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 19,
            "IDforBackend": 23,
            "name": "ダルイ",
            "currentSeat": {
                "from_front": 3,
                "from_right": 4
            },
            "assignedSeat": {
                "from_front": 2,
                "from_right": 2
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 20,
            "IDforBackend": 18,
            "name": "サムイ",
            "currentSeat": {
                "from_front": 3,
                "from_right": 3
            },
            "assignedSeat": {
                "from_front": 2,
                "from_right": 5
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 21,
            "IDforBackend": 13,
            "name": "チョウジ",
            "currentSeat": {
                "from_front": 3,
                "from_right": 2
            },
            "assignedSeat": {
                "from_front": 2,
                "from_right": 4
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 22,
            "IDforBackend": 8,
            "name": "オビト",
            "currentSeat": {
                "from_front": 3,
                "from_right": 1
            },
            "assignedSeat": {
                "from_front": 2,
                "from_right": 1
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 23,
            "IDforBackend": 3,
            "name": "デイダラ",
            "currentSeat": {
                "from_front": 3,
                "from_right": 0
            },
            "assignedSeat": {
                "from_front": 0,
                "from_right": 4
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 24,
            "IDforBackend": 29,
            "name": "サソリ",
            "currentSeat": {
                "from_front": 4,
                "from_right": 5
            },
            "assignedSeat": {
                "from_front": 4,
                "from_right": 4
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": true,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 25,
            "IDforBackend": 24,
            "name": "再不斬",
            "currentSeat": {
                "from_front": 4,
                "from_right": 4
            },
            "assignedSeat": {
                "from_front": 4,
                "from_right": 5
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": true,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "MALE"
        },
        {
            "index": 26,
            "IDforBackend": 19,
            "name": "小南",
            "currentSeat": {
                "from_front": 4,
                "from_right": 3
            },
            "assignedSeat": {
                "from_front": 0,
                "from_right": 1
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 27,
            "IDforBackend": 14,
            "name": "香燐",
            "currentSeat": {
                "from_front": 4,
                "from_right": 2
            },
            "assignedSeat": {
                "from_front": 1,
                "from_right": 2
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "FEMALE"
        },
        {
            "index": 28,
            "IDforBackend": 9,
            "name": "",
            "currentSeat": {
                "from_front": 4,
                "from_right": 1
            },
            "assignedSeat": {
                "from_front": 4,
                "from_right": 1
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "IsNotToBeUsed"
        },
        {
            "index": 29,
            "IDforBackend": 4,
            "name": "",
            "currentSeat": {
                "from_front": 4,
                "from_right": 0
            },
            "assignedSeat": {
                "from_front": 4,
                "from_right": 0
            },
            "studentsToPlaceNextTo": [],
            "studentsToPlaceWithinTwoSeats": [],
            "studentsToPlaceAwayOneSeat": [],
            "studentsToPlaceAwayTwoSeats": [],
            "prefersFrontRow": false,
            "prefersFrontTwoRows": false,
            "prefersBackRow": false,
            "prefersBackTwoRows": false,
            "prefersLeftColumn": false,
            "prefersRightColumn": false,
            "prefersNearTeacher": false,
            "gender": "IsNotToBeUsed"
        }
    ]
}', gen_random_uuid());

