data BookInfo = Book Int String [String]
  deriving (Show)

-- behind = is contructor
data MagazineInfo = Magazine Int String [String]
  deriving (Show)

type CustomerID = Int

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

myInfo = Book 123 "Practicing" ["Arin"]

-- Credit card
myBill = CreditCard "123" "Arin" ["Thailand"]

nyCash = CashOnDelivery

invoice = Invoice 123