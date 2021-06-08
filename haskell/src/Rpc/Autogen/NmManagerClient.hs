module Rpc.Autogen.NmManagerClient (
  orgFreedesktopNetworkManagerReload
  , orgFreedesktopNetworkManagerGetDevices
  , orgFreedesktopNetworkManagerGetAllDevices
  , orgFreedesktopNetworkManagerGetDeviceByIpIface
  , orgFreedesktopNetworkManagerActivateConnection
  , orgFreedesktopNetworkManagerAddAndActivateConnection
  , orgFreedesktopNetworkManagerAddAndActivateConnection2
  , orgFreedesktopNetworkManagerDeactivateConnection
  , orgFreedesktopNetworkManagerSleep
  , orgFreedesktopNetworkManagerEnable
  , orgFreedesktopNetworkManagerGetPermissions
  , orgFreedesktopNetworkManagerSetLogging
  , orgFreedesktopNetworkManagerGetLogging
  , orgFreedesktopNetworkManagerCheckConnectivity
  , orgFreedesktopNetworkManagerState
  , orgFreedesktopNetworkManagerCheckpointCreate
  , orgFreedesktopNetworkManagerCheckpointDestroy
  , orgFreedesktopNetworkManagerCheckpointRollback
  , orgFreedesktopNetworkManagerCheckpointAdjustRollbackTimeout
  , orgFreedesktopNetworkManagerGetCheckpoints
  , orgFreedesktopNetworkManagerGetNetworkingEnabled
  , orgFreedesktopNetworkManagerGetWirelessEnabled
  , orgFreedesktopNetworkManagerSetWirelessEnabled
  , orgFreedesktopNetworkManagerGetWirelessHardwareEnabled
  , orgFreedesktopNetworkManagerGetWwanEnabled
  , orgFreedesktopNetworkManagerSetWwanEnabled
  , orgFreedesktopNetworkManagerGetWwanHardwareEnabled
  , orgFreedesktopNetworkManagerGetWimaxEnabled
  , orgFreedesktopNetworkManagerSetWimaxEnabled
  , orgFreedesktopNetworkManagerGetWimaxHardwareEnabled
  , orgFreedesktopNetworkManagerGetActiveConnections
  , orgFreedesktopNetworkManagerGetPrimaryConnection
  , orgFreedesktopNetworkManagerGetPrimaryConnectionType
  , orgFreedesktopNetworkManagerGetMetered
  , orgFreedesktopNetworkManagerGetActivatingConnection
  , orgFreedesktopNetworkManagerGetStartup
  , orgFreedesktopNetworkManagerGetVersion
  , orgFreedesktopNetworkManagerGetCapabilities
  , orgFreedesktopNetworkManagerGetState
  , orgFreedesktopNetworkManagerGetConnectivity
  , orgFreedesktopNetworkManagerGetConnectivityCheckAvailable
  , orgFreedesktopNetworkManagerGetConnectivityCheckEnabled
  , orgFreedesktopNetworkManagerSetConnectivityCheckEnabled
  , orgFreedesktopNetworkManagerGetGlobalDnsConfiguration
  , orgFreedesktopNetworkManagerSetGlobalDnsConfiguration
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

-- Interface org.freedesktop.NetworkManager

orgFreedesktopNetworkManagerReload :: ((MonadRpc e m)) => String -> String -> Word32 -> m ()
orgFreedesktopNetworkManagerReload service_ objPath_ flags = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "Reload" [ (toVariant $ flags) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Reload"

orgFreedesktopNetworkManagerGetDevices :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerGetDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "GetDevices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.GetDevices"

orgFreedesktopNetworkManagerGetAllDevices :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerGetAllDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "GetAllDevices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.GetAllDevices"

orgFreedesktopNetworkManagerGetDeviceByIpIface :: ((MonadRpc e m)) => String -> String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerGetDeviceByIpIface service_ objPath_ iface = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "GetDeviceByIpIface" [ (toVariant $ iface) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.GetDeviceByIpIface"

orgFreedesktopNetworkManagerActivateConnection :: ((MonadRpc e m)) => String -> String -> ObjectPath -> ObjectPath -> ObjectPath -> m (ObjectPath)
orgFreedesktopNetworkManagerActivateConnection service_ objPath_ connection device specific_object = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "ActivateConnection" [ (toVariant $ connection), (toVariant $ device), (toVariant $ specific_object) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.ActivateConnection"

orgFreedesktopNetworkManagerAddAndActivateConnection :: ((MonadRpc e m)) => String -> String -> (Map.Map String (Map.Map String Variant)) -> ObjectPath -> ObjectPath -> m (ObjectPath, ObjectPath)
orgFreedesktopNetworkManagerAddAndActivateConnection service_ objPath_ connection device specific_object = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "AddAndActivateConnection" [ (toVariant $ connection), (toVariant $ device), (toVariant $ specific_object) ])
  case variants of
    [ out_0, out_1 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.AddAndActivateConnection"

orgFreedesktopNetworkManagerAddAndActivateConnection2 :: ((MonadRpc e m)) => String -> String -> (Map.Map String (Map.Map String Variant)) -> ObjectPath -> ObjectPath -> (Map.Map String Variant) -> m (ObjectPath, ObjectPath, (Map.Map String Variant))
orgFreedesktopNetworkManagerAddAndActivateConnection2 service_ objPath_ connection device specific_object options = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "AddAndActivateConnection2" [ (toVariant $ connection), (toVariant $ device), (toVariant $ specific_object), (toVariant $ options) ])
  case variants of
    [ out_0, out_1, out_2 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_2))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.AddAndActivateConnection2"

orgFreedesktopNetworkManagerDeactivateConnection :: ((MonadRpc e m)) => String -> String -> ObjectPath -> m ()
orgFreedesktopNetworkManagerDeactivateConnection service_ objPath_ active_connection = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "DeactivateConnection" [ (toVariant $ active_connection) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.DeactivateConnection"

orgFreedesktopNetworkManagerSleep :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerSleep service_ objPath_ sleep = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "Sleep" [ (toVariant $ sleep) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Sleep"

orgFreedesktopNetworkManagerEnable :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerEnable service_ objPath_ enable = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "Enable" [ (toVariant $ enable) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Enable"

orgFreedesktopNetworkManagerGetPermissions :: ((MonadRpc e m)) => String -> String -> m ((Map.Map String String))
orgFreedesktopNetworkManagerGetPermissions service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "GetPermissions" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.GetPermissions"

orgFreedesktopNetworkManagerSetLogging :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
orgFreedesktopNetworkManagerSetLogging service_ objPath_ level domains = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "SetLogging" [ (toVariant $ level), (toVariant $ domains) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.SetLogging"

orgFreedesktopNetworkManagerGetLogging :: ((MonadRpc e m)) => String -> String -> m (String, String)
orgFreedesktopNetworkManagerGetLogging service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "GetLogging" [ ])
  case variants of
    [ out_0, out_1 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.GetLogging"

orgFreedesktopNetworkManagerCheckConnectivity :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerCheckConnectivity service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "CheckConnectivity" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.CheckConnectivity"

orgFreedesktopNetworkManagerState :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerState service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "state" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.state"

orgFreedesktopNetworkManagerCheckpointCreate :: ((MonadRpc e m)) => String -> String -> [ObjectPath] -> Word32 -> Word32 -> m (ObjectPath)
orgFreedesktopNetworkManagerCheckpointCreate service_ objPath_ devices rollback_timeout flags = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "CheckpointCreate" [ (toVariant $ devices), (toVariant $ rollback_timeout), (toVariant $ flags) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.CheckpointCreate"

orgFreedesktopNetworkManagerCheckpointDestroy :: ((MonadRpc e m)) => String -> String -> ObjectPath -> m ()
orgFreedesktopNetworkManagerCheckpointDestroy service_ objPath_ checkpoint = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "CheckpointDestroy" [ (toVariant $ checkpoint) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.CheckpointDestroy"

orgFreedesktopNetworkManagerCheckpointRollback :: ((MonadRpc e m)) => String -> String -> ObjectPath -> m ((Map.Map String Word32))
orgFreedesktopNetworkManagerCheckpointRollback service_ objPath_ checkpoint = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "CheckpointRollback" [ (toVariant $ checkpoint) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.CheckpointRollback"

orgFreedesktopNetworkManagerCheckpointAdjustRollbackTimeout :: ((MonadRpc e m)) => String -> String -> ObjectPath -> Word32 -> m ()
orgFreedesktopNetworkManagerCheckpointAdjustRollbackTimeout service_ objPath_ checkpoint add_timeout = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager" "CheckpointAdjustRollbackTimeout" [ (toVariant $ checkpoint), (toVariant $ add_timeout) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.CheckpointAdjustRollbackTimeout"

orgFreedesktopNetworkManagerGetCheckpoints :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerGetCheckpoints service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "Checkpoints" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetNetworkingEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetNetworkingEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "NetworkingEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetWirelessEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetWirelessEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "WirelessEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerSetWirelessEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerSetWirelessEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "org.freedesktop.NetworkManager", toVariant "WirelessEnabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

orgFreedesktopNetworkManagerGetWirelessHardwareEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetWirelessHardwareEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "WirelessHardwareEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetWwanEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetWwanEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "WwanEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerSetWwanEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerSetWwanEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "org.freedesktop.NetworkManager", toVariant "WwanEnabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

orgFreedesktopNetworkManagerGetWwanHardwareEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetWwanHardwareEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "WwanHardwareEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetWimaxEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetWimaxEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "WimaxEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerSetWimaxEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerSetWimaxEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "org.freedesktop.NetworkManager", toVariant "WimaxEnabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

orgFreedesktopNetworkManagerGetWimaxHardwareEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetWimaxHardwareEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "WimaxHardwareEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetActiveConnections :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerGetActiveConnections service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "ActiveConnections" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetPrimaryConnection :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerGetPrimaryConnection service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "PrimaryConnection" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetPrimaryConnectionType :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerGetPrimaryConnectionType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "PrimaryConnectionType" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetMetered :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerGetMetered service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "Metered" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetActivatingConnection :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerGetActivatingConnection service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "ActivatingConnection" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetStartup :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetStartup service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "Startup" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetVersion :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerGetVersion service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "Version" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetCapabilities :: ((MonadRpc e m)) => String -> String -> m ([Word32])
orgFreedesktopNetworkManagerGetCapabilities service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "Capabilities" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetState :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerGetState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "State" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetConnectivity :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerGetConnectivity service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "Connectivity" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetConnectivityCheckAvailable :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetConnectivityCheckAvailable service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "ConnectivityCheckAvailable" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerGetConnectivityCheckEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerGetConnectivityCheckEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "ConnectivityCheckEnabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerSetConnectivityCheckEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerSetConnectivityCheckEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "org.freedesktop.NetworkManager", toVariant "ConnectivityCheckEnabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

orgFreedesktopNetworkManagerGetGlobalDnsConfiguration :: ((MonadRpc e m)) => String -> String -> m ((Map.Map String Variant))
orgFreedesktopNetworkManagerGetGlobalDnsConfiguration service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager", toVariant "GlobalDnsConfiguration" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerSetGlobalDnsConfiguration :: ((MonadRpc e m)) => String -> String -> (Map.Map String Variant) -> m ()
orgFreedesktopNetworkManagerSetGlobalDnsConfiguration service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "org.freedesktop.NetworkManager", toVariant "GlobalDnsConfiguration", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"
