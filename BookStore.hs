data BookInfo = Book Int String [String]
  deriving (Show)

data MagazineInfo = Magazine Int String [String]
  deriving (Show)

data Customer = Customer Int String
  deriving (Show)

data BookReview = BookReview BookInfo Customer String

myInfo = Book 123 "Practicing" ["Arin"]
