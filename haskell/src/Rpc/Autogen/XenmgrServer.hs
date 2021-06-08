{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.XenmgrServer (
  XenmgrServer (..)
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

-- XenmgrServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data XenmgrServer m = XenmgrServer {
  comCitrixXenclientPolicyEnforce :: String -> String -> m ()
  , comCitrixXenclientPolicyRetrieve :: String -> m (String)
  , comCitrixXenclientXenmgrCreateVhd :: Int32 -> m (String)
  , comCitrixXenclientXenmgrCreateVm :: m (ObjectPath)
  , comCitrixXenclientXenmgrCreateVmWithTemplate :: String -> m (ObjectPath)
  , comCitrixXenclientXenmgrCreateVmWithTemplateAndJson :: String -> String -> m (ObjectPath)
  , comCitrixXenclientXenmgrCreateVmWithTemplateAndUuid :: String -> String -> m (ObjectPath)
  , comCitrixXenclientXenmgrCreateVmWithUi :: String -> String -> String -> String -> m (ObjectPath)
  , comCitrixXenclientXenmgrFindVmByDomid :: Int32 -> m (ObjectPath)
  , comCitrixXenclientXenmgrFindVmByUuid :: String -> m (ObjectPath)
  , comCitrixXenclientXenmgrListChildServiceVmTemplates :: m ([String])
  , comCitrixXenclientXenmgrListDomids :: m ([Int32])
  , comCitrixXenclientXenmgrListExtensionPacks :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrListTemplates :: m ([String])
  , comCitrixXenclientXenmgrListUiTemplates :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrListVms :: m ([ObjectPath])
  , comCitrixXenclientXenmgrConfigGetArgoFirewall :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetArgoFirewall :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetArgoHostsFile :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetArgoHostsFile :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetAutolockCdDrives :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetAutolockCdDrives :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetAutostart :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetAutostart :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetBypassSha1sumChecks :: m (Bool)
  , comCitrixXenclientXenmgrConfigGetConfigurableSaveChangesAcrossReboots :: m (Bool)
  , comCitrixXenclientXenmgrConfigGetConnectRemoteDesktopAllowed :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetConnectRemoteDesktopAllowed :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetDom0MemTargetMib :: m (Int32)
  , comCitrixXenclientXenmgrConfigSetDom0MemTargetMib :: Int32 -> m ()
  , comCitrixXenclientXenmgrConfigGetEnableArgoSsh :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetEnableArgoSsh :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetEnableDom0Networking :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetEnableDom0Networking :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetEnableSsh :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetEnableSsh :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetGuestOnlyNetworking :: m (Bool)
  , comCitrixXenclientXenmgrConfigGetIsoPath :: m (String)
  , comCitrixXenclientXenmgrConfigSetIsoPath :: String -> m ()
  , comCitrixXenclientXenmgrConfigGetMeasureFailAction :: m (String)
  , comCitrixXenclientXenmgrConfigSetMeasureFailAction :: String -> m ()
  , comCitrixXenclientXenmgrConfigGetOtaUpgradesAllowed :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetOtaUpgradesAllowed :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetPlatformCryptoKeyDirs :: m (String)
  , comCitrixXenclientXenmgrConfigSetPlatformCryptoKeyDirs :: String -> m ()
  , comCitrixXenclientXenmgrConfigGetPvmAutostartDelay :: m (Int32)
  , comCitrixXenclientXenmgrConfigSetPvmAutostartDelay :: Int32 -> m ()
  , comCitrixXenclientXenmgrConfigGetSecondaryGpuPt :: m (Bool)
  , comCitrixXenclientXenmgrConfigGetSvmAutostartDelay :: m (Int32)
  , comCitrixXenclientXenmgrConfigSetSvmAutostartDelay :: Int32 -> m ()
  , comCitrixXenclientXenmgrConfigGetUseNetworkingDomain :: m (Bool)
  , comCitrixXenclientXenmgrConfigGetVmCreationAllowed :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetVmCreationAllowed :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetVmDeletionAllowed :: m (Bool)
  , comCitrixXenclientXenmgrConfigSetVmDeletionAllowed :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigGetXcDiagTimeout :: m (Int32)
  , comCitrixXenclientXenmgrConfigSetXcDiagTimeout :: Int32 -> m ()
  , comCitrixXenclientXenmgrConfigUiGetIdleTimeThreshold :: m (Int32)
  , comCitrixXenclientXenmgrConfigUiSetIdleTimeThreshold :: Int32 -> m ()
  , comCitrixXenclientXenmgrConfigUiGetLanguage :: m (String)
  , comCitrixXenclientXenmgrConfigUiSetLanguage :: String -> m ()
  , comCitrixXenclientXenmgrConfigUiGetModifyAdvancedVmSettings :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetModifyAdvancedVmSettings :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetModifyServices :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetModifyServices :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetModifySettings :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetModifySettings :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetModifyUsbSettings :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetModifyUsbSettings :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetPointerTrailTimeout :: m (Int32)
  , comCitrixXenclientXenmgrConfigUiSetPointerTrailTimeout :: Int32 -> m ()
  , comCitrixXenclientXenmgrConfigUiGetShowMbootWarning :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetShowMbootWarning :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetShowMsgOnNoDisk :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetShowMsgOnNoDisk :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStart :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStart :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStartToolsWarning :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStartToolsWarning :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetShowToolsWarning :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetShowToolsWarning :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetSupportedLanguages :: m ([String])
  , comCitrixXenclientXenmgrConfigUiGetSwitcherEnabled :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetSwitcherEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetSwitcherKeyboardFollowsMouse :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetSwitcherKeyboardFollowsMouse :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetSwitcherResistance :: m (Int32)
  , comCitrixXenclientXenmgrConfigUiSetSwitcherResistance :: Int32 -> m ()
  , comCitrixXenclientXenmgrConfigUiGetSwitcherSelfSwitchEnabled :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetSwitcherSelfSwitchEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetSwitcherStatusReportEnabled :: m (Bool)
  , comCitrixXenclientXenmgrConfigUiSetSwitcherStatusReportEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrConfigUiGetViewType :: m (String)
  , comCitrixXenclientXenmgrConfigUiSetViewType :: String -> m ()
  , comCitrixXenclientXenmgrConfigUiGetWallpaper :: m (String)
  , comCitrixXenclientXenmgrConfigUiSetWallpaper :: String -> m ()
  , comCitrixXenclientXenmgrDiagCreateStatusReport :: Bool -> Bool -> String -> String -> String -> String -> m (String)
  , comCitrixXenclientXenmgrDiagGather :: String -> String -> m ()
  , comCitrixXenclientXenmgrDiagSave :: String -> m (String)
  , comCitrixXenclientXenmgrDiagStatusReportScreen :: Bool -> m ()
  , comCitrixXenclientXenmgrDiagTaasAgreeTerms :: String -> String -> String -> m (Bool)
  , comCitrixXenclientXenmgrDiagTaasAuthenticateCredentials :: String -> String -> m ([String])
  , comCitrixXenclientXenmgrDiagTaasUpload :: String -> String -> String -> String -> m (Bool)
  , comCitrixXenclientXenmgrGuestreqRequestAttention :: m ()
  , comCitrixXenclientXenmgrTestingScriptDequeue :: m (String)
  , comCitrixXenclientXenmgrTestingScriptQueue :: String -> m ()
  , comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm :: m (ObjectPath)
  , comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson :: String -> String -> m (ObjectPath)
  , comCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm :: String -> m ()
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.policy

stubComCitrixXenclientPolicyEnforce :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientPolicyEnforce server_ args_ = do
  case args_ of
    [ uuid, value ] -> do
      () <- comCitrixXenclientPolicyEnforce server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ uuid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientPolicyRetrieve :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientPolicyRetrieve server_ args_ = do
  case args_ of
    [ uuid ] -> do
      (out_0) <- comCitrixXenclientPolicyRetrieve server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ uuid)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr

stubComCitrixXenclientXenmgrCreateVhd :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrCreateVhd server_ args_ = do
  case args_ of
    [ size_mb ] -> do
      (out_0) <- comCitrixXenclientXenmgrCreateVhd server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ size_mb)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrCreateVm :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrCreateVm server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrCreateVm server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrCreateVmWithTemplate :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrCreateVmWithTemplate server_ args_ = do
  case args_ of
    [ template ] -> do
      (out_0) <- comCitrixXenclientXenmgrCreateVmWithTemplate server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ template)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrCreateVmWithTemplateAndJson :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrCreateVmWithTemplateAndJson server_ args_ = do
  case args_ of
    [ template, json ] -> do
      (out_0) <- comCitrixXenclientXenmgrCreateVmWithTemplateAndJson server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ template)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ json)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrCreateVmWithTemplateAndUuid :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrCreateVmWithTemplateAndUuid server_ args_ = do
  case args_ of
    [ template, uuid ] -> do
      (out_0) <- comCitrixXenclientXenmgrCreateVmWithTemplateAndUuid server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ template)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ uuid)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrCreateVmWithUi :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrCreateVmWithUi server_ args_ = do
  case args_ of
    [ template, name, description, image_path ] -> do
      (out_0) <- comCitrixXenclientXenmgrCreateVmWithUi server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ template)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ name)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ description)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ image_path)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrFindVmByDomid :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrFindVmByDomid server_ args_ = do
  case args_ of
    [ domid ] -> do
      (out_0) <- comCitrixXenclientXenmgrFindVmByDomid server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ domid)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrFindVmByUuid :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrFindVmByUuid server_ args_ = do
  case args_ of
    [ uuid ] -> do
      (out_0) <- comCitrixXenclientXenmgrFindVmByUuid server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ uuid)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrListChildServiceVmTemplates :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrListChildServiceVmTemplates server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrListChildServiceVmTemplates server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrListDomids :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrListDomids server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrListDomids server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrListExtensionPacks :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrListExtensionPacks server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrListExtensionPacks server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrListTemplates :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrListTemplates server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrListTemplates server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrListUiTemplates :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrListUiTemplates server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrListUiTemplates server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrListVms :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrListVms server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrListVms server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.config

