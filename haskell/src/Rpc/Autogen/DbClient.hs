module Rpc.Autogen.DbClient (
  comCitrixXenclientDbDump
  , comCitrixXenclientDbExists
  , comCitrixXenclientDbInject
  , comCitrixXenclientDbList
  , comCitrixXenclientDbRead
  , comCitrixXenclientDbReadBinary
  , comCitrixXenclientDbRm
  , comCitrixXenclientDbWrite
) where

import Data.Maybe
import Data.String
import Data.Int
import Data.Word
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.ByteString as B
import Rpc.Core

mkcall :: String -> String -> String -> String -> [Variant] -> RpcCall
mkcall service objpath interface memb args =
  RpcCall (fromString service) (fromString objpath) (fromString interface) (fromString memb) args

-- Interface com.citrix.xenclient.db

comCitrixXenclientDbDump :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientDbDump service_ objPath_ path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "dump" [ (toVariant $ path) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.dump"

comCitrixXenclientDbExists :: ((MonadRpc e m)) => String -> String -> String -> m (Bool)
comCitrixXenclientDbExists service_ objPath_ path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "exists" [ (toVariant $ path) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.exists"

comCitrixXenclientDbInject :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientDbInject service_ objPath_ path value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "inject" [ (toVariant $ path), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.inject"

comCitrixXenclientDbList :: ((MonadRpc e m)) => String -> String -> String -> m ([String])
comCitrixXenclientDbList service_ objPath_ path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "list" [ (toVariant $ path) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.list"

comCitrixXenclientDbRead :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientDbRead service_ objPath_ path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "read" [ (toVariant $ path) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.read"

comCitrixXenclientDbReadBinary :: ((MonadRpc e m)) => String -> String -> String -> m (B.ByteString)
comCitrixXenclientDbReadBinary service_ objPath_ path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "read_binary" [ (toVariant $ path) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.read_binary"

comCitrixXenclientDbRm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientDbRm service_ objPath_ path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "rm" [ (toVariant $ path) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.rm"

comCitrixXenclientDbWrite :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientDbWrite service_ objPath_ path value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.db" "write" [ (toVariant $ path), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.db.write"
