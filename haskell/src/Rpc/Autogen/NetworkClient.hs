module Rpc.Autogen.NetworkClient (
  eACTIVE_AP_SSID
  , eACTIVE_AP_MODE
  , eACTIVE_AP_FREQUENCY
  , eACTIVE_AP_STRENGTH
  , eACTIVE_AP_HWADDRESS
  , eACTIVE_AP_MAXBITRATE
  , eACTIVE_AP_WPAFLAGS
  , eACTIVE_AP_RSNFLAGS
  , eCONNECTION_TYPE_UNKNOWN
  , eCONNECTION_TYPE_SHARED
  , eCONNECTION_TYPE_BRIDGED
  , eNETWORK_TYPE_UNKNOWN
  , eNETWORK_TYPE_WIRED
  , eNETWORK_TYPE_WIFI
  , eNETWORK_TYPE_MODEM
  , eNETWORK_TYPE_INTERNAL
  , eNETWORK_TYPE_ANY
  , eNETWORK_TYPE_VPN
  , comCitrixXenclientNetworkConfigure
  , comCitrixXenclientNetworkIsConfigured
  , comCitrixXenclientNetworkJoin
  , comCitrixXenclientNetworkLeave
  , comCitrixXenclientNetworkConfigGetActive
  , comCitrixXenclientNetworkConfigGetBackendUuid
  , comCitrixXenclientNetworkConfigGetBridge
  , comCitrixXenclientNetworkConfigGetConnection
  , comCitrixXenclientNetworkConfigGetDriver
  , comCitrixXenclientNetworkConfigGetExtraInfo
  , comCitrixXenclientNetworkConfigGetInterface
  , comCitrixXenclientNetworkConfigGetLabel
  , comCitrixXenclientNetworkConfigSetLabel
  , comCitrixXenclientNetworkConfigGetMacAddress
  , comCitrixXenclientNetworkConfigSetMacAddress
  , comCitrixXenclientNetworkConfigGetName
  , comCitrixXenclientNetworkConfigGetNatPrefix
  , comCitrixXenclientNetworkConfigSetNatPrefix
  , comCitrixXenclientNetworkConfigGetNmManaged
  , comCitrixXenclientNetworkConfigGetNmState
  , comCitrixXenclientNetworkConfigGetType
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

eACTIVE_AP_SSID :: String
eACTIVE_AP_SSID = "ssid"

eACTIVE_AP_MODE :: String
eACTIVE_AP_MODE = "mode"

eACTIVE_AP_FREQUENCY :: String
eACTIVE_AP_FREQUENCY = "frequency"

eACTIVE_AP_STRENGTH :: String
eACTIVE_AP_STRENGTH = "strength"

eACTIVE_AP_HWADDRESS :: String
eACTIVE_AP_HWADDRESS = "hwaddress"

eACTIVE_AP_MAXBITRATE :: String
eACTIVE_AP_MAXBITRATE = "maxbitrate"

eACTIVE_AP_WPAFLAGS :: String
eACTIVE_AP_WPAFLAGS = "wpaflags"

eACTIVE_AP_RSNFLAGS :: String
eACTIVE_AP_RSNFLAGS = "rsnflags"

eCONNECTION_TYPE_UNKNOWN :: String
eCONNECTION_TYPE_UNKNOWN = "unknown"

eCONNECTION_TYPE_SHARED :: String
eCONNECTION_TYPE_SHARED = "shared"

eCONNECTION_TYPE_BRIDGED :: String
eCONNECTION_TYPE_BRIDGED = "bridged"

eNETWORK_TYPE_UNKNOWN :: String
eNETWORK_TYPE_UNKNOWN = "unknown"

eNETWORK_TYPE_WIRED :: String
eNETWORK_TYPE_WIRED = "wired"

eNETWORK_TYPE_WIFI :: String
eNETWORK_TYPE_WIFI = "wifi"

eNETWORK_TYPE_MODEM :: String
eNETWORK_TYPE_MODEM = "modem"

eNETWORK_TYPE_INTERNAL :: String
eNETWORK_TYPE_INTERNAL = "internal"

eNETWORK_TYPE_ANY :: String
eNETWORK_TYPE_ANY = "any"

eNETWORK_TYPE_VPN :: String
eNETWORK_TYPE_VPN = "vpn"

-- Interface com.citrix.xenclient.network

comCitrixXenclientNetworkConfigure :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientNetworkConfigure service_ objPath_ subnet = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.network" "configure" [ (toVariant $ subnet) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.network.configure"

comCitrixXenclientNetworkIsConfigured :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientNetworkIsConfigured service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.network" "is_configured" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.network.is_configured"

comCitrixXenclientNetworkJoin :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientNetworkJoin service_ objPath_ vif = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.network" "join" [ (toVariant $ vif) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.network.join"

comCitrixXenclientNetworkLeave :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientNetworkLeave service_ objPath_ vif = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.network" "leave" [ (toVariant $ vif) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.network.leave"

-- Interface com.citrix.xenclient.network.config

comCitrixXenclientNetworkConfigGetActive :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientNetworkConfigGetActive service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "active" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetBackendUuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetBackendUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "backend-uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetBridge :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetBridge service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "bridge" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetConnection :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetConnection service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "connection" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetDriver :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetDriver service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "driver" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetExtraInfo :: ((MonadRpc e m)) => String -> String -> m ((Map.Map String String))
comCitrixXenclientNetworkConfigGetExtraInfo service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "extra-info" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetInterface :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetInterface service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "interface" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetLabel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetLabel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "label" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigSetLabel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientNetworkConfigSetLabel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.network.config", toVariant "label", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientNetworkConfigGetMacAddress :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetMacAddress service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "mac-address" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigSetMacAddress :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientNetworkConfigSetMacAddress service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.network.config", toVariant "mac-address", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientNetworkConfigGetName :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetName service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "name" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetNatPrefix :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetNatPrefix service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "nat-prefix" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigSetNatPrefix :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientNetworkConfigSetNatPrefix service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.network.config", toVariant "nat-prefix", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientNetworkConfigGetNmManaged :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientNetworkConfigGetNmManaged service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "nm-managed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetNmState :: ((MonadRpc e m)) => String -> String -> m (Word32)
comCitrixXenclientNetworkConfigGetNmState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "nm-state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientNetworkConfigGetType :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkConfigGetType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.network.config", toVariant "type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

-- Interface com.citrix.xenclient.network.notify
