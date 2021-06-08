module Rpc.Autogen.NmDeviceModemClient (
  orgFreedesktopNetworkManagerDeviceModemGetModemCapabilities
  , orgFreedesktopNetworkManagerDeviceModemGetCurrentCapabilities
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

-- Interface org.freedesktop.NetworkManager.Device.Modem

orgFreedesktopNetworkManagerDeviceModemGetModemCapabilities :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceModemGetModemCapabilities service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Modem", toVariant "ModemCapabilities" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceModemGetCurrentCapabilities :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceModemGetCurrentCapabilities service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Modem", toVariant "CurrentCapabilities" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")
