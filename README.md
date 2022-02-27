# weight-recorder

# プロジェクト作成

```bash
stack build
```

# Sqliteの疎通

```bash
$ ghci
import GHCi, version 8.10.7: https://www.haskell.org/ghc/  :? for help
DPrelude> import Database.HDBC.Sqlite3
Prelude Database.HDBC.Sqlite3> conn <- connectSqlite3 "weight.db"
Prelude Database.HDBC.Sqlite3> import Database.HDBC
Prelude Database.HDBC.Sqlite3 Database.HDBC> st <- prepare conn "select count(*) from user"
Prelude Database.HDBC.Sqlite3 Database.HDBC> _ <- execute st []
Prelude Database.HDBC.Sqlite3 Database.HDBC> fetchRow st
Just [SqlInt64 0]
Prelude Database.HDBC.Sqlite3 Database.HDBC> fetchRow st
Nothing
Prelude Database.HDBC.Sqlite3 Database.HDBC> disconnect conn
```
