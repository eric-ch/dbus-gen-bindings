module Rpc.Autogen.XenmgrClient (
  eMANAGED_DISKTYPE_NONE
  , eMANAGED_DISKTYPE_SYSTEM
  , eMANAGED_DISKTYPE_APPLICATION
  , eMANAGED_DISKTYPE_USER
  , eS3_MODE_PV
  , eS3_MODE_IGNORE
  , eS3_MODE_RESTART
  , eS3_MODE_SNAPSHOT
  , eS4_MODE_PV
  , eS4_MODE_IGNORE
  , eS4_MODE_RESTART
  , eS4_MODE_SNAPSHOT
  , eVM_STATE_CREATING
  , eVM_STATE_RUNNING
  , eVM_STATE_STOPPING
  , eVM_STATE_STOPPED
  , eVM_STATE_LOCKED
  , eVM_STATE_REBOOTING
  , eVM_STATE_REBOOTED
  , eVM_STATE_SUSPENDING
  , eVM_STATE_SUSPENDED
  , eVM_STATE_RESTORING
  , eVM_STATE_PAUSED
  , comCitrixXenclientPolicyEnforce
  , comCitrixXenclientPolicyRetrieve
  , comCitrixXenclientXenmgrCreateVhd
  , comCitrixXenclientXenmgrCreateVm
  , comCitrixXenclientXenmgrCreateVmWithTemplate
  , comCitrixXenclientXenmgrCreateVmWithTemplateAndJson
  , comCitrixXenclientXenmgrCreateVmWithTemplateAndUuid
  , comCitrixXenclientXenmgrCreateVmWithUi
  , comCitrixXenclientXenmgrFindVmByDomid
  , comCitrixXenclientXenmgrFindVmByUuid
  , comCitrixXenclientXenmgrListChildServiceVmTemplates
  , comCitrixXenclientXenmgrListDomids
  , comCitrixXenclientXenmgrListExtensionPacks
  , comCitrixXenclientXenmgrListTemplates
  , comCitrixXenclientXenmgrListUiTemplates
  , comCitrixXenclientXenmgrListVms
  , comCitrixXenclientXenmgrConfigGetArgoFirewall
  , comCitrixXenclientXenmgrConfigSetArgoFirewall
  , comCitrixXenclientXenmgrConfigGetArgoHostsFile
  , comCitrixXenclientXenmgrConfigSetArgoHostsFile
  , comCitrixXenclientXenmgrConfigGetAutolockCdDrives
  , comCitrixXenclientXenmgrConfigSetAutolockCdDrives
  , comCitrixXenclientXenmgrConfigGetAutostart
  , comCitrixXenclientXenmgrConfigSetAutostart
  , comCitrixXenclientXenmgrConfigGetBypassSha1sumChecks
  , comCitrixXenclientXenmgrConfigGetConfigurableSaveChangesAcrossReboots
  , comCitrixXenclientXenmgrConfigGetConnectRemoteDesktopAllowed
  , comCitrixXenclientXenmgrConfigSetConnectRemoteDesktopAllowed
  , comCitrixXenclientXenmgrConfigGetDom0MemTargetMib
  , comCitrixXenclientXenmgrConfigSetDom0MemTargetMib
  , comCitrixXenclientXenmgrConfigGetEnableArgoSsh
  , comCitrixXenclientXenmgrConfigSetEnableArgoSsh
  , comCitrixXenclientXenmgrConfigGetEnableDom0Networking
  , comCitrixXenclientXenmgrConfigSetEnableDom0Networking
  , comCitrixXenclientXenmgrConfigGetEnableSsh
  , comCitrixXenclientXenmgrConfigSetEnableSsh
  , comCitrixXenclientXenmgrConfigGetGuestOnlyNetworking
  , comCitrixXenclientXenmgrConfigGetIsoPath
  , comCitrixXenclientXenmgrConfigSetIsoPath
  , comCitrixXenclientXenmgrConfigGetMeasureFailAction
  , comCitrixXenclientXenmgrConfigSetMeasureFailAction
  , comCitrixXenclientXenmgrConfigGetOtaUpgradesAllowed
  , comCitrixXenclientXenmgrConfigSetOtaUpgradesAllowed
  , comCitrixXenclientXenmgrConfigGetPlatformCryptoKeyDirs
  , comCitrixXenclientXenmgrConfigSetPlatformCryptoKeyDirs
  , comCitrixXenclientXenmgrConfigGetPvmAutostartDelay
  , comCitrixXenclientXenmgrConfigSetPvmAutostartDelay
  , comCitrixXenclientXenmgrConfigGetSecondaryGpuPt
  , comCitrixXenclientXenmgrConfigGetSvmAutostartDelay
  , comCitrixXenclientXenmgrConfigSetSvmAutostartDelay
  , comCitrixXenclientXenmgrConfigGetUseNetworkingDomain
  , comCitrixXenclientXenmgrConfigGetVmCreationAllowed
  , comCitrixXenclientXenmgrConfigSetVmCreationAllowed
  , comCitrixXenclientXenmgrConfigGetVmDeletionAllowed
  , comCitrixXenclientXenmgrConfigSetVmDeletionAllowed
  , comCitrixXenclientXenmgrConfigGetXcDiagTimeout
  , comCitrixXenclientXenmgrConfigSetXcDiagTimeout
  , comCitrixXenclientXenmgrConfigUiGetIdleTimeThreshold
  , comCitrixXenclientXenmgrConfigUiSetIdleTimeThreshold
  , comCitrixXenclientXenmgrConfigUiGetLanguage
  , comCitrixXenclientXenmgrConfigUiSetLanguage
  , comCitrixXenclientXenmgrConfigUiGetModifyAdvancedVmSettings
  , comCitrixXenclientXenmgrConfigUiSetModifyAdvancedVmSettings
  , comCitrixXenclientXenmgrConfigUiGetModifyServices
  , comCitrixXenclientXenmgrConfigUiSetModifyServices
  , comCitrixXenclientXenmgrConfigUiGetModifySettings
  , comCitrixXenclientXenmgrConfigUiSetModifySettings
  , comCitrixXenclientXenmgrConfigUiGetModifyUsbSettings
  , comCitrixXenclientXenmgrConfigUiSetModifyUsbSettings
  , comCitrixXenclientXenmgrConfigUiGetPointerTrailTimeout
  , comCitrixXenclientXenmgrConfigUiSetPointerTrailTimeout
  , comCitrixXenclientXenmgrConfigUiGetShowMbootWarning
  , comCitrixXenclientXenmgrConfigUiSetShowMbootWarning
  , comCitrixXenclientXenmgrConfigUiGetShowMsgOnNoDisk
  , comCitrixXenclientXenmgrConfigUiSetShowMsgOnNoDisk
  , comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStart
  , comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStart
  , comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStartToolsWarning
  , comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStartToolsWarning
  , comCitrixXenclientXenmgrConfigUiGetShowToolsWarning
  , comCitrixXenclientXenmgrConfigUiSetShowToolsWarning
  , comCitrixXenclientXenmgrConfigUiGetSupportedLanguages
  , comCitrixXenclientXenmgrConfigUiGetSwitcherEnabled
  , comCitrixXenclientXenmgrConfigUiSetSwitcherEnabled
  , comCitrixXenclientXenmgrConfigUiGetSwitcherKeyboardFollowsMouse
  , comCitrixXenclientXenmgrConfigUiSetSwitcherKeyboardFollowsMouse
  , comCitrixXenclientXenmgrConfigUiGetSwitcherResistance
  , comCitrixXenclientXenmgrConfigUiSetSwitcherResistance
  , comCitrixXenclientXenmgrConfigUiGetSwitcherSelfSwitchEnabled
  , comCitrixXenclientXenmgrConfigUiSetSwitcherSelfSwitchEnabled
  , comCitrixXenclientXenmgrConfigUiGetSwitcherStatusReportEnabled
  , comCitrixXenclientXenmgrConfigUiSetSwitcherStatusReportEnabled
  , comCitrixXenclientXenmgrConfigUiGetViewType
  , comCitrixXenclientXenmgrConfigUiSetViewType
  , comCitrixXenclientXenmgrConfigUiGetWallpaper
  , comCitrixXenclientXenmgrConfigUiSetWallpaper
  , comCitrixXenclientXenmgrDiagCreateStatusReport
  , comCitrixXenclientXenmgrDiagGather
  , comCitrixXenclientXenmgrDiagSave
  , comCitrixXenclientXenmgrDiagStatusReportScreen
  , comCitrixXenclientXenmgrDiagTaasAgreeTerms
  , comCitrixXenclientXenmgrDiagTaasAuthenticateCredentials
  , comCitrixXenclientXenmgrDiagTaasUpload
  , comCitrixXenclientXenmgrGuestreqRequestAttention
  , comCitrixXenclientXenmgrTestingScriptDequeue
  , comCitrixXenclientXenmgrTestingScriptQueue
  , comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm
  , comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson
  , comCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm
) where

