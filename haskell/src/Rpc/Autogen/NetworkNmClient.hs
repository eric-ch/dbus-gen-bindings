module Rpc.Autogen.NetworkNmClient (
  comCitrixXenclientNetworkNmCloseNetworkMenu
  , comCitrixXenclientNetworkNmPopupKeyboard
  , comCitrixXenclientNetworkNmPopupNetworkMenu
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

-- Interface com.citrix.xenclient.network.nm

comCitrixXenclientNetworkNmCloseNetworkMenu :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientNetworkNmCloseNetworkMenu service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.network.nm" "close_network_menu" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.network.nm.close_network_menu"

comCitrixXenclientNetworkNmPopupKeyboard :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientNetworkNmPopupKeyboard service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.network.nm" "popup_keyboard" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.network.nm.popup_keyboard"

comCitrixXenclientNetworkNmPopupNetworkMenu :: ((MonadRpc e m)) => String -> String -> Word32 -> Word32 -> m ()
comCitrixXenclientNetworkNmPopupNetworkMenu service_ objPath_ x_off y_off = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.network.nm" "popup_network_menu" [ (toVariant $ x_off), (toVariant $ y_off) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.network.nm.popup_network_menu"
