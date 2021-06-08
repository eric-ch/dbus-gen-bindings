{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.NetworkDaemonServer (
  NetworkDaemonServer (..)
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

-- NetworkDaemonServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data NetworkDaemonServer m = NetworkDaemonServer {
  comCitrixXenclientNetworkdaemonAddVif :: Word32 -> Word32 -> String -> m ()
  , comCitrixXenclientNetworkdaemonCreateNetwork :: String -> Int32 -> String -> m (String)
  , comCitrixXenclientNetworkdaemonGetNetworkBackend :: String -> m (String)
  , comCitrixXenclientNetworkdaemonIsInitialized :: m (Bool)
  , comCitrixXenclientNetworkdaemonIsNetworkingActive :: m (Bool)
  , comCitrixXenclientNetworkdaemonList :: m ([(Map.Map String String)])
  , comCitrixXenclientNetworkdaemonListBackends :: m ([String])
  , comCitrixXenclientNetworkdaemonMoveToNetwork :: String -> String -> m ()
  , comCitrixXenclientNetworkdaemonNdvmStatus :: String -> Int32 -> Word32 -> m ()
  , comCitrixXenclientNetworkdaemonShutdown :: m ()
  , comCitrixXenclientNetworkdaemonVifConnected :: String -> Int32 -> m (Bool)
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.networkdaemon

stubComCitrixXenclientNetworkdaemonAddVif :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonAddVif server_ args_ = do
  case args_ of
    [ domid, backend_domid, mac ] -> do
      () <- comCitrixXenclientNetworkdaemonAddVif server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ backend_domid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ mac)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonCreateNetwork :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonCreateNetwork server_ args_ = do
  case args_ of
    [ network_type, id, config ] -> do
      (out_0) <- comCitrixXenclientNetworkdaemonCreateNetwork server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ network_type)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ id)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ config)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonGetNetworkBackend :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonGetNetworkBackend server_ args_ = do
  case args_ of
    [ network ] -> do
      (out_0) <- comCitrixXenclientNetworkdaemonGetNetworkBackend server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ network)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonIsInitialized :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonIsInitialized server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkdaemonIsInitialized server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonIsNetworkingActive :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonIsNetworkingActive server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkdaemonIsNetworkingActive server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonList :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonList server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkdaemonList server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonListBackends :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonListBackends server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkdaemonListBackends server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonMoveToNetwork :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonMoveToNetwork server_ args_ = do
  case args_ of
    [ vif, network ] -> do
      () <- comCitrixXenclientNetworkdaemonMoveToNetwork server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vif)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ network)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonNdvmStatus :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonNdvmStatus server_ args_ = do
  case args_ of
    [ uuid, domid, status ] -> do
      () <- comCitrixXenclientNetworkdaemonNdvmStatus server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ uuid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ status)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonShutdown :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonShutdown server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientNetworkdaemonShutdown server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdaemonVifConnected :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdaemonVifConnected server_ args_ = do
  case args_ of
    [ vif, domid ] -> do
      (out_0) <- comCitrixXenclientNetworkdaemonVifConnected server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vif)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domid)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.networkdaemon.notify

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => NetworkDaemonServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => NetworkDaemonServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.networkdaemon" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.networkdaemon.notify" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDaemonServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.networkdaemon" [
        rpcMethod "add_vif" "domid:u,backend_domid:u,mac:s" "" (stubComCitrixXenclientNetworkdaemonAddVif server_)
      , rpcMethod "create_network" "network_type:s,id:i,config:s" "network:s" (stubComCitrixXenclientNetworkdaemonCreateNetwork server_)
      , rpcMethod "get_network_backend" "network:s" "uuid:s" (stubComCitrixXenclientNetworkdaemonGetNetworkBackend server_)
      , rpcMethod "is_initialized" "" "is_initialized:b" (stubComCitrixXenclientNetworkdaemonIsInitialized server_)
      , rpcMethod "is_networking_active" "" "is_nw_active:b" (stubComCitrixXenclientNetworkdaemonIsNetworkingActive server_)
      , rpcMethod "list" "" "networks:aa{ss}" (stubComCitrixXenclientNetworkdaemonList server_)
      , rpcMethod "list_backends" "" "backends:as" (stubComCitrixXenclientNetworkdaemonListBackends server_)
      , rpcMethod "move_to_network" "vif:s,network:s" "" (stubComCitrixXenclientNetworkdaemonMoveToNetwork server_)
      , rpcMethod "ndvm_status" "uuid:s,domid:i,status:u" "" (stubComCitrixXenclientNetworkdaemonNdvmStatus server_)
      , rpcMethod "shutdown" "" "" (stubComCitrixXenclientNetworkdaemonShutdown server_)
      , rpcMethod "vif_connected" "vif:s,domid:i" "connected:b" (stubComCitrixXenclientNetworkdaemonVifConnected server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.networkdaemon.notify" [
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
