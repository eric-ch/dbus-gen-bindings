{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.NetworkDomainServer (
  NetworkDomainServer (..)
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

-- NetworkDomainServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data NetworkDomainServer m = NetworkDomainServer {
  comCitrixXenclientNetworkdomainCloseNetworkMenu :: m ()
  , comCitrixXenclientNetworkdomainListNetworks :: m ([String])
  , comCitrixXenclientNetworkdomainPopupNetworkMenu :: Word32 -> Word32 -> m ()
  , comCitrixXenclientNetworkdomainConfigGetDomid :: m (Word32)
  , comCitrixXenclientNetworkdomainConfigGetIsNetworkingActive :: m (Bool)
  , comCitrixXenclientNetworkdomainConfigGetName :: m (String)
  , comCitrixXenclientNetworkdomainConfigGetNmState :: m (Word32)
  , comCitrixXenclientNetworkdomainConfigGetUuid :: m (String)
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.networkdomain

stubComCitrixXenclientNetworkdomainCloseNetworkMenu :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdomainCloseNetworkMenu server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientNetworkdomainCloseNetworkMenu server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdomainListNetworks :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdomainListNetworks server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientNetworkdomainListNetworks server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkdomainPopupNetworkMenu :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkdomainPopupNetworkMenu server_ args_ = do
  case args_ of
    [ x_off, y_off ] -> do
      () <- comCitrixXenclientNetworkdomainPopupNetworkMenu server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ x_off)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ y_off)
      return [ ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.networkdomain.config

-- Interface com.citrix.xenclient.networkdomain.notify

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => NetworkDomainServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.networkdomain.config", "domid") -> comCitrixXenclientNetworkdomainConfigGetDomid obj >>= return . toVariant
    ("com.citrix.xenclient.networkdomain.config", "is-networking-active") -> comCitrixXenclientNetworkdomainConfigGetIsNetworkingActive obj >>= return . toVariant
    ("com.citrix.xenclient.networkdomain.config", "name") -> comCitrixXenclientNetworkdomainConfigGetName obj >>= return . toVariant
    ("com.citrix.xenclient.networkdomain.config", "nm-state") -> comCitrixXenclientNetworkdomainConfigGetNmState obj >>= return . toVariant
    ("com.citrix.xenclient.networkdomain.config", "uuid") -> comCitrixXenclientNetworkdomainConfigGetUuid obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => NetworkDomainServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.networkdomain" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.networkdomain.config" -> rpcRunParallel [
          comCitrixXenclientNetworkdomainConfigGetDomid obj >>= \v -> return ("domid", toVariant v)
        , comCitrixXenclientNetworkdomainConfigGetIsNetworkingActive obj >>= \v -> return ("is-networking-active", toVariant v)
        , comCitrixXenclientNetworkdomainConfigGetName obj >>= \v -> return ("name", toVariant v)
        , comCitrixXenclientNetworkdomainConfigGetNmState obj >>= \v -> return ("nm-state", toVariant v)
        , comCitrixXenclientNetworkdomainConfigGetUuid obj >>= \v -> return ("uuid", toVariant v)
      ] >>= return . Map.fromList
    "com.citrix.xenclient.networkdomain.notify" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkDomainServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.networkdomain" [
        rpcMethod "close_network_menu" "" "" (stubComCitrixXenclientNetworkdomainCloseNetworkMenu server_)
      , rpcMethod "list_networks" "" "networks:as" (stubComCitrixXenclientNetworkdomainListNetworks server_)
      , rpcMethod "popup_network_menu" "x_off:u,y_off:u" "" (stubComCitrixXenclientNetworkdomainPopupNetworkMenu server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.networkdomain.config" [
    ] [
        rpcProperty "domid" "u" Read
      , rpcProperty "is-networking-active" "b" Read
      , rpcProperty "name" "s" Read
      , rpcProperty "nm-state" "u" Read
      , rpcProperty "uuid" "s" Read
    ],
    RpcInterface "com.citrix.xenclient.networkdomain.notify" [
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
