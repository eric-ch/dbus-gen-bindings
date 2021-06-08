{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.XenmgrHostServer (
  XenmgrHostServer (..)
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

-- XenmgrHostServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data XenmgrHostServer m = XenmgrHostServer {
  comCitrixXenclientXenmgrHostGetAmtCapable :: m (Bool)
  , comCitrixXenclientXenmgrHostGetAvailMem :: m (Int32)
  , comCitrixXenclientXenmgrHostGetBiosRevision :: m (String)
  , comCitrixXenclientXenmgrHostGetBuildInfo :: m ((Map.Map String String))
  , comCitrixXenclientXenmgrHostGetCapturePcm :: m (String)
  , comCitrixXenclientXenmgrHostSetCapturePcm :: String -> m ()
  , comCitrixXenclientXenmgrHostGetCpuCount :: m (Int32)
  , comCitrixXenclientXenmgrHostGetEth0Mac :: m (String)
  , comCitrixXenclientXenmgrHostGetEth0Model :: m (String)
  , comCitrixXenclientXenmgrHostGetFreeMem :: m (Int32)
  , comCitrixXenclientXenmgrHostGetFreeStorage :: m (Int32)
  , comCitrixXenclientXenmgrHostGetIsLicensed :: m (Bool)
  , comCitrixXenclientXenmgrHostGetLaptop :: m (Bool)
  , comCitrixXenclientXenmgrHostGetMeasuredBootEnabled :: m (Bool)
  , comCitrixXenclientXenmgrHostGetMeasuredBootSuccessful :: m (Bool)
  , comCitrixXenclientXenmgrHostGetModel :: m (String)
  , comCitrixXenclientXenmgrHostGetPhysicalCpuModel :: m (String)
  , comCitrixXenclientXenmgrHostGetPhysicalGpuModel :: m (String)
  , comCitrixXenclientXenmgrHostGetPlaybackPcm :: m (String)
  , comCitrixXenclientXenmgrHostSetPlaybackPcm :: String -> m ()
  , comCitrixXenclientXenmgrHostGetSafeGraphics :: m (Bool)
  , comCitrixXenclientXenmgrHostGetSerial :: m (String)
  , comCitrixXenclientXenmgrHostGetState :: m (String)
  , comCitrixXenclientXenmgrHostGetSystemAmtPt :: m (Bool)
  , comCitrixXenclientXenmgrHostGetTotalMem :: m (Int32)
  , comCitrixXenclientXenmgrHostGetTotalStorage :: m (Int32)
  , comCitrixXenclientXenmgrHostGetUiReady :: m (Bool)
  , comCitrixXenclientXenmgrHostSetUiReady :: Bool -> m ()
  , comCitrixXenclientXenmgrHostGetVendor :: m (String)
  , comCitrixXenclientXenmgrHostGetWirelessMac :: m (String)
  , comCitrixXenclientXenmgrHostGetWirelessModel :: m (String)
  , comCitrixXenclientXenmgrHostAssignCdDevice :: String -> Bool -> String -> m ()
  , comCitrixXenclientXenmgrHostConfigureGpuPlacement :: String -> Int32 -> m ()
  , comCitrixXenclientXenmgrHostEjectCdDevice :: String -> m ()
  , comCitrixXenclientXenmgrHostGetCdDeviceAssignment :: String -> m (Bool, String)
  , comCitrixXenclientXenmgrHostGetGpuPlacement :: String -> m (Int32)
  , comCitrixXenclientXenmgrHostGetSecondsFromEpoch :: m (Int32)
  , comCitrixXenclientXenmgrHostGetSoundCardControl :: String -> String -> m (String)
  , comCitrixXenclientXenmgrHostHibernate :: m ()
  , comCitrixXenclientXenmgrHostIsServiceRunning :: String -> m (Bool)
  , comCitrixXenclientXenmgrHostListCaptureDevices :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListCdDevices :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListDiskDevices :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListGpuDevices :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListIsos :: m ([String])
  , comCitrixXenclientXenmgrHostListPciDevices :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListPlaybackDevices :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListSoundCardControls :: String -> m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListSoundCards :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrHostListUiPlugins :: String -> m ([String])
  , comCitrixXenclientXenmgrHostReboot :: m ()
  , comCitrixXenclientXenmgrHostSetLicense :: String -> String -> String -> m ()
  , comCitrixXenclientXenmgrHostSetSoundCardControl :: String -> String -> String -> m ()
  , comCitrixXenclientXenmgrHostShutdown :: m ()
  , comCitrixXenclientXenmgrHostSleep :: m ()
  , comCitrixXenclientXenmgrHostSetDisplayhandlerGpu :: String -> m ()
  , comCitrixXenclientXenmgrHostGetDisplayhandlerGpu :: m (String)
  , comCitrixXenclientXenmgrHostListGpusForDisplayhandler :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrInstallerGetEula :: m (String)
  , comCitrixXenclientXenmgrInstallerGetInstallstate :: m ((Map.Map String String))
  , comCitrixXenclientXenmgrInstallerProgressInstallstate :: String -> m ()
  , comCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction :: m (String)
  , comCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction :: m (String)
  , comCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction :: String -> m ()
  , comCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction :: String -> m ()
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.xenmgr.host

stubComCitrixXenclientXenmgrHostAssignCdDevice :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostAssignCdDevice server_ args_ = do
  case args_ of
    [ devid, sticky, vm_uuid ] -> do
      () <- comCitrixXenclientXenmgrHostAssignCdDevice server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ devid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ sticky)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vm_uuid)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostConfigureGpuPlacement :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostConfigureGpuPlacement server_ args_ = do
  case args_ of
    [ id, slot ] -> do
      () <- comCitrixXenclientXenmgrHostConfigureGpuPlacement server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ id)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ slot)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostEjectCdDevice :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostEjectCdDevice server_ args_ = do
  case args_ of
    [ devid ] -> do
      () <- comCitrixXenclientXenmgrHostEjectCdDevice server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ devid)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostGetCdDeviceAssignment :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostGetCdDeviceAssignment server_ args_ = do
  case args_ of
    [ devid ] -> do
      (out_0, out_1) <- comCitrixXenclientXenmgrHostGetCdDeviceAssignment server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ devid)
      return [ (toVariant $ out_0), (toVariant $ out_1) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostGetGpuPlacement :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostGetGpuPlacement server_ args_ = do
  case args_ of
    [ id ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostGetGpuPlacement server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ id)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostGetSecondsFromEpoch :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostGetSecondsFromEpoch server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostGetSecondsFromEpoch server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostGetSoundCardControl :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostGetSoundCardControl server_ args_ = do
  case args_ of
    [ card, control ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostGetSoundCardControl server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ card)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ control)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostHibernate :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostHibernate server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrHostHibernate server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostIsServiceRunning :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostIsServiceRunning server_ args_ = do
  case args_ of
    [ service ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostIsServiceRunning server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ service)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListCaptureDevices :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListCaptureDevices server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListCaptureDevices server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListCdDevices :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListCdDevices server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListCdDevices server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListDiskDevices :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListDiskDevices server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListDiskDevices server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListGpuDevices :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListGpuDevices server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListGpuDevices server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListIsos :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListIsos server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListIsos server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListPciDevices :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListPciDevices server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListPciDevices server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListPlaybackDevices :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListPlaybackDevices server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListPlaybackDevices server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListSoundCardControls :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListSoundCardControls server_ args_ = do
  case args_ of
    [ card ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListSoundCardControls server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ card)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListSoundCards :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListSoundCards server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListSoundCards server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListUiPlugins :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListUiPlugins server_ args_ = do
  case args_ of
    [ subdir ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListUiPlugins server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ subdir)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostReboot :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostReboot server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrHostReboot server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostSetLicense :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostSetLicense server_ args_ = do
  case args_ of
    [ expiry_date, device_uuid, hash ] -> do
      () <- comCitrixXenclientXenmgrHostSetLicense server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ expiry_date)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ device_uuid)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ hash)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostSetSoundCardControl :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostSetSoundCardControl server_ args_ = do
  case args_ of
    [ card, control, value ] -> do
      () <- comCitrixXenclientXenmgrHostSetSoundCardControl server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ card)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ control)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostShutdown :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostShutdown server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrHostShutdown server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostSleep :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostSleep server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrHostSleep server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostSetDisplayhandlerGpu :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostSetDisplayhandlerGpu server_ args_ = do
  case args_ of
    [ gpu ] -> do
      () <- comCitrixXenclientXenmgrHostSetDisplayhandlerGpu server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ gpu)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostGetDisplayhandlerGpu :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostGetDisplayhandlerGpu server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostGetDisplayhandlerGpu server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrHostListGpusForDisplayhandler :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrHostListGpusForDisplayhandler server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrHostListGpusForDisplayhandler server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.installer

