module Rpc.Autogen.XenmgrHostClient (
  comCitrixXenclientXenmgrHostAssignCdDevice
  , comCitrixXenclientXenmgrHostConfigureGpuPlacement
  , comCitrixXenclientXenmgrHostEjectCdDevice
  , comCitrixXenclientXenmgrHostGetCdDeviceAssignment
  , comCitrixXenclientXenmgrHostGetGpuPlacement
  , comCitrixXenclientXenmgrHostGetSecondsFromEpoch
  , comCitrixXenclientXenmgrHostGetSoundCardControl
  , comCitrixXenclientXenmgrHostHibernate
  , comCitrixXenclientXenmgrHostIsServiceRunning
  , comCitrixXenclientXenmgrHostListCaptureDevices
  , comCitrixXenclientXenmgrHostListCdDevices
  , comCitrixXenclientXenmgrHostListDiskDevices
  , comCitrixXenclientXenmgrHostListGpuDevices
  , comCitrixXenclientXenmgrHostListIsos
  , comCitrixXenclientXenmgrHostListPciDevices
  , comCitrixXenclientXenmgrHostListPlaybackDevices
  , comCitrixXenclientXenmgrHostListSoundCardControls
  , comCitrixXenclientXenmgrHostListSoundCards
  , comCitrixXenclientXenmgrHostListUiPlugins
  , comCitrixXenclientXenmgrHostReboot
  , comCitrixXenclientXenmgrHostSetLicense
  , comCitrixXenclientXenmgrHostSetSoundCardControl
  , comCitrixXenclientXenmgrHostShutdown
  , comCitrixXenclientXenmgrHostSleep
  , comCitrixXenclientXenmgrHostSetDisplayhandlerGpu
  , comCitrixXenclientXenmgrHostGetDisplayhandlerGpu
  , comCitrixXenclientXenmgrHostListGpusForDisplayhandler
  , comCitrixXenclientXenmgrHostGetAmtCapable
  , comCitrixXenclientXenmgrHostGetAvailMem
  , comCitrixXenclientXenmgrHostGetBiosRevision
  , comCitrixXenclientXenmgrHostGetBuildInfo
  , comCitrixXenclientXenmgrHostGetCapturePcm
  , comCitrixXenclientXenmgrHostSetCapturePcm
  , comCitrixXenclientXenmgrHostGetCpuCount
  , comCitrixXenclientXenmgrHostGetEth0Mac
  , comCitrixXenclientXenmgrHostGetEth0Model
  , comCitrixXenclientXenmgrHostGetFreeMem
  , comCitrixXenclientXenmgrHostGetFreeStorage
  , comCitrixXenclientXenmgrHostGetIsLicensed
  , comCitrixXenclientXenmgrHostGetLaptop
  , comCitrixXenclientXenmgrHostGetMeasuredBootEnabled
  , comCitrixXenclientXenmgrHostGetMeasuredBootSuccessful
  , comCitrixXenclientXenmgrHostGetModel
  , comCitrixXenclientXenmgrHostGetPhysicalCpuModel
  , comCitrixXenclientXenmgrHostGetPhysicalGpuModel
  , comCitrixXenclientXenmgrHostGetPlaybackPcm
  , comCitrixXenclientXenmgrHostSetPlaybackPcm
  , comCitrixXenclientXenmgrHostGetSafeGraphics
  , comCitrixXenclientXenmgrHostGetSerial
  , comCitrixXenclientXenmgrHostGetState
  , comCitrixXenclientXenmgrHostGetSystemAmtPt
  , comCitrixXenclientXenmgrHostGetTotalMem
  , comCitrixXenclientXenmgrHostGetTotalStorage
  , comCitrixXenclientXenmgrHostGetUiReady
  , comCitrixXenclientXenmgrHostSetUiReady
  , comCitrixXenclientXenmgrHostGetVendor
  , comCitrixXenclientXenmgrHostGetWirelessMac
  , comCitrixXenclientXenmgrHostGetWirelessModel
  , comCitrixXenclientXenmgrInstallerGetEula
  , comCitrixXenclientXenmgrInstallerGetInstallstate
  , comCitrixXenclientXenmgrInstallerProgressInstallstate
  , comCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction
  , comCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction
  , comCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction
  , comCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction
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

-- Interface com.citrix.xenclient.xenmgr.host

comCitrixXenclientXenmgrHostAssignCdDevice :: ((MonadRpc e m)) => String -> String -> String -> Bool -> String -> m ()
comCitrixXenclientXenmgrHostAssignCdDevice service_ objPath_ devid sticky vm_uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "assign_cd_device" [ (toVariant $ devid), (toVariant $ sticky), (toVariant $ vm_uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.assign_cd_device"

comCitrixXenclientXenmgrHostConfigureGpuPlacement :: ((MonadRpc e m)) => String -> String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrHostConfigureGpuPlacement service_ objPath_ id slot = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "configure_gpu_placement" [ (toVariant $ id), (toVariant $ slot) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.configure_gpu_placement"

comCitrixXenclientXenmgrHostEjectCdDevice :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrHostEjectCdDevice service_ objPath_ devid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "eject_cd_device" [ (toVariant $ devid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.eject_cd_device"

comCitrixXenclientXenmgrHostGetCdDeviceAssignment :: ((MonadRpc e m)) => String -> String -> String -> m (Bool, String)
comCitrixXenclientXenmgrHostGetCdDeviceAssignment service_ objPath_ devid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "get_cd_device_assignment" [ (toVariant $ devid) ])
  case variants of
    [ out_0, out_1 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.get_cd_device_assignment"

comCitrixXenclientXenmgrHostGetGpuPlacement :: ((MonadRpc e m)) => String -> String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetGpuPlacement service_ objPath_ id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "get_gpu_placement" [ (toVariant $ id) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.get_gpu_placement"

comCitrixXenclientXenmgrHostGetSecondsFromEpoch :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetSecondsFromEpoch service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "get_seconds_from_epoch" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.get_seconds_from_epoch"

comCitrixXenclientXenmgrHostGetSoundCardControl :: ((MonadRpc e m)) => String -> String -> String -> String -> m (String)
comCitrixXenclientXenmgrHostGetSoundCardControl service_ objPath_ card control = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "get_sound_card_control" [ (toVariant $ card), (toVariant $ control) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.get_sound_card_control"

comCitrixXenclientXenmgrHostHibernate :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrHostHibernate service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "hibernate" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.hibernate"

comCitrixXenclientXenmgrHostIsServiceRunning :: ((MonadRpc e m)) => String -> String -> String -> m (Bool)
comCitrixXenclientXenmgrHostIsServiceRunning service_ objPath_ service = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "is_service_running" [ (toVariant $ service) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.is_service_running"

comCitrixXenclientXenmgrHostListCaptureDevices :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListCaptureDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_capture_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_capture_devices"

comCitrixXenclientXenmgrHostListCdDevices :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListCdDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_cd_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_cd_devices"

comCitrixXenclientXenmgrHostListDiskDevices :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListDiskDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_disk_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_disk_devices"

comCitrixXenclientXenmgrHostListGpuDevices :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListGpuDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_gpu_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_gpu_devices"

comCitrixXenclientXenmgrHostListIsos :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientXenmgrHostListIsos service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_isos" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_isos"

comCitrixXenclientXenmgrHostListPciDevices :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListPciDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_pci_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_pci_devices"

comCitrixXenclientXenmgrHostListPlaybackDevices :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListPlaybackDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_playback_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_playback_devices"

comCitrixXenclientXenmgrHostListSoundCardControls :: ((MonadRpc e m)) => String -> String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListSoundCardControls service_ objPath_ card = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_sound_card_controls" [ (toVariant $ card) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_sound_card_controls"

comCitrixXenclientXenmgrHostListSoundCards :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListSoundCards service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_sound_cards" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_sound_cards"

comCitrixXenclientXenmgrHostListUiPlugins :: ((MonadRpc e m)) => String -> String -> String -> m ([String])
comCitrixXenclientXenmgrHostListUiPlugins service_ objPath_ subdir = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_ui_plugins" [ (toVariant $ subdir) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_ui_plugins"

comCitrixXenclientXenmgrHostReboot :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrHostReboot service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "reboot" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.reboot"

comCitrixXenclientXenmgrHostSetLicense :: ((MonadRpc e m)) => String -> String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrHostSetLicense service_ objPath_ expiry_date device_uuid hash = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "set_license" [ (toVariant $ expiry_date), (toVariant $ device_uuid), (toVariant $ hash) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.set_license"

comCitrixXenclientXenmgrHostSetSoundCardControl :: ((MonadRpc e m)) => String -> String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrHostSetSoundCardControl service_ objPath_ card control value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "set_sound_card_control" [ (toVariant $ card), (toVariant $ control), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.set_sound_card_control"

comCitrixXenclientXenmgrHostShutdown :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrHostShutdown service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "shutdown" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.shutdown"

comCitrixXenclientXenmgrHostSleep :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrHostSleep service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "sleep" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.sleep"

comCitrixXenclientXenmgrHostSetDisplayhandlerGpu :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrHostSetDisplayhandlerGpu service_ objPath_ gpu = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "set_displayhandler_gpu" [ (toVariant $ gpu) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.set_displayhandler_gpu"

comCitrixXenclientXenmgrHostGetDisplayhandlerGpu :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetDisplayhandlerGpu service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "get_displayhandler_gpu" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.get_displayhandler_gpu"

comCitrixXenclientXenmgrHostListGpusForDisplayhandler :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrHostListGpusForDisplayhandler service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.host" "list_gpus_for_displayhandler" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.host.list_gpus_for_displayhandler"

comCitrixXenclientXenmgrHostGetAmtCapable :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetAmtCapable service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "amt-capable" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetAvailMem :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetAvailMem service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "avail-mem" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetBiosRevision :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetBiosRevision service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "bios-revision" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetBuildInfo :: ((MonadRpc e m)) => String -> String -> m ((Map.Map String String))
comCitrixXenclientXenmgrHostGetBuildInfo service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "build-info" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetCapturePcm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetCapturePcm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "capture-pcm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostSetCapturePcm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrHostSetCapturePcm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "capture-pcm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrHostGetCpuCount :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetCpuCount service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "cpu-count" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetEth0Mac :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetEth0Mac service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "eth0-mac" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetEth0Model :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetEth0Model service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "eth0-model" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetFreeMem :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetFreeMem service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "free-mem" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetFreeStorage :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetFreeStorage service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "free-storage" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetIsLicensed :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetIsLicensed service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "is-licensed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetLaptop :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetLaptop service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "laptop" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetMeasuredBootEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetMeasuredBootEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "measured-boot-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetMeasuredBootSuccessful :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetMeasuredBootSuccessful service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "measured-boot-successful" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetModel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetModel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "model" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetPhysicalCpuModel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetPhysicalCpuModel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "physical-cpu-model" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetPhysicalGpuModel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetPhysicalGpuModel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "physical-gpu-model" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetPlaybackPcm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetPlaybackPcm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "playback-pcm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostSetPlaybackPcm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrHostSetPlaybackPcm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "playback-pcm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrHostGetSafeGraphics :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetSafeGraphics service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "safe-graphics" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetSerial :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetSerial service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "serial" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetState :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetSystemAmtPt :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetSystemAmtPt service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "system-amt-pt" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetTotalMem :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetTotalMem service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "total-mem" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetTotalStorage :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrHostGetTotalStorage service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "total-storage" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetUiReady :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrHostGetUiReady service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "ui-ready" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostSetUiReady :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrHostSetUiReady service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "ui-ready", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrHostGetVendor :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetVendor service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "vendor" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetWirelessMac :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetWirelessMac service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "wireless-mac" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrHostGetWirelessModel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrHostGetWirelessModel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.host", toVariant "wireless-model" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

-- Interface com.citrix.xenclient.xenmgr.installer

comCitrixXenclientXenmgrInstallerGetEula :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrInstallerGetEula service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.installer" "get_eula" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.installer.get_eula"

comCitrixXenclientXenmgrInstallerGetInstallstate :: ((MonadRpc e m)) => String -> String -> m ((Map.Map String String))
comCitrixXenclientXenmgrInstallerGetInstallstate service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.installer" "get_installstate" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.installer.get_installstate"

comCitrixXenclientXenmgrInstallerProgressInstallstate :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrInstallerProgressInstallstate service_ objPath_ action = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.installer" "progress_installstate" [ (toVariant $ action) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.installer.progress_installstate"

-- Interface com.citrix.xenclient.xenmgr.powersettings

comCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.powersettings" "get_ac_lid_close_action" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.powersettings.get_ac_lid_close_action"

comCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.powersettings" "get_battery_lid_close_action" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.powersettings.get_battery_lid_close_action"

comCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction service_ objPath_ action = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.powersettings" "set_ac_lid_close_action" [ (toVariant $ action) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.powersettings.set_ac_lid_close_action"

comCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction service_ objPath_ action = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.powersettings" "set_battery_lid_close_action" [ (toVariant $ action) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.powersettings.set_battery_lid_close_action"