import Data.Maybe
import Data.String
import Data.Int
import Data.Word
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.ByteString as B
import Rpc.Core

mkcall :: String -> String -> String -> String -> [Variant] -> RpcCall
mkcall service objpath interface memb args =
  RpcCall (fromString service) (fromString objpath) (fromString interface) (fromString memb) args

eMANAGED_DISKTYPE_NONE :: String
eMANAGED_DISKTYPE_NONE = ""

eMANAGED_DISKTYPE_SYSTEM :: String
eMANAGED_DISKTYPE_SYSTEM = "system"

eMANAGED_DISKTYPE_APPLICATION :: String
eMANAGED_DISKTYPE_APPLICATION = "application"

eMANAGED_DISKTYPE_USER :: String
eMANAGED_DISKTYPE_USER = "user"

eS3_MODE_PV :: String
eS3_MODE_PV = "pv"

eS3_MODE_IGNORE :: String
eS3_MODE_IGNORE = "ignore"

eS3_MODE_RESTART :: String
eS3_MODE_RESTART = "restart"

eS3_MODE_SNAPSHOT :: String
eS3_MODE_SNAPSHOT = "snapshot"

eS4_MODE_PV :: String
eS4_MODE_PV = "pv"

eS4_MODE_IGNORE :: String
eS4_MODE_IGNORE = "ignore"

