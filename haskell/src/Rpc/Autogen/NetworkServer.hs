{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.NetworkServer (
  NetworkServer (..)
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

-- NetworkServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data NetworkServer m = NetworkServer {
  comCitrixXenclientNetworkConfigure :: String -> m ()
  , comCitrixXenclientNetworkIsConfigured :: m (Bool)
  , comCitrixXenclientNetworkJoin :: String -> m ()
  , comCitrixXenclientNetworkLeave :: String -> m ()
  , comCitrixXenclientNetworkConfigGetActive :: m (Bool)
  , comCitrixXenclientNetworkConfigGetBackendUuid :: m (String)
  , comCitrixXenclientNetworkConfigGetBridge :: m (String)
  , comCitrixXenclientNetworkConfigGetConnection :: m (String)
  , comCitrixXenclientNetworkConfigGetDriver :: m (String)
  , comCitrixXenclientNetworkConfigGetExtraInfo :: m ((Map.Map String String))
  , comCitrixXenclientNetworkConfigGetInterface :: m (String)
  , comCitrixXenclientNetworkConfigGetLabel :: m (String)
  , comCitrixXenclientNetworkConfigSetLabel :: String -> m ()
  , comCitrixXenclientNetworkConfigGetMacAddress :: m (String)
  , comCitrixXenclientNetworkConfigSetMacAddress :: String -> m ()
  , comCitrixXenclientNetworkConfigGetName :: m (String)
  , comCitrixXenclientNetworkConfigGetNatPrefix :: m (String)
  , comCitrixXenclientNetworkConfigSetNatPrefix :: String -> m ()
  , comCitrixXenclientNetworkConfigGetNmManaged :: m (Bool)
  , comCitrixXenclientNetworkConfigGetNmState :: m (Word32)
  , comCitrixXenclientNetworkConfigGetType :: m (String)
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.network

stubComCitrixXenclientNetworkConfigure :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkConfigure server_ args_ = do
  case args_ of
    [ subnet ] -> do
      () <- comCitrixXenclientNetworkConfigure server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ subnet)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkIsConfigured :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkIsConfigured server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkIsConfigured server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkJoin :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkJoin server_ args_ = do
  case args_ of
    [ vif ] -> do
      () <- comCitrixXenclientNetworkJoin server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vif)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkLeave :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkLeave server_ args_ = do
  case args_ of
    [ vif ] -> do
      () <- comCitrixXenclientNetworkLeave server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vif)
      return [ ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.network.config

-- Interface com.citrix.xenclient.network.notify

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => NetworkServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.network.config", "active") -> comCitrixXenclientNetworkConfigGetActive obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "backend-uuid") -> comCitrixXenclientNetworkConfigGetBackendUuid obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "bridge") -> comCitrixXenclientNetworkConfigGetBridge obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "connection") -> comCitrixXenclientNetworkConfigGetConnection obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "driver") -> comCitrixXenclientNetworkConfigGetDriver obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "extra-info") -> comCitrixXenclientNetworkConfigGetExtraInfo obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "interface") -> comCitrixXenclientNetworkConfigGetInterface obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "label") -> comCitrixXenclientNetworkConfigGetLabel obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "mac-address") -> comCitrixXenclientNetworkConfigGetMacAddress obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "name") -> comCitrixXenclientNetworkConfigGetName obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "nat-prefix") -> comCitrixXenclientNetworkConfigGetNatPrefix obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "nm-managed") -> comCitrixXenclientNetworkConfigGetNmManaged obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "nm-state") -> comCitrixXenclientNetworkConfigGetNmState obj >>= return . toVariant
    ("com.citrix.xenclient.network.config", "type") -> comCitrixXenclientNetworkConfigGetType obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => NetworkServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    ("com.citrix.xenclient.network.config", "label") -> let Just v = fromVariant value in comCitrixXenclientNetworkConfigSetLabel obj v
    ("com.citrix.xenclient.network.config", "mac-address") -> let Just v = fromVariant value in comCitrixXenclientNetworkConfigSetMacAddress obj v
    ("com.citrix.xenclient.network.config", "nat-prefix") -> let Just v = fromVariant value in comCitrixXenclientNetworkConfigSetNatPrefix obj v
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.network" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.network.config" -> rpcRunParallel [
          comCitrixXenclientNetworkConfigGetActive obj >>= \v -> return ("active", toVariant v)
        , comCitrixXenclientNetworkConfigGetBackendUuid obj >>= \v -> return ("backend-uuid", toVariant v)
        , comCitrixXenclientNetworkConfigGetBridge obj >>= \v -> return ("bridge", toVariant v)
        , comCitrixXenclientNetworkConfigGetConnection obj >>= \v -> return ("connection", toVariant v)
        , comCitrixXenclientNetworkConfigGetDriver obj >>= \v -> return ("driver", toVariant v)
        , comCitrixXenclientNetworkConfigGetExtraInfo obj >>= \v -> return ("extra-info", toVariant v)
        , comCitrixXenclientNetworkConfigGetInterface obj >>= \v -> return ("interface", toVariant v)
        , comCitrixXenclientNetworkConfigGetLabel obj >>= \v -> return ("label", toVariant v)
        , comCitrixXenclientNetworkConfigGetMacAddress obj >>= \v -> return ("mac-address", toVariant v)
        , comCitrixXenclientNetworkConfigGetName obj >>= \v -> return ("name", toVariant v)
        , comCitrixXenclientNetworkConfigGetNatPrefix obj >>= \v -> return ("nat-prefix", toVariant v)
        , comCitrixXenclientNetworkConfigGetNmManaged obj >>= \v -> return ("nm-managed", toVariant v)
        , comCitrixXenclientNetworkConfigGetNmState obj >>= \v -> return ("nm-state", toVariant v)
        , comCitrixXenclientNetworkConfigGetType obj >>= \v -> return ("type", toVariant v)
      ] >>= return . Map.fromList
    "com.citrix.xenclient.network.notify" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.network" [
        rpcMethod "configure" "subnet:s" "" (stubComCitrixXenclientNetworkConfigure server_)
      , rpcMethod "is_configured" "" "is_configured:b" (stubComCitrixXenclientNetworkIsConfigured server_)
      , rpcMethod "join" "vif:s" "" (stubComCitrixXenclientNetworkJoin server_)
      , rpcMethod "leave" "vif:s" "" (stubComCitrixXenclientNetworkLeave server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.network.config" [
    ] [
        rpcProperty "active" "b" Read
      , rpcProperty "backend-uuid" "s" Read
      , rpcProperty "bridge" "s" Read
      , rpcProperty "connection" "s" Read
      , rpcProperty "driver" "s" Read
      , rpcProperty "extra-info" "a{ss}" Read
      , rpcProperty "interface" "s" Read
      , rpcProperty "label" "s" ReadWrite
      , rpcProperty "mac-address" "s" ReadWrite
      , rpcProperty "name" "s" Read
      , rpcProperty "nat-prefix" "s" ReadWrite
      , rpcProperty "nm-managed" "b" Read
      , rpcProperty "nm-state" "u" Read
      , rpcProperty "type" "s" Read
    ],
    RpcInterface "com.citrix.xenclient.network.notify" [
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
