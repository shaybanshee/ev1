class TestData
  attr_reader :transfers, :users, :accounts, :likes
  def initialize
    @transfers = [
      {
      "id": 1,
      "status": "complete",
      "originAccount": 1,
      "targetAccount": 4,
      "amount": 10000,
      "description": "Consider us even >:|",
      "initiatedAt": "2019-05-20T12:53:38-04:00",
      "completedAt": "2019-05-22T12:00:00-04:00",
      "failedAt": nil
      },
      {
      "id": 2,
      "status": "initiated",
      "originAccount": 1,
      "targetAccount": 7,
      "amount": 5500,
      "description": "Winner, winner...",
      "initiatedAt": "2019-05-23T12:53:38-04:00",
      "completedAt": nil,
      "failedAt": nil
      },
      {
      "id": 3,
      "status": "complete",
      "originAccount": 2,
      "targetAccount": 5,
      "amount": 2500,
      "description": "Thanks for the cut!!",
      "initiatedAt": "2019-05-04T12:53:38-04:00",
      "completedAt": "2019-05-06T12:00:00-04:00",
      "failedAt": nil
      },
      {
      "id": 4,
      "status": "complete",
      "originAccount": 7,
      "targetAccount": 5,
      "amount": 1000,
      "description": "Splitting the cab",
      "initiatedAt": "2019-05-10T12:53:38-04:00",
      "completedAt": "2019-05-12T12:00:00-04:00",
      "failedAt": nil
      },
      {
      "id": 5,
      "status": "failed",
      "originAccount": 4,
      "targetAccount": 3,
      "amount": 1257,
      "description": "Drinks :cocktail:",
      "initiatedAt": "2019-02-10T12:53:38-04:00",
      "completedAt": nil,
      "failedAt": "2019-02-11T12:00:00-04:00"
      }
    ]

    @users = [
      {
      "id": 1,
      "firstName": "Aaron",
      "lastName": "Howard",
      "accounts": [
      1,
      2
      ],
      "transfers": [
      1,
      2,
      3
      ],
      "likes": [
      4
      ]
      },
      {
      "id": 2,
      "firstName": "Cassie",
      "lastName": "Perez",
      "accounts": [
      3
      ],
      "transfers": [
      5
      ],
      "likes": [
      1
      ]
      },
      {
      "id": 3,
      "firstName": "Larry",
      "lastName": "Smith",
      "accounts": [
      4
      ],
      "transfers": [
      1,
      5
      ],
      "likes": []
      },
      {
      "id": 4,
      "firstName": "Jean",
      "lastName": "Sawyer",
      "accounts": [
      5,
      6
      ],
      "transfers": [
      3,
      4
      ],
      "likes": []
      },
      {
      "id": 5,
      "firstName": "Julie",
      "lastName": "Nimmo",
      "accounts": [
      7
      ],
      "transfers": [
      2,
      4
      ],
      "likes": []
      }
    ]

    @accounts = [
      {
      "id": 1,
      "user": 1,
      "accountNumber": "2080469406",
      "balance": 120000
      },
      {
      "id": 2,
      "user": 1,
      "accountNumber": "4697809130",
      "balance": 5000
      },
      {
      "id": 3,
      "user": 2,
      "accountNumber": "6300148245",
      "balance": 15260
      },
      {
      "id": 4,
      "user": 3,
      "accountNumber": "9472141120",
      "balance": 321145
      },
      {
      "id": 5,
      "user": 4,
      "accountNumber": "5500899526",
      "balance": 210030
      },
      {
      "id": 6,
      "user": 4,
      "accountNumber": "8636139744",
      "balance": 13278
      },
      {
      "id": 7,
      "user": 5,
      "accountNumber": "4144654678",
      "balance": 24500
      }
    ]
      
      @likes = [
        {
        "id": 1,
        "user": 2,
        "transfer": 1
        },
        {
        "id": 2,
        "user": 4,
        "transfer": 1
        },
        {
        "id": 3,
        "user": 4,
        "transfer": 3
        },
        {
        "id": 4,
        "user": 1,
        "transfer": 4
        }
      ]
    end
end