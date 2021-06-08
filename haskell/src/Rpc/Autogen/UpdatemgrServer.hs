{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.UpdatemgrServer (
  UpdatemgrServer (..)
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

-- UpdatemgrServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data UpdatemgrServer m = UpdatemgrServer {
  comCitrixXenclientUpdatemgrGetUpdateApplicable :: m (String)
  , comCitrixXenclientUpdatemgrGetUpdateDescription :: m (String)
  , comCitrixXenclientUpdatemgrGetUpdateDownloadPercent :: m (Double)
  , comCitrixXenclientUpdatemgrGetUpdateDownloadSpeed :: m (Double)
  , comCitrixXenclientUpdatemgrGetUpdateFailReason :: m (String)
  , comCitrixXenclientUpdatemgrGetUpdateState :: m (String)
  , comCitrixXenclientUpdatemgrGetUpdateUrl :: m (String)
  , comCitrixXenclientUpdatemgrApplyUpdateAndReboot :: m ()
  , comCitrixXenclientUpdatemgrApplyUpdateAndShutdown :: m ()
  , comCitrixXenclientUpdatemgrCancelUpdate :: m ()
  , comCitrixXenclientUpdatemgrCheckUpdate :: String -> m (String, String, String)
  , comCitrixXenclientUpdatemgrCheckUpdateLatest :: String -> m (String, String, String)
  , comCitrixXenclientUpdatemgrDownloadUpdate :: String -> m ()
  , comCitrixXenclientUpdatemgrDownloadUpdateLatest :: String -> m ()
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.updatemgr

stubComCitrixXenclientUpdatemgrApplyUpdateAndReboot :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientUpdatemgrApplyUpdateAndReboot server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientUpdatemgrApplyUpdateAndReboot server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientUpdatemgrApplyUpdateAndShutdown :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientUpdatemgrApplyUpdateAndShutdown server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientUpdatemgrApplyUpdateAndShutdown server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientUpdatemgrCancelUpdate :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientUpdatemgrCancelUpdate server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientUpdatemgrCancelUpdate server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientUpdatemgrCheckUpdate :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientUpdatemgrCheckUpdate server_ args_ = do
  case args_ of
    [ url ] -> do
      (out_0, out_1, out_2) <- comCitrixXenclientUpdatemgrCheckUpdate server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ url)
      return [ (toVariant $ out_0), (toVariant $ out_1), (toVariant $ out_2) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientUpdatemgrCheckUpdateLatest :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientUpdatemgrCheckUpdateLatest server_ args_ = do
  case args_ of
    [ url ] -> do
      (out_0, out_1, out_2) <- comCitrixXenclientUpdatemgrCheckUpdateLatest server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ url)
      return [ (toVariant $ out_0), (toVariant $ out_1), (toVariant $ out_2) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientUpdatemgrDownloadUpdate :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientUpdatemgrDownloadUpdate server_ args_ = do
  case args_ of
    [ url ] -> do
      () <- comCitrixXenclientUpdatemgrDownloadUpdate server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ url)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientUpdatemgrDownloadUpdateLatest :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientUpdatemgrDownloadUpdateLatest server_ args_ = do
  case args_ of
    [ url ] -> do
      () <- comCitrixXenclientUpdatemgrDownloadUpdateLatest server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ url)
      return [ ]
    _ -> error "invalid arguments"

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => UpdatemgrServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.updatemgr", "update-applicable") -> comCitrixXenclientUpdatemgrGetUpdateApplicable obj >>= return . toVariant
    ("com.citrix.xenclient.updatemgr", "update-description") -> comCitrixXenclientUpdatemgrGetUpdateDescription obj >>= return . toVariant
    ("com.citrix.xenclient.updatemgr", "update-download-percent") -> comCitrixXenclientUpdatemgrGetUpdateDownloadPercent obj >>= return . toVariant
    ("com.citrix.xenclient.updatemgr", "update-download-speed") -> comCitrixXenclientUpdatemgrGetUpdateDownloadSpeed obj >>= return . toVariant
    ("com.citrix.xenclient.updatemgr", "update-fail-reason") -> comCitrixXenclientUpdatemgrGetUpdateFailReason obj >>= return . toVariant
    ("com.citrix.xenclient.updatemgr", "update-state") -> comCitrixXenclientUpdatemgrGetUpdateState obj >>= return . toVariant
    ("com.citrix.xenclient.updatemgr", "update-url") -> comCitrixXenclientUpdatemgrGetUpdateUrl obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => UpdatemgrServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.updatemgr" -> rpcRunParallel [
          comCitrixXenclientUpdatemgrGetUpdateApplicable obj >>= \v -> return ("update-applicable", toVariant v)
        , comCitrixXenclientUpdatemgrGetUpdateDescription obj >>= \v -> return ("update-description", toVariant v)
        , comCitrixXenclientUpdatemgrGetUpdateDownloadPercent obj >>= \v -> return ("update-download-percent", toVariant v)
        , comCitrixXenclientUpdatemgrGetUpdateDownloadSpeed obj >>= \v -> return ("update-download-speed", toVariant v)
        , comCitrixXenclientUpdatemgrGetUpdateFailReason obj >>= \v -> return ("update-fail-reason", toVariant v)
        , comCitrixXenclientUpdatemgrGetUpdateState obj >>= \v -> return ("update-state", toVariant v)
        , comCitrixXenclientUpdatemgrGetUpdateUrl obj >>= \v -> return ("update-url", toVariant v)
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => UpdatemgrServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.updatemgr" [
        rpcMethod "apply_update_and_reboot" "" "" (stubComCitrixXenclientUpdatemgrApplyUpdateAndReboot server_)
      , rpcMethod "apply_update_and_shutdown" "" "" (stubComCitrixXenclientUpdatemgrApplyUpdateAndShutdown server_)
      , rpcMethod "cancel_update" "" "" (stubComCitrixXenclientUpdatemgrCancelUpdate server_)
      , rpcMethod "check_update" "url:s" "version:s,release:s,status:s" (stubComCitrixXenclientUpdatemgrCheckUpdate server_)
      , rpcMethod "check_update_latest" "url:s" "version:s,release:s,status:s" (stubComCitrixXenclientUpdatemgrCheckUpdateLatest server_)
      , rpcMethod "download_update" "url:s" "" (stubComCitrixXenclientUpdatemgrDownloadUpdate server_)
      , rpcMethod "download_update_latest" "url:s" "" (stubComCitrixXenclientUpdatemgrDownloadUpdateLatest server_)
    ] [
        rpcProperty "update-applicable" "s" Read
      , rpcProperty "update-description" "s" Read
      , rpcProperty "update-download-percent" "d" Read
      , rpcProperty "update-download-speed" "d" Read
      , rpcProperty "update-fail-reason" "s" Read
      , rpcProperty "update-state" "s" Read
      , rpcProperty "update-url" "s" Read
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
