module Rpc.Autogen.NmDeviceEthernetClient (
  orgFreedesktopNetworkManagerDeviceWiredGetHwAddress
  , orgFreedesktopNetworkManagerDeviceWiredGetPermHwAddress
  , orgFreedesktopNetworkManagerDeviceWiredGetSpeed
  , orgFreedesktopNetworkManagerDeviceWiredGetS390Subchannels
  , orgFreedesktopNetworkManagerDeviceWiredGetCarrier
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

-- Interface org.freedesktop.NetworkManager.Device.Wired

orgFreedesktopNetworkManagerDeviceWiredGetHwAddress :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceWiredGetHwAddress service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wired", toVariant "HwAddress" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWiredGetPermHwAddress :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceWiredGetPermHwAddress service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wired", toVariant "PermHwAddress" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWiredGetSpeed :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceWiredGetSpeed service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wired", toVariant "Speed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWiredGetS390Subchannels :: ((MonadRpc e m)) => String -> String -> m ([String])
orgFreedesktopNetworkManagerDeviceWiredGetS390Subchannels service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wired", toVariant "S390Subchannels" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceWiredGetCarrier :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerDeviceWiredGetCarrier service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device.Wired", toVariant "Carrier" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")
