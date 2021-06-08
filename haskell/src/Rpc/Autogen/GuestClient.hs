module Rpc.Autogen.GuestClient (
  comCitrixXenclientGuestRequestHibernate
  , comCitrixXenclientGuestRequestReboot
  , comCitrixXenclientGuestRequestShutdown
  , comCitrixXenclientGuestRequestSleep
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

-- Interface com.citrix.xenclient.guest

comCitrixXenclientGuestRequestHibernate :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientGuestRequestHibernate service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.guest" "request_hibernate" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.guest.request_hibernate"

comCitrixXenclientGuestRequestReboot :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientGuestRequestReboot service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.guest" "request_reboot" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.guest.request_reboot"

comCitrixXenclientGuestRequestShutdown :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientGuestRequestShutdown service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.guest" "request_shutdown" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.guest.request_shutdown"

comCitrixXenclientGuestRequestSleep :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientGuestRequestSleep service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.guest" "request_sleep" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.guest.request_sleep"