eS4_MODE_RESTART :: String
eS4_MODE_RESTART = "restart"

eS4_MODE_SNAPSHOT :: String
eS4_MODE_SNAPSHOT = "snapshot"

eVM_STATE_CREATING :: String
eVM_STATE_CREATING = "creating"

eVM_STATE_RUNNING :: String
eVM_STATE_RUNNING = "running"

eVM_STATE_STOPPING :: String
eVM_STATE_STOPPING = "stopping"

eVM_STATE_STOPPED :: String
eVM_STATE_STOPPED = "stopped"

eVM_STATE_LOCKED :: String
eVM_STATE_LOCKED = "locked"

eVM_STATE_REBOOTING :: String
eVM_STATE_REBOOTING = "rebooting"

eVM_STATE_REBOOTED :: String
eVM_STATE_REBOOTED = "rebooted"

eVM_STATE_SUSPENDING :: String
eVM_STATE_SUSPENDING = "suspending"

eVM_STATE_SUSPENDED :: String
eVM_STATE_SUSPENDED = "suspended"

eVM_STATE_RESTORING :: String
eVM_STATE_RESTORING = "restoring"

eVM_STATE_PAUSED :: String
eVM_STATE_PAUSED = "paused"

-- Interface com.citrix.xenclient.policy

comCitrixXenclientPolicyEnforce :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientPolicyEnforce service_ objPath_ uuid value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.policy" "enforce" [ (toVariant $ uuid), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.policy.enforce"

comCitrixXenclientPolicyRetrieve :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientPolicyRetrieve service_ objPath_ uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.policy" "retrieve" [ (toVariant $ uuid) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.policy.retrieve"

-- Interface com.citrix.xenclient.xenmgr

