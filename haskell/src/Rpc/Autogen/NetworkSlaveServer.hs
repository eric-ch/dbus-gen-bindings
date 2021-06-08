{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.NetworkSlaveServer (
  NetworkSlaveServer (..)
  -- Use this to get a list of interfaces for export purposes, from a server object definition. 
  , interfaces
) where

import Data.String
import Data.Word
import Data.Int
import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.ByteString as B
import Rpc.Core
import Tools.FreezeIOM

-- NetworkSlaveServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data NetworkSlaveServer m = NetworkSlaveServer {
  comCitrixXenclientNetworkslaveBackendVifNotify :: String -> Word32 -> Word32 -> m ()
  , comCitrixXenclientNetworkslaveCreateInternalNetworks :: Word32 -> m ()
  , comCitrixXenclientNetworkslaveGetIcavmNetwork :: m (String)
  , comCitrixXenclientNetworkslaveIsInitialized :: m (Bool)
  , comCitrixXenclientNetworkslaveListNetworks :: m ([String])
  , comCitrixXenclientNetworkslaveListVifs :: m ([String])
  , comCitrixXenclientNetworkslaveMoveVifToNetwork :: String -> String -> m ()
  , comCitrixXenclientNetworkslaveNetworkIfaceNotify :: String -> String -> m ()
  , comCitrixXenclientNetworkslaveNmState :: m (Word32)
  , comCitrixXenclientNetworkslaveNwConnectivity :: m (Bool)
  , comCitrixXenclientNetworkslaveRefreshVifs :: m ()
  , comCitrixXenclientNetworkslaveShutdown :: m ()
  , comCitrixXenclientNetworkslaveStartNm :: m ()
  , comCitrixXenclientNetworkslaveVifAdded :: String -> m (Bool)
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.networkslave

stubComCitrixXenclientNetworkslaveBackendVifNotify :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveBackendVifNotify server_ args_ = do
  case args_ of
    [ vif, domid, devid ] -> do
      () <- comCitrixXenclientNetworkslaveBackendVifNotify server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vif)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ devid)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveCreateInternalNetworks :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveCreateInternalNetworks server_ args_ = do
  case args_ of
    [ network_number ] -> do
      () <- comCitrixXenclientNetworkslaveCreateInternalNetworks server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ network_number)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveGetIcavmNetwork :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveGetIcavmNetwork server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkslaveGetIcavmNetwork server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveIsInitialized :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveIsInitialized server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkslaveIsInitialized server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveListNetworks :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveListNetworks server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkslaveListNetworks server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveListVifs :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveListVifs server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkslaveListVifs server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveMoveVifToNetwork :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveMoveVifToNetwork server_ args_ = do
  case args_ of
    [ vif, network ] -> do
      () <- comCitrixXenclientNetworkslaveMoveVifToNetwork server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vif)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ network)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveNetworkIfaceNotify :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveNetworkIfaceNotify server_ args_ = do
  case args_ of
    [ udev_action, interface ] -> do
      () <- comCitrixXenclientNetworkslaveNetworkIfaceNotify server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ udev_action)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveNmState :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveNmState server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkslaveNmState server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveNwConnectivity :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveNwConnectivity server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkslaveNwConnectivity server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveRefreshVifs :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveRefreshVifs server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientNetworkslaveRefreshVifs server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveShutdown :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveShutdown server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientNetworkslaveShutdown server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveStartNm :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveStartNm server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientNetworkslaveStartNm server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkslaveVifAdded :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkslaveVifAdded server_ args_ = do
  case args_ of
    [ vif ] -> do
      (out_0) <- comCitrixXenclientNetworkslaveVifAdded server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vif)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.networkslave.notify

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => NetworkSlaveServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => NetworkSlaveServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.networkslave" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.networkslave.notify" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkSlaveServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.networkslave" [
        rpcMethod "backend_vif_notify" "vif:s,domid:u,devid:u" "" (stubComCitrixXenclientNetworkslaveBackendVifNotify server_)
      , rpcMethod "create_internal_networks" "network_number:u" "" (stubComCitrixXenclientNetworkslaveCreateInternalNetworks server_)
      , rpcMethod "get_icavm_network" "" "icavm_network:s" (stubComCitrixXenclientNetworkslaveGetIcavmNetwork server_)
      , rpcMethod "is_initialized" "" "is_initialized:b" (stubComCitrixXenclientNetworkslaveIsInitialized server_)
      , rpcMethod "list_networks" "" "networks:as" (stubComCitrixXenclientNetworkslaveListNetworks server_)
      , rpcMethod "list_vifs" "" "vifs:as" (stubComCitrixXenclientNetworkslaveListVifs server_)
      , rpcMethod "move_vif_to_network" "vif:s,network:s" "" (stubComCitrixXenclientNetworkslaveMoveVifToNetwork server_)
      , rpcMethod "network_iface_notify" "udev_action:s,interface:s" "" (stubComCitrixXenclientNetworkslaveNetworkIfaceNotify server_)
      , rpcMethod "nm_state" "" "nm_state:u" (stubComCitrixXenclientNetworkslaveNmState server_)
      , rpcMethod "nw_connectivity" "" "is_initialized:b" (stubComCitrixXenclientNetworkslaveNwConnectivity server_)
      , rpcMethod "refresh_vifs" "" "" (stubComCitrixXenclientNetworkslaveRefreshVifs server_)
      , rpcMethod "shutdown" "" "" (stubComCitrixXenclientNetworkslaveShutdown server_)
      , rpcMethod "start_nm" "" "" (stubComCitrixXenclientNetworkslaveStartNm server_)
      , rpcMethod "vif_added" "vif:s" "added:b" (stubComCitrixXenclientNetworkslaveVifAdded server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.networkslave.notify" [
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
