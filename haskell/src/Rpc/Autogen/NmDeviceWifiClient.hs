module Rpc.Autogen.NmDeviceWifiClient (
  orgFreedesktopNetworkManagerDeviceWirelessGetAccessPoints
  , orgFreedesktopNetworkManagerDeviceWirelessGetAllAccessPoints
  , orgFreedesktopNetworkManagerDeviceWirelessRequestScan
  , orgFreedesktopNetworkManagerDeviceWirelessGetHwAddress
  , orgFreedesktopNetworkManagerDeviceWirelessGetPermHwAddress
  , orgFreedesktopNetworkManagerDeviceWirelessGetMode
  , orgFreedesktopNetworkManagerDeviceWirelessGetBitrate
  , orgFreedesktopNetworkManagerDeviceWirelessGetActiveAccessPoint
  , orgFreedesktopNetworkManagerDeviceWirelessGetWirelessCapabilities
  , orgFreedesktopNetworkManagerDeviceWirelessGetLastScan
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

-- Interface org.freedesktop.NetworkManager.Device.Wireless

orgFreedesktopNetworkManagerDeviceWirelessGetAccessPoints :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerDeviceWirelessGetAccessPoints service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager.Device.Wireless" "GetAccessPoints" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Device.Wireless.GetAccessPoints"

orgFreedesktopNetworkManagerDeviceWirelessGetAllAccessPoints :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerDeviceWirelessGetAllAccessPoints service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager.Device.Wireless" "GetAllAccessPoints" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Device.Wireless.GetAllAccessPoints"

orgFreedesktopNetworkManagerDeviceWirelessRequestScan :: ((MonadRpc e m)) => String -> String -> (Map.Map String Variant) -> m ()
orgFreedesktopNetworkManagerDeviceWirelessRequestScan service_ objPath_ options = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager.Device.Wireless" "RequestScan" [ (toVariant $ options) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Device.Wireless.RequestScan"

orgFreedesktopNetworkManagerDeviceWirelessGetHwAddress :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceWirelessGetHwAddress service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wireless", toVariant "HwAddress" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWirelessGetPermHwAddress :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceWirelessGetPermHwAddress service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wireless", toVariant "PermHwAddress" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWirelessGetMode :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceWirelessGetMode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wireless", toVariant "Mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWirelessGetBitrate :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceWirelessGetBitrate service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wireless", toVariant "Bitrate" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWirelessGetActiveAccessPoint :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerDeviceWirelessGetActiveAccessPoint service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wireless", toVariant "ActiveAccessPoint" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWirelessGetWirelessCapabilities :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceWirelessGetWirelessCapabilities service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wireless", toVariant "WirelessCapabilities" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWirelessGetLastScan :: ((MonadRpc e m)) => String -> String -> m (Int64)
orgFreedesktopNetworkManagerDeviceWirelessGetLastScan service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wireless", toVariant "LastScan" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")
