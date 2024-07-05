data BookInfo = Book Int String [String] Type
  deriving (Show)

data Type
  = Horror
  | Scifi
  deriving (Eq, Show)

-- behind = is contructor
data MagazineInfo = Magazine Int String [String]
  deriving (Show)

type CustomerID = Int

-- record syntax
data Customer = Customer
  { customerID :: CustomerID,
    customerName :: String,
    customerAddress :: Address
  }
  deriving (Show)

type ReviewBody = String

type CardHolder = String

type CardNumber = String

type Address = [String]

data BookReview = BookReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

data BillingInfo
  = CreditCard CardNumber CardHolder Address
  | CashOnDelivery
  | Invoice CustomerID
  deriving (Show)

myInfo = Book 123 "Practicing" ["Arin"] Scifi

-- Credit card
myBill = CreditCard "123" "Arin" ["Thailand"]

nyCash = CashOnDelivery

invoice = Invoice 123

customer1 =
  Customer
    271828
    "J.R. Hacker"
    [ "255 Syntax Ct",
      "Milpitas, CA 95134",
      "USA"
    ]

customer2 =
  Customer
    { customerID = 271828,
      customerAddress =
        [ "1048576 Disk Drive",
          "Milpitas, CA 95134",
          "USA"
        ],
      customerName = "Jane Q. Citizen"
    }