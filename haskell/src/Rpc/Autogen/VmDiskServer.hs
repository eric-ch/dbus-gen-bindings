{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.VmDiskServer (
  VmDiskServer (..)
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

-- VmDiskServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data VmDiskServer m = VmDiskServer {
  comCitrixXenclientVmdiskGetBackendName :: m (String)
  , comCitrixXenclientVmdiskSetBackendName :: String -> m ()
  , comCitrixXenclientVmdiskGetBackendUuid :: m (String)
  , comCitrixXenclientVmdiskSetBackendUuid :: String -> m ()
  , comCitrixXenclientVmdiskGetDevtype :: m (String)
  , comCitrixXenclientVmdiskSetDevtype :: String -> m ()
  , comCitrixXenclientVmdiskGetEnabled :: m (Bool)
  , comCitrixXenclientVmdiskSetEnabled :: Bool -> m ()
  , comCitrixXenclientVmdiskGetEncryptionKeySet :: m (Bool)
  , comCitrixXenclientVmdiskGetManagedDisktype :: m (String)
  , comCitrixXenclientVmdiskSetManagedDisktype :: String -> m ()
  , comCitrixXenclientVmdiskGetMode :: m (String)
  , comCitrixXenclientVmdiskSetMode :: String -> m ()
  , comCitrixXenclientVmdiskGetPhysPath :: m (String)
  , comCitrixXenclientVmdiskSetPhysPath :: String -> m ()
  , comCitrixXenclientVmdiskGetPhysType :: m (String)
  , comCitrixXenclientVmdiskSetPhysType :: String -> m ()
  , comCitrixXenclientVmdiskGetShared :: m (Bool)
  , comCitrixXenclientVmdiskSetShared :: Bool -> m ()
  , comCitrixXenclientVmdiskGetSnapshot :: m (String)
  , comCitrixXenclientVmdiskSetSnapshot :: String -> m ()
  , comCitrixXenclientVmdiskGetUtilizationBytes :: m (Int64)
  , comCitrixXenclientVmdiskGetVirtPath :: m (String)
  , comCitrixXenclientVmdiskSetVirtPath :: String -> m ()
  , comCitrixXenclientVmdiskGetVirtualSizeMb :: m (Int32)
  , comCitrixXenclientVmdiskAttachPhy :: String -> m ()
  , comCitrixXenclientVmdiskAttachVhd :: String -> m ()
  , comCitrixXenclientVmdiskDelete :: m ()
  , comCitrixXenclientVmdiskGenerateCryptoKey :: Int32 -> m ()
  , comCitrixXenclientVmdiskGenerateCryptoKeyIn :: Int32 -> String -> m ()
  , comCitrixXenclientVmdiskMount :: String -> Bool -> m ()
  , comCitrixXenclientVmdiskUmount :: m ()
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.vmdisk

stubComCitrixXenclientVmdiskAttachPhy :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmdiskAttachPhy server_ args_ = do
  case args_ of
    [ phy_path ] -> do
      () <- comCitrixXenclientVmdiskAttachPhy server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ phy_path)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientVmdiskAttachVhd :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmdiskAttachVhd server_ args_ = do
  case args_ of
    [ vhd_path ] -> do
      () <- comCitrixXenclientVmdiskAttachVhd server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vhd_path)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientVmdiskDelete :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmdiskDelete server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientVmdiskDelete server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientVmdiskGenerateCryptoKey :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmdiskGenerateCryptoKey server_ args_ = do
  case args_ of
    [ keysize ] -> do
      () <- comCitrixXenclientVmdiskGenerateCryptoKey server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ keysize)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientVmdiskGenerateCryptoKeyIn :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmdiskGenerateCryptoKeyIn server_ args_ = do
  case args_ of
    [ keysize, dirpath ] -> do
      () <- comCitrixXenclientVmdiskGenerateCryptoKeyIn server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ keysize)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ dirpath)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientVmdiskMount :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmdiskMount server_ args_ = do
  case args_ of
    [ dirpath, readonly ] -> do
      () <- comCitrixXenclientVmdiskMount server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ dirpath)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ readonly)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientVmdiskUmount :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientVmdiskUmount server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientVmdiskUmount server_
      return [ ]
    _ -> error "invalid arguments"

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => VmDiskServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.vmdisk", "backend-name") -> comCitrixXenclientVmdiskGetBackendName obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "backend-uuid") -> comCitrixXenclientVmdiskGetBackendUuid obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "devtype") -> comCitrixXenclientVmdiskGetDevtype obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "enabled") -> comCitrixXenclientVmdiskGetEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "encryption-key-set") -> comCitrixXenclientVmdiskGetEncryptionKeySet obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "managed-disktype") -> comCitrixXenclientVmdiskGetManagedDisktype obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "mode") -> comCitrixXenclientVmdiskGetMode obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "phys-path") -> comCitrixXenclientVmdiskGetPhysPath obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "phys-type") -> comCitrixXenclientVmdiskGetPhysType obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "shared") -> comCitrixXenclientVmdiskGetShared obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "snapshot") -> comCitrixXenclientVmdiskGetSnapshot obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "utilization-bytes") -> comCitrixXenclientVmdiskGetUtilizationBytes obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "virt-path") -> comCitrixXenclientVmdiskGetVirtPath obj >>= return . toVariant
    ("com.citrix.xenclient.vmdisk", "virtual-size-mb") -> comCitrixXenclientVmdiskGetVirtualSizeMb obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => VmDiskServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    ("com.citrix.xenclient.vmdisk", "backend-name") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetBackendName obj v
    ("com.citrix.xenclient.vmdisk", "backend-uuid") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetBackendUuid obj v
    ("com.citrix.xenclient.vmdisk", "devtype") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetDevtype obj v
    ("com.citrix.xenclient.vmdisk", "enabled") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetEnabled obj v
    ("com.citrix.xenclient.vmdisk", "managed-disktype") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetManagedDisktype obj v
    ("com.citrix.xenclient.vmdisk", "mode") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetMode obj v
    ("com.citrix.xenclient.vmdisk", "phys-path") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetPhysPath obj v
    ("com.citrix.xenclient.vmdisk", "phys-type") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetPhysType obj v
    ("com.citrix.xenclient.vmdisk", "shared") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetShared obj v
    ("com.citrix.xenclient.vmdisk", "snapshot") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetSnapshot obj v
    ("com.citrix.xenclient.vmdisk", "virt-path") -> let Just v = fromVariant value in comCitrixXenclientVmdiskSetVirtPath obj v
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.vmdisk" -> rpcRunParallel [
          comCitrixXenclientVmdiskGetBackendName obj >>= \v -> return ("backend-name", toVariant v)
        , comCitrixXenclientVmdiskGetBackendUuid obj >>= \v -> return ("backend-uuid", toVariant v)
        , comCitrixXenclientVmdiskGetDevtype obj >>= \v -> return ("devtype", toVariant v)
        , comCitrixXenclientVmdiskGetEnabled obj >>= \v -> return ("enabled", toVariant v)
        , comCitrixXenclientVmdiskGetEncryptionKeySet obj >>= \v -> return ("encryption-key-set", toVariant v)
        , comCitrixXenclientVmdiskGetManagedDisktype obj >>= \v -> return ("managed-disktype", toVariant v)
        , comCitrixXenclientVmdiskGetMode obj >>= \v -> return ("mode", toVariant v)
        , comCitrixXenclientVmdiskGetPhysPath obj >>= \v -> return ("phys-path", toVariant v)
        , comCitrixXenclientVmdiskGetPhysType obj >>= \v -> return ("phys-type", toVariant v)
        , comCitrixXenclientVmdiskGetShared obj >>= \v -> return ("shared", toVariant v)
        , comCitrixXenclientVmdiskGetSnapshot obj >>= \v -> return ("snapshot", toVariant v)
        , comCitrixXenclientVmdiskGetUtilizationBytes obj >>= \v -> return ("utilization-bytes", toVariant v)
        , comCitrixXenclientVmdiskGetVirtPath obj >>= \v -> return ("virt-path", toVariant v)
        , comCitrixXenclientVmdiskGetVirtualSizeMb obj >>= \v -> return ("virtual-size-mb", toVariant v)
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => VmDiskServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.vmdisk" [
        rpcMethod "attach_phy" "phy_path:s" "" (stubComCitrixXenclientVmdiskAttachPhy server_)
      , rpcMethod "attach_vhd" "vhd_path:s" "" (stubComCitrixXenclientVmdiskAttachVhd server_)
      , rpcMethod "delete" "" "" (stubComCitrixXenclientVmdiskDelete server_)
      , rpcMethod "generate_crypto_key" "keysize:i" "" (stubComCitrixXenclientVmdiskGenerateCryptoKey server_)
      , rpcMethod "generate_crypto_key_in" "keysize:i,dirpath:s" "" (stubComCitrixXenclientVmdiskGenerateCryptoKeyIn server_)
      , rpcMethod "mount" "dirpath:s,readonly:b" "" (stubComCitrixXenclientVmdiskMount server_)
      , rpcMethod "umount" "" "" (stubComCitrixXenclientVmdiskUmount server_)
    ] [
        rpcProperty "backend-name" "s" ReadWrite
      , rpcProperty "backend-uuid" "s" ReadWrite
      , rpcProperty "devtype" "s" ReadWrite
      , rpcProperty "enabled" "b" ReadWrite
      , rpcProperty "encryption-key-set" "b" Read
      , rpcProperty "managed-disktype" "s" ReadWrite
      , rpcProperty "mode" "s" ReadWrite
      , rpcProperty "phys-path" "s" ReadWrite
      , rpcProperty "phys-type" "s" ReadWrite
      , rpcProperty "shared" "b" ReadWrite
      , rpcProperty "snapshot" "s" ReadWrite
      , rpcProperty "utilization-bytes" "x" Read
      , rpcProperty "virt-path" "s" ReadWrite
      , rpcProperty "virtual-size-mb" "i" Read
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