-- Interface com.citrix.xenclient.xenmgr.config.ui

-- Interface com.citrix.xenclient.xenmgr.diag

stubComCitrixXenclientXenmgrDiagCreateStatusReport :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrDiagCreateStatusReport server_ args_ = do
  case args_ of
    [ screenshots, guest_info, summary, description, repro_steps, ticket ] -> do
      (out_0) <- comCitrixXenclientXenmgrDiagCreateStatusReport server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ screenshots)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ guest_info)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ summary)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ description)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ repro_steps)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ ticket)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrDiagGather :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrDiagGather server_ args_ = do
  case args_ of
    [ name, data_ ] -> do
      () <- comCitrixXenclientXenmgrDiagGather server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ name)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ data_)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrDiagSave :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrDiagSave server_ args_ = do
  case args_ of
    [ mode ] -> do
      (out_0) <- comCitrixXenclientXenmgrDiagSave server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ mode)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrDiagStatusReportScreen :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrDiagStatusReportScreen server_ args_ = do
  case args_ of
    [ show ] -> do
      () <- comCitrixXenclientXenmgrDiagStatusReportScreen server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ show)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrDiagTaasAgreeTerms :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrDiagTaasAgreeTerms server_ args_ = do
  case args_ of
    [ username, password, version ] -> do
      (out_0) <- comCitrixXenclientXenmgrDiagTaasAgreeTerms server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ username)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ password)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ version)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrDiagTaasAuthenticateCredentials :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrDiagTaasAuthenticateCredentials server_ args_ = do
  case args_ of
    [ username, password ] -> do
      (out_0) <- comCitrixXenclientXenmgrDiagTaasAuthenticateCredentials server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ username)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ password)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrDiagTaasUpload :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrDiagTaasUpload server_ args_ = do
  case args_ of
    [ username, password, caseid, filename ] -> do
      (out_0) <- comCitrixXenclientXenmgrDiagTaasUpload server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ username)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ password)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ caseid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ filename)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.guestreq

