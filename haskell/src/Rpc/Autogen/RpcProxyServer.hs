{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.RpcProxyServer (
  RpcProxyServer (..)
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

-- RpcProxyServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data RpcProxyServer m = RpcProxyServer {
  comCitrixXenclientRpcProxyAddRule :: String -> m ()
  , comCitrixXenclientRpcProxyDeleteRule :: String -> m ()
  , comCitrixXenclientRpcProxyListRules :: m ([String])
  , comCitrixXenclientRpcProxyValidateCall :: Int32 -> String -> String -> String -> m (Bool)
  , comCitrixXenclientRpcProxyValidateRecvSignal :: Int32 -> String -> String -> m (Bool)
  , comCitrixXenclientRpcProxyValidateSendSignal :: Int32 -> String -> String -> m (Bool)
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.rpc_proxy

stubComCitrixXenclientRpcProxyAddRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientRpcProxyAddRule server_ args_ = do
  case args_ of
    [ rule ] -> do
      () <- comCitrixXenclientRpcProxyAddRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ rule)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientRpcProxyDeleteRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientRpcProxyDeleteRule server_ args_ = do
  case args_ of
    [ rule ] -> do
      () <- comCitrixXenclientRpcProxyDeleteRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ rule)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientRpcProxyListRules :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientRpcProxyListRules server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientRpcProxyListRules server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientRpcProxyValidateCall :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientRpcProxyValidateCall server_ args_ = do
  case args_ of
    [ domain, destination, interface, member ] -> do
      (out_0) <- comCitrixXenclientRpcProxyValidateCall server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domain)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ destination)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ member)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientRpcProxyValidateRecvSignal :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientRpcProxyValidateRecvSignal server_ args_ = do
  case args_ of
    [ domain, interface, member ] -> do
      (out_0) <- comCitrixXenclientRpcProxyValidateRecvSignal server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domain)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ member)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientRpcProxyValidateSendSignal :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientRpcProxyValidateSendSignal server_ args_ = do
  case args_ of
    [ domain, interface, member ] -> do
      (out_0) <- comCitrixXenclientRpcProxyValidateSendSignal server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domain)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ member)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => RpcProxyServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => RpcProxyServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.rpc_proxy" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => RpcProxyServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.rpc_proxy" [
        rpcMethod "add_rule" "rule:s" "" (stubComCitrixXenclientRpcProxyAddRule server_)
      , rpcMethod "delete_rule" "rule:s" "" (stubComCitrixXenclientRpcProxyDeleteRule server_)
      , rpcMethod "list_rules" "" "rules:as" (stubComCitrixXenclientRpcProxyListRules server_)
      , rpcMethod "validate_call" "domain:i,destination:s,interface:s,member:s" "r:b" (stubComCitrixXenclientRpcProxyValidateCall server_)
      , rpcMethod "validate_recv_signal" "domain:i,interface:s,member:s" "r:b" (stubComCitrixXenclientRpcProxyValidateRecvSignal server_)
      , rpcMethod "validate_send_signal" "domain:i,interface:s,member:s" "r:b" (stubComCitrixXenclientRpcProxyValidateSendSignal server_)
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
