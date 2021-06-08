{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.VmNicServer (
  VmNicServer (..)
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

-- VmNicServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data VmNicServer m = VmNicServer {
  comCitrixXenclientVmnicGetBackendName :: m (String)
  , comCitrixXenclientVmnicSetBackendName :: String -> m ()
  , comCitrixXenclientVmnicGetBackendUuid :: m (String)
  , comCitrixXenclientVmnicSetBackendUuid :: String -> m ()
  , comCitrixXenclientVmnicGetEnabled :: m (Bool)
  , comCitrixXenclientVmnicSetEnabled :: Bool -> m ()
  , comCitrixXenclientVmnicGetMac :: m (String)
  , comCitrixXenclientVmnicSetMac :: String -> m ()
  , comCitrixXenclientVmnicGetMacActual :: m (String)
  , comCitrixXenclientVmnicGetModel :: m (String)
  , comCitrixXenclientVmnicSetModel :: String -> m ()
  , comCitrixXenclientVmnicGetNetwork :: m (String)
  , comCitrixXenclientVmnicSetNetwork :: String -> m ()
  , comCitrixXenclientVmnicGetWirelessDriver :: m (Bool)
  , comCitrixXenclientVmnicSetWirelessDriver :: Bool -> m ()
  , comCitrixXenclientVmnicDelete :: m ()
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.vmnic

stubComCitrixXenclientVmnicDelete :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmNicServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmnicDelete server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientVmnicDelete server_
      return [ ]
    _ -> error "invalid arguments"

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmNicServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmNicServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmNicServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => VmNicServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.vmnic", "backend-name") -> comCitrixXenclientVmnicGetBackendName obj >>= return . toVariant
    ("com.citrix.xenclient.vmnic", "backend-uuid") -> comCitrixXenclientVmnicGetBackendUuid obj >>= return . toVariant
    ("com.citrix.xenclient.vmnic", "enabled") -> comCitrixXenclientVmnicGetEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.vmnic", "mac") -> comCitrixXenclientVmnicGetMac obj >>= return . toVariant
    ("com.citrix.xenclient.vmnic", "mac-actual") -> comCitrixXenclientVmnicGetMacActual obj >>= return . toVariant
    ("com.citrix.xenclient.vmnic", "model") -> comCitrixXenclientVmnicGetModel obj >>= return . toVariant
    ("com.citrix.xenclient.vmnic", "network") -> comCitrixXenclientVmnicGetNetwork obj >>= return . toVariant
    ("com.citrix.xenclient.vmnic", "wireless-driver") -> comCitrixXenclientVmnicGetWirelessDriver obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => VmNicServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    ("com.citrix.xenclient.vmnic", "backend-name") -> let Just v = fromVariant value in comCitrixXenclientVmnicSetBackendName obj v
    ("com.citrix.xenclient.vmnic", "backend-uuid") -> let Just v = fromVariant value in comCitrixXenclientVmnicSetBackendUuid obj v
    ("com.citrix.xenclient.vmnic", "enabled") -> let Just v = fromVariant value in comCitrixXenclientVmnicSetEnabled obj v
    ("com.citrix.xenclient.vmnic", "mac") -> let Just v = fromVariant value in comCitrixXenclientVmnicSetMac obj v
    ("com.citrix.xenclient.vmnic", "model") -> let Just v = fromVariant value in comCitrixXenclientVmnicSetModel obj v
    ("com.citrix.xenclient.vmnic", "network") -> let Just v = fromVariant value in comCitrixXenclientVmnicSetNetwork obj v
    ("com.citrix.xenclient.vmnic", "wireless-driver") -> let Just v = fromVariant value in comCitrixXenclientVmnicSetWirelessDriver obj v
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmNicServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.vmnic" -> rpcRunParallel [
          comCitrixXenclientVmnicGetBackendName obj >>= \v -> return ("backend-name", toVariant v)
        , comCitrixXenclientVmnicGetBackendUuid obj >>= \v -> return ("backend-uuid", toVariant v)
        , comCitrixXenclientVmnicGetEnabled obj >>= \v -> return ("enabled", toVariant v)
        , comCitrixXenclientVmnicGetMac obj >>= \v -> return ("mac", toVariant v)
        , comCitrixXenclientVmnicGetMacActual obj >>= \v -> return ("mac-actual", toVariant v)
        , comCitrixXenclientVmnicGetModel obj >>= \v -> return ("model", toVariant v)
        , comCitrixXenclientVmnicGetNetwork obj >>= \v -> return ("network", toVariant v)
        , comCitrixXenclientVmnicGetWirelessDriver obj >>= \v -> return ("wireless-driver", toVariant v)
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmNicServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.vmnic" [
        rpcMethod "delete" "" "" (stubComCitrixXenclientVmnicDelete server_)
    ] [
        rpcProperty "backend-name" "s" ReadWrite
      , rpcProperty "backend-uuid" "s" ReadWrite
      , rpcProperty "enabled" "b" ReadWrite
      , rpcProperty "mac" "s" ReadWrite
      , rpcProperty "mac-actual" "s" Read
      , rpcProperty "model" "s" ReadWrite
      , rpcProperty "network" "s" ReadWrite
      , rpcProperty "wireless-driver" "b" ReadWrite
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