stubComCitrixXenclientXenmgrInstallerGetEula :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrInstallerGetEula server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrInstallerGetEula server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrInstallerGetInstallstate :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrInstallerGetInstallstate server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrInstallerGetInstallstate server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrInstallerProgressInstallstate :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrInstallerProgressInstallstate server_ args_ = do
  case args_ of
    [ action ] -> do
      () <- comCitrixXenclientXenmgrInstallerProgressInstallstate server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ action)
      return [ ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.powersettings

stubComCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction server_ args_ = do
  case args_ of
    [ action ] -> do
      () <- comCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ action)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction server_ args_ = do
  case args_ of
    [ action ] -> do
      () <- comCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ action)
      return [ ]
    _ -> error "invalid arguments"

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => XenmgrHostServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.xenmgr.host", "amt-capable") -> comCitrixXenclientXenmgrHostGetAmtCapable obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "avail-mem") -> comCitrixXenclientXenmgrHostGetAvailMem obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "bios-revision") -> comCitrixXenclientXenmgrHostGetBiosRevision obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "build-info") -> comCitrixXenclientXenmgrHostGetBuildInfo obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "capture-pcm") -> comCitrixXenclientXenmgrHostGetCapturePcm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "cpu-count") -> comCitrixXenclientXenmgrHostGetCpuCount obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "eth0-mac") -> comCitrixXenclientXenmgrHostGetEth0Mac obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "eth0-model") -> comCitrixXenclientXenmgrHostGetEth0Model obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "free-mem") -> comCitrixXenclientXenmgrHostGetFreeMem obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "free-storage") -> comCitrixXenclientXenmgrHostGetFreeStorage obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "is-licensed") -> comCitrixXenclientXenmgrHostGetIsLicensed obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "laptop") -> comCitrixXenclientXenmgrHostGetLaptop obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "measured-boot-enabled") -> comCitrixXenclientXenmgrHostGetMeasuredBootEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "measured-boot-successful") -> comCitrixXenclientXenmgrHostGetMeasuredBootSuccessful obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "model") -> comCitrixXenclientXenmgrHostGetModel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "physical-cpu-model") -> comCitrixXenclientXenmgrHostGetPhysicalCpuModel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "physical-gpu-model") -> comCitrixXenclientXenmgrHostGetPhysicalGpuModel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "playback-pcm") -> comCitrixXenclientXenmgrHostGetPlaybackPcm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "safe-graphics") -> comCitrixXenclientXenmgrHostGetSafeGraphics obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "serial") -> comCitrixXenclientXenmgrHostGetSerial obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "state") -> comCitrixXenclientXenmgrHostGetState obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "system-amt-pt") -> comCitrixXenclientXenmgrHostGetSystemAmtPt obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "total-mem") -> comCitrixXenclientXenmgrHostGetTotalMem obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "total-storage") -> comCitrixXenclientXenmgrHostGetTotalStorage obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "ui-ready") -> comCitrixXenclientXenmgrHostGetUiReady obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "vendor") -> comCitrixXenclientXenmgrHostGetVendor obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "wireless-mac") -> comCitrixXenclientXenmgrHostGetWirelessMac obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.host", "wireless-model") -> comCitrixXenclientXenmgrHostGetWirelessModel obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => XenmgrHostServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    ("com.citrix.xenclient.xenmgr.host", "capture-pcm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrHostSetCapturePcm obj v
    ("com.citrix.xenclient.xenmgr.host", "playback-pcm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrHostSetPlaybackPcm obj v
    ("com.citrix.xenclient.xenmgr.host", "ui-ready") -> let Just v = fromVariant value in comCitrixXenclientXenmgrHostSetUiReady obj v
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.xenmgr.host" -> rpcRunParallel [
          comCitrixXenclientXenmgrHostGetAmtCapable obj >>= \v -> return ("amt-capable", toVariant v)
        , comCitrixXenclientXenmgrHostGetAvailMem obj >>= \v -> return ("avail-mem", toVariant v)
        , comCitrixXenclientXenmgrHostGetBiosRevision obj >>= \v -> return ("bios-revision", toVariant v)
        , comCitrixXenclientXenmgrHostGetBuildInfo obj >>= \v -> return ("build-info", toVariant v)
        , comCitrixXenclientXenmgrHostGetCapturePcm obj >>= \v -> return ("capture-pcm", toVariant v)
        , comCitrixXenclientXenmgrHostGetCpuCount obj >>= \v -> return ("cpu-count", toVariant v)
        , comCitrixXenclientXenmgrHostGetEth0Mac obj >>= \v -> return ("eth0-mac", toVariant v)
        , comCitrixXenclientXenmgrHostGetEth0Model obj >>= \v -> return ("eth0-model", toVariant v)
        , comCitrixXenclientXenmgrHostGetFreeMem obj >>= \v -> return ("free-mem", toVariant v)
        , comCitrixXenclientXenmgrHostGetFreeStorage obj >>= \v -> return ("free-storage", toVariant v)
        , comCitrixXenclientXenmgrHostGetIsLicensed obj >>= \v -> return ("is-licensed", toVariant v)
        , comCitrixXenclientXenmgrHostGetLaptop obj >>= \v -> return ("laptop", toVariant v)
        , comCitrixXenclientXenmgrHostGetMeasuredBootEnabled obj >>= \v -> return ("measured-boot-enabled", toVariant v)
        , comCitrixXenclientXenmgrHostGetMeasuredBootSuccessful obj >>= \v -> return ("measured-boot-successful", toVariant v)
        , comCitrixXenclientXenmgrHostGetModel obj >>= \v -> return ("model", toVariant v)
        , comCitrixXenclientXenmgrHostGetPhysicalCpuModel obj >>= \v -> return ("physical-cpu-model", toVariant v)
        , comCitrixXenclientXenmgrHostGetPhysicalGpuModel obj >>= \v -> return ("physical-gpu-model", toVariant v)
        , comCitrixXenclientXenmgrHostGetPlaybackPcm obj >>= \v -> return ("playback-pcm", toVariant v)
        , comCitrixXenclientXenmgrHostGetSafeGraphics obj >>= \v -> return ("safe-graphics", toVariant v)
        , comCitrixXenclientXenmgrHostGetSerial obj >>= \v -> return ("serial", toVariant v)
        , comCitrixXenclientXenmgrHostGetState obj >>= \v -> return ("state", toVariant v)
        , comCitrixXenclientXenmgrHostGetSystemAmtPt obj >>= \v -> return ("system-amt-pt", toVariant v)
        , comCitrixXenclientXenmgrHostGetTotalMem obj >>= \v -> return ("total-mem", toVariant v)
        , comCitrixXenclientXenmgrHostGetTotalStorage obj >>= \v -> return ("total-storage", toVariant v)
        , comCitrixXenclientXenmgrHostGetUiReady obj >>= \v -> return ("ui-ready", toVariant v)
        , comCitrixXenclientXenmgrHostGetVendor obj >>= \v -> return ("vendor", toVariant v)
        , comCitrixXenclientXenmgrHostGetWirelessMac obj >>= \v -> return ("wireless-mac", toVariant v)
        , comCitrixXenclientXenmgrHostGetWirelessModel obj >>= \v -> return ("wireless-model", toVariant v)
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.installer" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.powersettings" -> rpcRunParallel [
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrHostServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.xenmgr.host" [
        rpcMethod "assign_cd_device" "devid:s,sticky:b,vm_uuid:s" "" (stubComCitrixXenclientXenmgrHostAssignCdDevice server_)
      , rpcMethod "configure_gpu_placement" "id:s,slot:i" "" (stubComCitrixXenclientXenmgrHostConfigureGpuPlacement server_)
      , rpcMethod "eject_cd_device" "devid:s" "" (stubComCitrixXenclientXenmgrHostEjectCdDevice server_)
      , rpcMethod "get_cd_device_assignment" "devid:s" "sticky:b,vm_uuid:s" (stubComCitrixXenclientXenmgrHostGetCdDeviceAssignment server_)
      , rpcMethod "get_gpu_placement" "id:s" "slot:i" (stubComCitrixXenclientXenmgrHostGetGpuPlacement server_)
      , rpcMethod "get_seconds_from_epoch" "" "seconds:i" (stubComCitrixXenclientXenmgrHostGetSecondsFromEpoch server_)
      , rpcMethod "get_sound_card_control" "card:s,control:s" "value:s" (stubComCitrixXenclientXenmgrHostGetSoundCardControl server_)
      , rpcMethod "hibernate" "" "" (stubComCitrixXenclientXenmgrHostHibernate server_)
      , rpcMethod "is_service_running" "service:s" "running:b" (stubComCitrixXenclientXenmgrHostIsServiceRunning server_)
      , rpcMethod "list_capture_devices" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListCaptureDevices server_)
      , rpcMethod "list_cd_devices" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListCdDevices server_)
      , rpcMethod "list_disk_devices" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListDiskDevices server_)
      , rpcMethod "list_gpu_devices" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListGpuDevices server_)
      , rpcMethod "list_isos" "" ":as" (stubComCitrixXenclientXenmgrHostListIsos server_)
      , rpcMethod "list_pci_devices" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListPciDevices server_)
      , rpcMethod "list_playback_devices" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListPlaybackDevices server_)
      , rpcMethod "list_sound_card_controls" "card:s" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListSoundCardControls server_)
      , rpcMethod "list_sound_cards" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListSoundCards server_)
      , rpcMethod "list_ui_plugins" "subdir:s" "list:as" (stubComCitrixXenclientXenmgrHostListUiPlugins server_)
      , rpcMethod "reboot" "" "" (stubComCitrixXenclientXenmgrHostReboot server_)
      , rpcMethod "set_license" "expiry_date:s,device_uuid:s,hash:s" "" (stubComCitrixXenclientXenmgrHostSetLicense server_)
      , rpcMethod "set_sound_card_control" "card:s,control:s,value:s" "" (stubComCitrixXenclientXenmgrHostSetSoundCardControl server_)
      , rpcMethod "shutdown" "" "" (stubComCitrixXenclientXenmgrHostShutdown server_)
      , rpcMethod "sleep" "" "" (stubComCitrixXenclientXenmgrHostSleep server_)
      , rpcMethod "set_displayhandler_gpu" "gpu:s" "" (stubComCitrixXenclientXenmgrHostSetDisplayhandlerGpu server_)
      , rpcMethod "get_displayhandler_gpu" "" "gpu:s" (stubComCitrixXenclientXenmgrHostGetDisplayhandlerGpu server_)
      , rpcMethod "list_gpus_for_displayhandler" "" ":aa{ss}" (stubComCitrixXenclientXenmgrHostListGpusForDisplayhandler server_)
    ] [
        rpcProperty "amt-capable" "b" Read
      , rpcProperty "avail-mem" "i" Read
      , rpcProperty "bios-revision" "s" Read
      , rpcProperty "build-info" "a{ss}" Read
      , rpcProperty "capture-pcm" "s" ReadWrite
      , rpcProperty "cpu-count" "i" Read
      , rpcProperty "eth0-mac" "s" Read
      , rpcProperty "eth0-model" "s" Read
      , rpcProperty "free-mem" "i" Read
      , rpcProperty "free-storage" "i" Read
      , rpcProperty "is-licensed" "b" Read
      , rpcProperty "laptop" "b" Read
      , rpcProperty "measured-boot-enabled" "b" Read
      , rpcProperty "measured-boot-successful" "b" Read
      , rpcProperty "model" "s" Read
      , rpcProperty "physical-cpu-model" "s" Read
      , rpcProperty "physical-gpu-model" "s" Read
      , rpcProperty "playback-pcm" "s" ReadWrite
      , rpcProperty "safe-graphics" "b" Read
      , rpcProperty "serial" "s" Read
      , rpcProperty "state" "s" Read
      , rpcProperty "system-amt-pt" "b" Read
      , rpcProperty "total-mem" "i" Read
      , rpcProperty "total-storage" "i" Read
      , rpcProperty "ui-ready" "b" ReadWrite
      , rpcProperty "vendor" "s" Read
      , rpcProperty "wireless-mac" "s" Read
      , rpcProperty "wireless-model" "s" Read
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.installer" [
        rpcMethod "get_eula" "" "eula:s" (stubComCitrixXenclientXenmgrInstallerGetEula server_)
      , rpcMethod "get_installstate" "" "state:a{ss}" (stubComCitrixXenclientXenmgrInstallerGetInstallstate server_)
      , rpcMethod "progress_installstate" "action:s" "" (stubComCitrixXenclientXenmgrInstallerProgressInstallstate server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.powersettings" [
        rpcMethod "get_ac_lid_close_action" "" ":s" (stubComCitrixXenclientXenmgrPowersettingsGetAcLidCloseAction server_)
      , rpcMethod "get_battery_lid_close_action" "" ":s" (stubComCitrixXenclientXenmgrPowersettingsGetBatteryLidCloseAction server_)
      , rpcMethod "set_ac_lid_close_action" "action:s" "" (stubComCitrixXenclientXenmgrPowersettingsSetAcLidCloseAction server_)
      , rpcMethod "set_battery_lid_close_action" "action:s" "" (stubComCitrixXenclientXenmgrPowersettingsSetBatteryLidCloseAction server_)
    ] [
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
