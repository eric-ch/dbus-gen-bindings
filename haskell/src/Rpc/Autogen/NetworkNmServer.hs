{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.NetworkNmServer (
  NetworkNmServer (..)
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

-- NetworkNmServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data NetworkNmServer m = NetworkNmServer {
  comCitrixXenclientNetworkNmCloseNetworkMenu :: m ()
  , comCitrixXenclientNetworkNmPopupKeyboard :: m ()
  , comCitrixXenclientNetworkNmPopupNetworkMenu :: Word32 -> Word32 -> m ()
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.network.nm

stubComCitrixXenclientNetworkNmCloseNetworkMenu :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkNmCloseNetworkMenu server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientNetworkNmCloseNetworkMenu server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkNmPopupKeyboard :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkNmPopupKeyboard server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientNetworkNmPopupKeyboard server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientNetworkNmPopupNetworkMenu :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientNetworkNmPopupNetworkMenu server_ args_ = do
  case args_ of
    [ x_off, y_off ] -> do
      () <- comCitrixXenclientNetworkNmPopupNetworkMenu server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ x_off)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ y_off)
      return [ ]
    _ -> error "invalid arguments"

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => NetworkNmServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => NetworkNmServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.network.nm" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => NetworkNmServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.network.nm" [
        rpcMethod "close_network_menu" "" "" (stubComCitrixXenclientNetworkNmCloseNetworkMenu server_)
      , rpcMethod "popup_keyboard" "" "" (stubComCitrixXenclientNetworkNmPopupKeyboard server_)
      , rpcMethod "popup_network_menu" "x_off:u,y_off:u" "" (stubComCitrixXenclientNetworkNmPopupNetworkMenu server_)
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