comCitrixXenclientXenmgrCreateVhd :: ((MonadRpc e m)) => String -> String -> Int32 -> m (String)
comCitrixXenclientXenmgrCreateVhd service_ objPath_ size_mb = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "create_vhd" [ (toVariant $ size_mb) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.create_vhd"

comCitrixXenclientXenmgrCreateVm :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrCreateVm service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "create_vm" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.create_vm"

comCitrixXenclientXenmgrCreateVmWithTemplate :: ((MonadRpc e m)) => String -> String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrCreateVmWithTemplate service_ objPath_ template = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "create_vm_with_template" [ (toVariant $ template) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.create_vm_with_template"

comCitrixXenclientXenmgrCreateVmWithTemplateAndJson :: ((MonadRpc e m)) => String -> String -> String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrCreateVmWithTemplateAndJson service_ objPath_ template json = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "create_vm_with_template_and_json" [ (toVariant $ template), (toVariant $ json) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.create_vm_with_template_and_json"

comCitrixXenclientXenmgrCreateVmWithTemplateAndUuid :: ((MonadRpc e m)) => String -> String -> String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrCreateVmWithTemplateAndUuid service_ objPath_ template uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "create_vm_with_template_and_uuid" [ (toVariant $ template), (toVariant $ uuid) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.create_vm_with_template_and_uuid"

comCitrixXenclientXenmgrCreateVmWithUi :: ((MonadRpc e m)) => String -> String -> String -> String -> String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrCreateVmWithUi service_ objPath_ template name description image_path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "create_vm_with_ui" [ (toVariant $ template), (toVariant $ name), (toVariant $ description), (toVariant $ image_path) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.create_vm_with_ui"

comCitrixXenclientXenmgrFindVmByDomid :: ((MonadRpc e m)) => String -> String -> Int32 -> m (ObjectPath)
comCitrixXenclientXenmgrFindVmByDomid service_ objPath_ domid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "find_vm_by_domid" [ (toVariant $ domid) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.find_vm_by_domid"

comCitrixXenclientXenmgrFindVmByUuid :: ((MonadRpc e m)) => String -> String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrFindVmByUuid service_ objPath_ uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "find_vm_by_uuid" [ (toVariant $ uuid) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.find_vm_by_uuid"

comCitrixXenclientXenmgrListChildServiceVmTemplates :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientXenmgrListChildServiceVmTemplates service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "list_child_service_vm_templates" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.list_child_service_vm_templates"

comCitrixXenclientXenmgrListDomids :: ((MonadRpc e m)) => String -> String -> m ([Int32])
comCitrixXenclientXenmgrListDomids service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "list_domids" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.list_domids"

comCitrixXenclientXenmgrListExtensionPacks :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrListExtensionPacks service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "list_extension_packs" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.list_extension_packs"

comCitrixXenclientXenmgrListTemplates :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientXenmgrListTemplates service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "list_templates" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.list_templates"

comCitrixXenclientXenmgrListUiTemplates :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrListUiTemplates service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "list_ui_templates" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.list_ui_templates"

comCitrixXenclientXenmgrListVms :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
comCitrixXenclientXenmgrListVms service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr" "list_vms" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.list_vms"

-- Interface com.citrix.xenclient.xenmgr.config

comCitrixXenclientXenmgrConfigGetArgoFirewall :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetArgoFirewall service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "argo-firewall" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetArgoFirewall :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetArgoFirewall service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "argo-firewall", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetArgoHostsFile :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetArgoHostsFile service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "argo-hosts-file" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetArgoHostsFile :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetArgoHostsFile service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "argo-hosts-file", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetAutolockCdDrives :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetAutolockCdDrives service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "autolock-cd-drives" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetAutolockCdDrives :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetAutolockCdDrives service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "autolock-cd-drives", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetAutostart :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetAutostart service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "autostart" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetAutostart :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetAutostart service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "autostart", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetBypassSha1sumChecks :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetBypassSha1sumChecks service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "bypass-sha1sum-checks" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigGetConfigurableSaveChangesAcrossReboots :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetConfigurableSaveChangesAcrossReboots service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "configurable-save-changes-across-reboots" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigGetConnectRemoteDesktopAllowed :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetConnectRemoteDesktopAllowed service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "connect-remote-desktop-allowed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetConnectRemoteDesktopAllowed :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetConnectRemoteDesktopAllowed service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "connect-remote-desktop-allowed", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetDom0MemTargetMib :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrConfigGetDom0MemTargetMib service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "dom0-mem-target-mib" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetDom0MemTargetMib :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrConfigSetDom0MemTargetMib service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "dom0-mem-target-mib", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetEnableArgoSsh :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetEnableArgoSsh service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "enable-argo-ssh" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetEnableArgoSsh :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetEnableArgoSsh service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "enable-argo-ssh", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetEnableDom0Networking :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetEnableDom0Networking service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "enable-dom0-networking" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetEnableDom0Networking :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetEnableDom0Networking service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "enable-dom0-networking", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetEnableSsh :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetEnableSsh service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "enable-ssh" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetEnableSsh :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetEnableSsh service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "enable-ssh", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetGuestOnlyNetworking :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetGuestOnlyNetworking service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "guest-only-networking" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigGetIsoPath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrConfigGetIsoPath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "iso-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetIsoPath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrConfigSetIsoPath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "iso-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetMeasureFailAction :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrConfigGetMeasureFailAction service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "measure-fail-action" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetMeasureFailAction :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrConfigSetMeasureFailAction service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "measure-fail-action", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetOtaUpgradesAllowed :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetOtaUpgradesAllowed service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "ota-upgrades-allowed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetOtaUpgradesAllowed :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetOtaUpgradesAllowed service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "ota-upgrades-allowed", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetPlatformCryptoKeyDirs :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrConfigGetPlatformCryptoKeyDirs service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "platform-crypto-key-dirs" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetPlatformCryptoKeyDirs :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrConfigSetPlatformCryptoKeyDirs service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "platform-crypto-key-dirs", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetPvmAutostartDelay :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrConfigGetPvmAutostartDelay service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "pvm-autostart-delay" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetPvmAutostartDelay :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrConfigSetPvmAutostartDelay service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "pvm-autostart-delay", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetSecondaryGpuPt :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetSecondaryGpuPt service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "secondary-gpu-pt" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigGetSvmAutostartDelay :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrConfigGetSvmAutostartDelay service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "svm-autostart-delay" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetSvmAutostartDelay :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrConfigSetSvmAutostartDelay service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "svm-autostart-delay", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetUseNetworkingDomain :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetUseNetworkingDomain service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "use-networking-domain" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigGetVmCreationAllowed :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetVmCreationAllowed service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "vm-creation-allowed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetVmCreationAllowed :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetVmCreationAllowed service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "vm-creation-allowed", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetVmDeletionAllowed :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigGetVmDeletionAllowed service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "vm-deletion-allowed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetVmDeletionAllowed :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigSetVmDeletionAllowed service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "vm-deletion-allowed", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigGetXcDiagTimeout :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrConfigGetXcDiagTimeout service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "xc-diag-timeout" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigSetXcDiagTimeout :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrConfigSetXcDiagTimeout service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config", toVariant "xc-diag-timeout", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

-- Interface com.citrix.xenclient.xenmgr.config.ui

comCitrixXenclientXenmgrConfigUiGetIdleTimeThreshold :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrConfigUiGetIdleTimeThreshold service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "idle-time-threshold" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetIdleTimeThreshold :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrConfigUiSetIdleTimeThreshold service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "idle-time-threshold", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetLanguage :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrConfigUiGetLanguage service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "language" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetLanguage :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrConfigUiSetLanguage service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "language", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetModifyAdvancedVmSettings :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetModifyAdvancedVmSettings service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-advanced-vm-settings" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetModifyAdvancedVmSettings :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetModifyAdvancedVmSettings service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-advanced-vm-settings", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetModifyServices :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetModifyServices service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-services" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetModifyServices :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetModifyServices service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-services", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetModifySettings :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetModifySettings service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-settings" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetModifySettings :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetModifySettings service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-settings", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetModifyUsbSettings :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetModifyUsbSettings service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-usb-settings" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetModifyUsbSettings :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetModifyUsbSettings service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "modify-usb-settings", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetPointerTrailTimeout :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrConfigUiGetPointerTrailTimeout service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "pointer-trail-timeout" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetPointerTrailTimeout :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrConfigUiSetPointerTrailTimeout service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "pointer-trail-timeout", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetShowMbootWarning :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetShowMbootWarning service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-mboot-warning" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetShowMbootWarning :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetShowMbootWarning service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-mboot-warning", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetShowMsgOnNoDisk :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetShowMsgOnNoDisk service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-msg-on-no-disk" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetShowMsgOnNoDisk :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetShowMsgOnNoDisk service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-msg-on-no-disk", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStart :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStart service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-msg-on-vm-start" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStart :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStart service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-msg-on-vm-start", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStartToolsWarning :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetShowMsgOnVmStartToolsWarning service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-msg-on-vm-start-tools-warning" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStartToolsWarning :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetShowMsgOnVmStartToolsWarning service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-msg-on-vm-start-tools-warning", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetShowToolsWarning :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetShowToolsWarning service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-tools-warning" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetShowToolsWarning :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetShowToolsWarning service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "show-tools-warning", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetSupportedLanguages :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientXenmgrConfigUiGetSupportedLanguages service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "supported-languages" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiGetSwitcherEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetSwitcherEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetSwitcherEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetSwitcherEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetSwitcherKeyboardFollowsMouse :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetSwitcherKeyboardFollowsMouse service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-keyboard-follows-mouse" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetSwitcherKeyboardFollowsMouse :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetSwitcherKeyboardFollowsMouse service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-keyboard-follows-mouse", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetSwitcherResistance :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrConfigUiGetSwitcherResistance service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-resistance" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetSwitcherResistance :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrConfigUiSetSwitcherResistance service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-resistance", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetSwitcherSelfSwitchEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetSwitcherSelfSwitchEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-self-switch-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetSwitcherSelfSwitchEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetSwitcherSelfSwitchEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-self-switch-enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetSwitcherStatusReportEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrConfigUiGetSwitcherStatusReportEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-status-report-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetSwitcherStatusReportEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrConfigUiSetSwitcherStatusReportEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "switcher-status-report-enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetViewType :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrConfigUiGetViewType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "view-type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetViewType :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrConfigUiSetViewType service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "view-type", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrConfigUiGetWallpaper :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrConfigUiGetWallpaper service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "wallpaper" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrConfigUiSetWallpaper :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrConfigUiSetWallpaper service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.config.ui", toVariant "wallpaper", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

-- Interface com.citrix.xenclient.xenmgr.diag

comCitrixXenclientXenmgrDiagCreateStatusReport :: ((MonadRpc e m)) => String -> String -> Bool -> Bool -> String -> String -> String -> String -> m (String)
comCitrixXenclientXenmgrDiagCreateStatusReport service_ objPath_ screenshots guest_info summary description repro_steps ticket = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.diag" "create_status_report" [ (toVariant $ screenshots), (toVariant $ guest_info), (toVariant $ summary), (toVariant $ description), (toVariant $ repro_steps), (toVariant $ ticket) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.diag.create_status_report"

comCitrixXenclientXenmgrDiagGather :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrDiagGather service_ objPath_ name data_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.diag" "gather" [ (toVariant $ name), (toVariant $ data_) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.diag.gather"

comCitrixXenclientXenmgrDiagSave :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientXenmgrDiagSave service_ objPath_ mode = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.diag" "save" [ (toVariant $ mode) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.diag.save"

comCitrixXenclientXenmgrDiagStatusReportScreen :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrDiagStatusReportScreen service_ objPath_ show = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.diag" "status_report_screen" [ (toVariant $ show) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.diag.status_report_screen"

comCitrixXenclientXenmgrDiagTaasAgreeTerms :: ((MonadRpc e m)) => String -> String -> String -> String -> String -> m (Bool)
comCitrixXenclientXenmgrDiagTaasAgreeTerms service_ objPath_ username password version = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.diag" "taas_agree_terms" [ (toVariant $ username), (toVariant $ password), (toVariant $ version) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.diag.taas_agree_terms"

comCitrixXenclientXenmgrDiagTaasAuthenticateCredentials :: ((MonadRpc e m)) => String -> String -> String -> String -> m ([String])
comCitrixXenclientXenmgrDiagTaasAuthenticateCredentials service_ objPath_ username password = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.diag" "taas_authenticate_credentials" [ (toVariant $ username), (toVariant $ password) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.diag.taas_authenticate_credentials"

comCitrixXenclientXenmgrDiagTaasUpload :: ((MonadRpc e m)) => String -> String -> String -> String -> String -> String -> m (Bool)
comCitrixXenclientXenmgrDiagTaasUpload service_ objPath_ username password caseid filename = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.diag" "taas_upload" [ (toVariant $ username), (toVariant $ password), (toVariant $ caseid), (toVariant $ filename) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.diag.taas_upload"

-- Interface com.citrix.xenclient.xenmgr.guestreq

comCitrixXenclientXenmgrGuestreqRequestAttention :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrGuestreqRequestAttention service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.guestreq" "request_attention" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.guestreq.request_attention"

-- Interface com.citrix.xenclient.xenmgr.testing

comCitrixXenclientXenmgrTestingScriptDequeue :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrTestingScriptDequeue service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.testing" "script_dequeue" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.testing.script_dequeue"

comCitrixXenclientXenmgrTestingScriptQueue :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrTestingScriptQueue service_ objPath_ script = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.testing" "script_queue" [ (toVariant $ script) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.testing.script_queue"

-- Interface com.citrix.xenclient.xenmgr.unrestricted

comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVm service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.unrestricted" "unrestricted_create_vm" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.unrestricted.unrestricted_create_vm"

comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson :: ((MonadRpc e m)) => String -> String -> String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrUnrestrictedUnrestrictedCreateVmWithTemplateAndJson service_ objPath_ template json = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.unrestricted" "unrestricted_create_vm_with_template_and_json" [ (toVariant $ template), (toVariant $ json) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.unrestricted.unrestricted_create_vm_with_template_and_json"

comCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrUnrestrictedUnrestrictedDeleteVm service_ objPath_ uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.unrestricted" "unrestricted_delete_vm" [ (toVariant $ uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.unrestricted.unrestricted_delete_vm"