stubComCitrixXenclientXenmgrGuestreqRequestAttention :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrGuestreqRequestAttention server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrGuestreqRequestAttention server_
      return [ ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.testing

stubComCitrixXenclientXenmgrTestingScriptDequeue :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrTestingScriptDequeue server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrTestingScriptDequeue server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrTestingScriptQueue :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrTestingScriptQueue server_ args_ = do
  case args_ of
    [ script ] -> do
      () <- comCitrixXenclientXenmgrTestingScriptQueue server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ script)
      return [ ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.unrestricted

stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson server_ args_ = do
  case args_ of
    [ template, json ] -> do
      (out_0) <- comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ template)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ json)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm server_ args_ = do
  case args_ of
    [ uuid ] -> do
      () <- comCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ uuid)
      return [ ]
    _ -> error "invalid arguments"

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => XenmgrServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.xenmgr.config", "argo-firewall") -> comCitrixXenclientXenmgrConfigGetArgoFirewall obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "argo-hosts-file") -> comCitrixXenclientXenmgrConfigGetArgoHostsFile obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "autolock-cd-drives") -> comCitrixXenclientXenmgrConfigGetAutolockCdDrives obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "autostart") -> comCitrixXenclientXenmgrConfigGetAutostart obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "bypass-sha1sum-checks") -> comCitrixXenclientXenmgrConfigGetBypassSha1sumChecks obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "configurable-save-changes-across-reboots") -> comCitrixXenclientXenmgrConfigGetConfigurableSaveChangesAcrossReboots obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "connect-remote-desktop-allowed") -> comCitrixXenclientXenmgrConfigGetConnectRemoteDesktopAllowed obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "dom0-mem-target-mib") -> comCitrixXenclientXenmgrConfigGetDom0MemTargetMib obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "enable-argo-ssh") -> comCitrixXenclientXenmgrConfigGetEnableArgoSsh obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "enable-dom0-networking") -> comCitrixXenclientXenmgrConfigGetEnableDom0Networking obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "enable-ssh") -> comCitrixXenclientXenmgrConfigGetEnableSsh obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "guest-only-networking") -> comCitrixXenclientXenmgrConfigGetGuestOnlyNetworking obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "iso-path") -> comCitrixXenclientXenmgrConfigGetIsoPath obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "measure-fail-action") -> comCitrixXenclientXenmgrConfigGetMeasureFailAction obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "ota-upgrades-allowed") -> comCitrixXenclientXenmgrConfigGetOtaUpgradesAllowed obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "platform-crypto-key-dirs") -> comCitrixXenclientXenmgrConfigGetPlatformCryptoKeyDirs obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "pvm-autostart-delay") -> comCitrixXenclientXenmgrConfigGetPvmAutostartDelay obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "secondary-gpu-pt") -> comCitrixXenclientXenmgrConfigGetSecondaryGpuPt obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "svm-autostart-delay") -> comCitrixXenclientXenmgrConfigGetSvmAutostartDelay obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "use-networking-domain") -> comCitrixXenclientXenmgrConfigGetUseNetworkingDomain obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "vm-creation-allowed") -> comCitrixXenclientXenmgrConfigGetVmCreationAllowed obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "vm-deletion-allowed") -> comCitrixXenclientXenmgrConfigGetVmDeletionAllowed obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config", "xc-diag-timeout") -> comCitrixXenclientXenmgrConfigGetXcDiagTimeout obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "idle-time-threshold") -> comCitrixXenclientXenmgrConfigUiGetIdleTimeThreshold obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "language") -> comCitrixXenclientXenmgrConfigUiGetLanguage obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-advanced-vm-settings") -> comCitrixXenclientXenmgrConfigUiGetModifyAdvancedVmSettings obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-services") -> comCitrixXenclientXenmgrConfigUiGetModifyServices obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-settings") -> comCitrixXenclientXenmgrConfigUiGetModifySettings obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-usb-settings") -> comCitrixXenclientXenmgrConfigUiGetModifyUsbSettings obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "pointer-trail-timeout") -> comCitrixXenclientXenmgrConfigUiGetPointerTrailTimeout obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "show-mboot-warning") -> comCitrixXenclientXenmgrConfigUiGetShowMbootWarning obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "show-msg-on-no-disk") -> comCitrixXenclientXenmgrConfigUiGetShowMsgOnNoDisk obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "show-msg-on-vm-start") -> comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStart obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "show-msg-on-vm-start-tools-warning") -> comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStartToolsWarning obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "show-tools-warning") -> comCitrixXenclientXenmgrConfigUiGetShowToolsWarning obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "supported-languages") -> comCitrixXenclientXenmgrConfigUiGetSupportedLanguages obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-enabled") -> comCitrixXenclientXenmgrConfigUiGetSwitcherEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-keyboard-follows-mouse") -> comCitrixXenclientXenmgrConfigUiGetSwitcherKeyboardFollowsMouse obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-resistance") -> comCitrixXenclientXenmgrConfigUiGetSwitcherResistance obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-self-switch-enabled") -> comCitrixXenclientXenmgrConfigUiGetSwitcherSelfSwitchEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-status-report-enabled") -> comCitrixXenclientXenmgrConfigUiGetSwitcherStatusReportEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "view-type") -> comCitrixXenclientXenmgrConfigUiGetViewType obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.config.ui", "wallpaper") -> comCitrixXenclientXenmgrConfigUiGetWallpaper obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => XenmgrServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    ("com.citrix.xenclient.xenmgr.config", "argo-firewall") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetArgoFirewall obj v
    ("com.citrix.xenclient.xenmgr.config", "argo-hosts-file") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetArgoHostsFile obj v
    ("com.citrix.xenclient.xenmgr.config", "autolock-cd-drives") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetAutolockCdDrives obj v
    ("com.citrix.xenclient.xenmgr.config", "autostart") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetAutostart obj v
    ("com.citrix.xenclient.xenmgr.config", "connect-remote-desktop-allowed") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetConnectRemoteDesktopAllowed obj v
    ("com.citrix.xenclient.xenmgr.config", "dom0-mem-target-mib") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetDom0MemTargetMib obj v
    ("com.citrix.xenclient.xenmgr.config", "enable-argo-ssh") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetEnableArgoSsh obj v
    ("com.citrix.xenclient.xenmgr.config", "enable-dom0-networking") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetEnableDom0Networking obj v
    ("com.citrix.xenclient.xenmgr.config", "enable-ssh") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetEnableSsh obj v
    ("com.citrix.xenclient.xenmgr.config", "iso-path") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetIsoPath obj v
    ("com.citrix.xenclient.xenmgr.config", "measure-fail-action") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetMeasureFailAction obj v
    ("com.citrix.xenclient.xenmgr.config", "ota-upgrades-allowed") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetOtaUpgradesAllowed obj v
    ("com.citrix.xenclient.xenmgr.config", "platform-crypto-key-dirs") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetPlatformCryptoKeyDirs obj v
    ("com.citrix.xenclient.xenmgr.config", "pvm-autostart-delay") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetPvmAutostartDelay obj v
    ("com.citrix.xenclient.xenmgr.config", "svm-autostart-delay") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetSvmAutostartDelay obj v
    ("com.citrix.xenclient.xenmgr.config", "vm-creation-allowed") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetVmCreationAllowed obj v
    ("com.citrix.xenclient.xenmgr.config", "vm-deletion-allowed") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetVmDeletionAllowed obj v
    ("com.citrix.xenclient.xenmgr.config", "xc-diag-timeout") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigSetXcDiagTimeout obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "idle-time-threshold") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetIdleTimeThreshold obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "language") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetLanguage obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-advanced-vm-settings") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetModifyAdvancedVmSettings obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-services") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetModifyServices obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-settings") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetModifySettings obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "modify-usb-settings") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetModifyUsbSettings obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "pointer-trail-timeout") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetPointerTrailTimeout obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "show-mboot-warning") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetShowMbootWarning obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "show-msg-on-no-disk") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetShowMsgOnNoDisk obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "show-msg-on-vm-start") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStart obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "show-msg-on-vm-start-tools-warning") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStartToolsWarning obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "show-tools-warning") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetShowToolsWarning obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetSwitcherEnabled obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-keyboard-follows-mouse") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetSwitcherKeyboardFollowsMouse obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-resistance") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetSwitcherResistance obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-self-switch-enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetSwitcherSelfSwitchEnabled obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "switcher-status-report-enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetSwitcherStatusReportEnabled obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "view-type") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetViewType obj v
    ("com.citrix.xenclient.xenmgr.config.ui", "wallpaper") -> let Just v = fromVariant value in comCitrixXenclientXenmgrConfigUiSetWallpaper obj v
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.policy" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.config" -> rpcRunParallel [
          comCitrixXenclientXenmgrConfigGetArgoFirewall obj >>= \v -> return ("argo-firewall", toVariant v)
        , comCitrixXenclientXenmgrConfigGetArgoHostsFile obj >>= \v -> return ("argo-hosts-file", toVariant v)
        , comCitrixXenclientXenmgrConfigGetAutolockCdDrives obj >>= \v -> return ("autolock-cd-drives", toVariant v)
        , comCitrixXenclientXenmgrConfigGetAutostart obj >>= \v -> return ("autostart", toVariant v)
        , comCitrixXenclientXenmgrConfigGetBypassSha1sumChecks obj >>= \v -> return ("bypass-sha1sum-checks", toVariant v)
        , comCitrixXenclientXenmgrConfigGetConfigurableSaveChangesAcrossReboots obj >>= \v -> return ("configurable-save-changes-across-reboots", toVariant v)
        , comCitrixXenclientXenmgrConfigGetConnectRemoteDesktopAllowed obj >>= \v -> return ("connect-remote-desktop-allowed", toVariant v)
        , comCitrixXenclientXenmgrConfigGetDom0MemTargetMib obj >>= \v -> return ("dom0-mem-target-mib", toVariant v)
        , comCitrixXenclientXenmgrConfigGetEnableArgoSsh obj >>= \v -> return ("enable-argo-ssh", toVariant v)
        , comCitrixXenclientXenmgrConfigGetEnableDom0Networking obj >>= \v -> return ("enable-dom0-networking", toVariant v)
        , comCitrixXenclientXenmgrConfigGetEnableSsh obj >>= \v -> return ("enable-ssh", toVariant v)
        , comCitrixXenclientXenmgrConfigGetGuestOnlyNetworking obj >>= \v -> return ("guest-only-networking", toVariant v)
        , comCitrixXenclientXenmgrConfigGetIsoPath obj >>= \v -> return ("iso-path", toVariant v)
        , comCitrixXenclientXenmgrConfigGetMeasureFailAction obj >>= \v -> return ("measure-fail-action", toVariant v)
        , comCitrixXenclientXenmgrConfigGetOtaUpgradesAllowed obj >>= \v -> return ("ota-upgrades-allowed", toVariant v)
        , comCitrixXenclientXenmgrConfigGetPlatformCryptoKeyDirs obj >>= \v -> return ("platform-crypto-key-dirs", toVariant v)
        , comCitrixXenclientXenmgrConfigGetPvmAutostartDelay obj >>= \v -> return ("pvm-autostart-delay", toVariant v)
        , comCitrixXenclientXenmgrConfigGetSecondaryGpuPt obj >>= \v -> return ("secondary-gpu-pt", toVariant v)
        , comCitrixXenclientXenmgrConfigGetSvmAutostartDelay obj >>= \v -> return ("svm-autostart-delay", toVariant v)
        , comCitrixXenclientXenmgrConfigGetUseNetworkingDomain obj >>= \v -> return ("use-networking-domain", toVariant v)
        , comCitrixXenclientXenmgrConfigGetVmCreationAllowed obj >>= \v -> return ("vm-creation-allowed", toVariant v)
        , comCitrixXenclientXenmgrConfigGetVmDeletionAllowed obj >>= \v -> return ("vm-deletion-allowed", toVariant v)
        , comCitrixXenclientXenmgrConfigGetXcDiagTimeout obj >>= \v -> return ("xc-diag-timeout", toVariant v)
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.config.ui" -> rpcRunParallel [
          comCitrixXenclientXenmgrConfigUiGetIdleTimeThreshold obj >>= \v -> return ("idle-time-threshold", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetLanguage obj >>= \v -> return ("language", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetModifyAdvancedVmSettings obj >>= \v -> return ("modify-advanced-vm-settings", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetModifyServices obj >>= \v -> return ("modify-services", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetModifySettings obj >>= \v -> return ("modify-settings", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetModifyUsbSettings obj >>= \v -> return ("modify-usb-settings", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetPointerTrailTimeout obj >>= \v -> return ("pointer-trail-timeout", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetShowMbootWarning obj >>= \v -> return ("show-mboot-warning", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetShowMsgOnNoDisk obj >>= \v -> return ("show-msg-on-no-disk", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStart obj >>= \v -> return ("show-msg-on-vm-start", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStartToolsWarning obj >>= \v -> return ("show-msg-on-vm-start-tools-warning", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetShowToolsWarning obj >>= \v -> return ("show-tools-warning", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetSupportedLanguages obj >>= \v -> return ("supported-languages", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetSwitcherEnabled obj >>= \v -> return ("switcher-enabled", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetSwitcherKeyboardFollowsMouse obj >>= \v -> return ("switcher-keyboard-follows-mouse", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetSwitcherResistance obj >>= \v -> return ("switcher-resistance", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetSwitcherSelfSwitchEnabled obj >>= \v -> return ("switcher-self-switch-enabled", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetSwitcherStatusReportEnabled obj >>= \v -> return ("switcher-status-report-enabled", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetViewType obj >>= \v -> return ("view-type", toVariant v)
        , comCitrixXenclientXenmgrConfigUiGetWallpaper obj >>= \v -> return ("wallpaper", toVariant v)
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.diag" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.guestreq" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.testing" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.unrestricted" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.policy" [
        rpcMethod "enforce" "uuid:s,value:s" "" (stubComCitrixXenclientPolicyEnforce server_)
      , rpcMethod "retrieve" "uuid:s" "result:s" (stubComCitrixXenclientPolicyRetrieve server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr" [
        rpcMethod "create_vhd" "size_mb:i" "path:s" (stubComCitrixXenclientXenmgrCreateVhd server_)
      , rpcMethod "create_vm" "" "path:o" (stubComCitrixXenclientXenmgrCreateVm server_)
      , rpcMethod "create_vm_with_template" "template:s" "path:o" (stubComCitrixXenclientXenmgrCreateVmWithTemplate server_)
      , rpcMethod "create_vm_with_template_and_json" "template:s,json:s" "path:o" (stubComCitrixXenclientXenmgrCreateVmWithTemplateAndJson server_)
      , rpcMethod "create_vm_with_template_and_uuid" "template:s,uuid:s" "path:o" (stubComCitrixXenclientXenmgrCreateVmWithTemplateAndUuid server_)
      , rpcMethod "create_vm_with_ui" "template:s,name:s,description:s,image_path:s" "path:o" (stubComCitrixXenclientXenmgrCreateVmWithUi server_)
      , rpcMethod "find_vm_by_domid" "domid:i" "obj_path:o" (stubComCitrixXenclientXenmgrFindVmByDomid server_)
      , rpcMethod "find_vm_by_uuid" "uuid:s" "obj_path:o" (stubComCitrixXenclientXenmgrFindVmByUuid server_)
      , rpcMethod "list_child_service_vm_templates" "" "templates:as" (stubComCitrixXenclientXenmgrListChildServiceVmTemplates server_)
      , rpcMethod "list_domids" "" "domids:ai" (stubComCitrixXenclientXenmgrListDomids server_)
      , rpcMethod "list_extension_packs" "" "packs:aa{ss}" (stubComCitrixXenclientXenmgrListExtensionPacks server_)
      , rpcMethod "list_templates" "" "templates:as" (stubComCitrixXenclientXenmgrListTemplates server_)
      , rpcMethod "list_ui_templates" "" "templates:aa{ss}" (stubComCitrixXenclientXenmgrListUiTemplates server_)
      , rpcMethod "list_vms" "" "paths:ao" (stubComCitrixXenclientXenmgrListVms server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.config" [
    ] [
        rpcProperty "argo-firewall" "b" ReadWrite
      , rpcProperty "argo-hosts-file" "b" ReadWrite
      , rpcProperty "autolock-cd-drives" "b" ReadWrite
      , rpcProperty "autostart" "b" ReadWrite
      , rpcProperty "bypass-sha1sum-checks" "b" Read
      , rpcProperty "configurable-save-changes-across-reboots" "b" Read
      , rpcProperty "connect-remote-desktop-allowed" "b" ReadWrite
      , rpcProperty "dom0-mem-target-mib" "i" ReadWrite
      , rpcProperty "enable-argo-ssh" "b" ReadWrite
      , rpcProperty "enable-dom0-networking" "b" ReadWrite
      , rpcProperty "enable-ssh" "b" ReadWrite
      , rpcProperty "guest-only-networking" "b" Read
      , rpcProperty "iso-path" "s" ReadWrite
      , rpcProperty "measure-fail-action" "s" ReadWrite
      , rpcProperty "ota-upgrades-allowed" "b" ReadWrite
      , rpcProperty "platform-crypto-key-dirs" "s" ReadWrite
      , rpcProperty "pvm-autostart-delay" "i" ReadWrite
      , rpcProperty "secondary-gpu-pt" "b" Read
      , rpcProperty "svm-autostart-delay" "i" ReadWrite
      , rpcProperty "use-networking-domain" "b" Read
      , rpcProperty "vm-creation-allowed" "b" ReadWrite
      , rpcProperty "vm-deletion-allowed" "b" ReadWrite
      , rpcProperty "xc-diag-timeout" "i" ReadWrite
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.config.ui" [
    ] [
        rpcProperty "idle-time-threshold" "i" ReadWrite
      , rpcProperty "language" "s" ReadWrite
      , rpcProperty "modify-advanced-vm-settings" "b" ReadWrite
      , rpcProperty "modify-services" "b" ReadWrite
      , rpcProperty "modify-settings" "b" ReadWrite
      , rpcProperty "modify-usb-settings" "b" ReadWrite
      , rpcProperty "pointer-trail-timeout" "i" ReadWrite
      , rpcProperty "show-mboot-warning" "b" ReadWrite
      , rpcProperty "show-msg-on-no-disk" "b" ReadWrite
      , rpcProperty "show-msg-on-vm-start" "b" ReadWrite
      , rpcProperty "show-msg-on-vm-start-tools-warning" "b" ReadWrite
      , rpcProperty "show-tools-warning" "b" ReadWrite
      , rpcProperty "supported-languages" "as" Read
      , rpcProperty "switcher-enabled" "b" ReadWrite
      , rpcProperty "switcher-keyboard-follows-mouse" "b" ReadWrite
      , rpcProperty "switcher-resistance" "i" ReadWrite
      , rpcProperty "switcher-self-switch-enabled" "b" ReadWrite
      , rpcProperty "switcher-status-report-enabled" "b" ReadWrite
      , rpcProperty "view-type" "s" ReadWrite
      , rpcProperty "wallpaper" "s" ReadWrite
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.diag" [
        rpcMethod "create_status_report" "screenshots:b,guest_info:b,summary:s,description:s,repro_steps:s,ticket:s" "file:s" (stubComCitrixXenclientXenmgrDiagCreateStatusReport server_)
      , rpcMethod "gather" "name:s,data_:s" "" (stubComCitrixXenclientXenmgrDiagGather server_)
      , rpcMethod "save" "mode:s" "dir:s" (stubComCitrixXenclientXenmgrDiagSave server_)
      , rpcMethod "status_report_screen" "show:b" "" (stubComCitrixXenclientXenmgrDiagStatusReportScreen server_)
      , rpcMethod "taas_agree_terms" "username:s,password:s,version:s" "result:b" (stubComCitrixXenclientXenmgrDiagTaasAgreeTerms server_)
      , rpcMethod "taas_authenticate_credentials" "username:s,password:s" "result:as" (stubComCitrixXenclientXenmgrDiagTaasAuthenticateCredentials server_)
      , rpcMethod "taas_upload" "username:s,password:s,caseid:s,filename:s" "result:b" (stubComCitrixXenclientXenmgrDiagTaasUpload server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.guestreq" [
        rpcMethod "request_attention" "" "" (stubComCitrixXenclientXenmgrGuestreqRequestAttention server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.testing" [
        rpcMethod "script_dequeue" "" "script:s" (stubComCitrixXenclientXenmgrTestingScriptDequeue server_)
      , rpcMethod "script_queue" "script:s" "" (stubComCitrixXenclientXenmgrTestingScriptQueue server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.unrestricted" [
        rpcMethod "unrestricted_create_vm" "" "path:o" (stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm server_)
      , rpcMethod "unrestricted_create_vm_with_template_and_json" "template:s,json:s" "path:o" (stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson server_)
      , rpcMethod "unrestricted_delete_vm" "uuid:s" "" (stubComCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm server_)
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
