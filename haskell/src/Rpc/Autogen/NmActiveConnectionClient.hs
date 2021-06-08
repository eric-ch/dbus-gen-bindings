module Rpc.Autogen.NmActiveConnectionClient (
  eNM_ACTIVE_CONNECTION_STATE_UNKNOWN
  , eNM_ACTIVE_CONNECTION_STATE_ACTIVATING
  , eNM_ACTIVE_CONNECTION_STATE_ACTIVATED
  , eNM_ACTIVE_CONNECTION_STATE_DEACTIVATING
  , eNM_ACTIVE_CONNECTION_STATE_DEACTIVATED
  , orgFreedesktopNetworkManagerConnectionActiveGetConnection
  , orgFreedesktopNetworkManagerConnectionActiveGetSpecificObject
  , orgFreedesktopNetworkManagerConnectionActiveGetId
  , orgFreedesktopNetworkManagerConnectionActiveGetUuid
  , orgFreedesktopNetworkManagerConnectionActiveGetType
  , orgFreedesktopNetworkManagerConnectionActiveGetDevices
  , orgFreedesktopNetworkManagerConnectionActiveGetState
  , orgFreedesktopNetworkManagerConnectionActiveGetStateFlags
  , orgFreedesktopNetworkManagerConnectionActiveGetDefault
  , orgFreedesktopNetworkManagerConnectionActiveGetIp4Config
  , orgFreedesktopNetworkManagerConnectionActiveGetDhcp4Config
  , orgFreedesktopNetworkManagerConnectionActiveGetDefault6
  , orgFreedesktopNetworkManagerConnectionActiveGetIp6Config
  , orgFreedesktopNetworkManagerConnectionActiveGetDhcp6Config
  , orgFreedesktopNetworkManagerConnectionActiveGetVpn
  , orgFreedesktopNetworkManagerConnectionActiveGetMaster
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

eNM_ACTIVE_CONNECTION_STATE_UNKNOWN :: Word32
eNM_ACTIVE_CONNECTION_STATE_UNKNOWN = 0

eNM_ACTIVE_CONNECTION_STATE_ACTIVATING :: Word32
eNM_ACTIVE_CONNECTION_STATE_ACTIVATING = 1

eNM_ACTIVE_CONNECTION_STATE_ACTIVATED :: Word32
eNM_ACTIVE_CONNECTION_STATE_ACTIVATED = 2

eNM_ACTIVE_CONNECTION_STATE_DEACTIVATING :: Word32
eNM_ACTIVE_CONNECTION_STATE_DEACTIVATING = 3

eNM_ACTIVE_CONNECTION_STATE_DEACTIVATED :: Word32
eNM_ACTIVE_CONNECTION_STATE_DEACTIVATED = 4

-- Interface org.freedesktop.NetworkManager.Connection.Active

orgFreedesktopNetworkManagerConnectionActiveGetConnection :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerConnectionActiveGetConnection service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Connection" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetSpecificObject :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerConnectionActiveGetSpecificObject service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "SpecificObject" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetId :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerConnectionActiveGetId service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Id" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetUuid :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerConnectionActiveGetUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetType :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerConnectionActiveGetType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetDevices :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerConnectionActiveGetDevices service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Devices" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetState :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerConnectionActiveGetState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "State" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetStateFlags :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerConnectionActiveGetStateFlags service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "StateFlags" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetDefault :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerConnectionActiveGetDefault service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Default" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetIp4Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerConnectionActiveGetIp4Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Ip4Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetDhcp4Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerConnectionActiveGetDhcp4Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Dhcp4Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetDefault6 :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerConnectionActiveGetDefault6 service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Default6" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetIp6Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerConnectionActiveGetIp6Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Ip6Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetDhcp6Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerConnectionActiveGetDhcp6Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Dhcp6Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetVpn :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerConnectionActiveGetVpn service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Vpn" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerConnectionActiveGetMaster :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerConnectionActiveGetMaster service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Connection.Active", toVariant "Master" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")
