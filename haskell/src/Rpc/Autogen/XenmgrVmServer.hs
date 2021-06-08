{-# LANGUAGE OverloadedStrings #-}
module Rpc.Autogen.XenmgrVmServer (
  XenmgrVmServer (..)
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

-- XenmgrVmServer data type is an agregate of methods which have to be implemented by the user of this wrapper.
data XenmgrVmServer m = XenmgrVmServer {
  comCitrixXenclientXenmgrVmGetAcpi :: m (Bool)
  , comCitrixXenclientXenmgrVmSetAcpi :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetAcpiState :: m (Int32)
  , comCitrixXenclientXenmgrVmGetAcpiTable :: m (Bool)
  , comCitrixXenclientXenmgrVmSetAcpiTable :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetAmtPt :: m (Bool)
  , comCitrixXenclientXenmgrVmSetAmtPt :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetApic :: m (Bool)
  , comCitrixXenclientXenmgrVmSetApic :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetArgo :: m (Bool)
  , comCitrixXenclientXenmgrVmSetArgo :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetAutoS3Wake :: m (Bool)
  , comCitrixXenclientXenmgrVmSetAutoS3Wake :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetAutostartPending :: m (Bool)
  , comCitrixXenclientXenmgrVmGetBios :: m (String)
  , comCitrixXenclientXenmgrVmSetBios :: String -> m ()
  , comCitrixXenclientXenmgrVmGetBoot :: m (String)
  , comCitrixXenclientXenmgrVmSetBoot :: String -> m ()
  , comCitrixXenclientXenmgrVmGetBootSentinel :: m (String)
  , comCitrixXenclientXenmgrVmSetBootSentinel :: String -> m ()
  , comCitrixXenclientXenmgrVmGetCd :: m (String)
  , comCitrixXenclientXenmgrVmSetCd :: String -> m ()
  , comCitrixXenclientXenmgrVmGetCmdLine :: m (String)
  , comCitrixXenclientXenmgrVmSetCmdLine :: String -> m ()
  , comCitrixXenclientXenmgrVmGetControlPlatformPowerState :: m (Bool)
  , comCitrixXenclientXenmgrVmSetControlPlatformPowerState :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetCoresPerSocket :: m (Int32)
  , comCitrixXenclientXenmgrVmSetCoresPerSocket :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetCpuid :: m (String)
  , comCitrixXenclientXenmgrVmSetCpuid :: String -> m ()
  , comCitrixXenclientXenmgrVmGetCryptoKeyDirs :: m (String)
  , comCitrixXenclientXenmgrVmSetCryptoKeyDirs :: String -> m ()
  , comCitrixXenclientXenmgrVmGetCryptoUser :: m (String)
  , comCitrixXenclientXenmgrVmSetCryptoUser :: String -> m ()
  , comCitrixXenclientXenmgrVmGetDependencies :: m ([ObjectPath])
  , comCitrixXenclientXenmgrVmGetDescription :: m (String)
  , comCitrixXenclientXenmgrVmSetDescription :: String -> m ()
  , comCitrixXenclientXenmgrVmGetDisplay :: m (String)
  , comCitrixXenclientXenmgrVmSetDisplay :: String -> m ()
  , comCitrixXenclientXenmgrVmGetDomid :: m (Int32)
  , comCitrixXenclientXenmgrVmGetDomstoreReadAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmSetDomstoreReadAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetDomstoreWriteAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmSetDomstoreWriteAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetDownloadProgress :: m (Int32)
  , comCitrixXenclientXenmgrVmSetDownloadProgress :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetExtraHvm :: m (String)
  , comCitrixXenclientXenmgrVmSetExtraHvm :: String -> m ()
  , comCitrixXenclientXenmgrVmGetExtraXenvm :: m (String)
  , comCitrixXenclientXenmgrVmSetExtraXenvm :: String -> m ()
  , comCitrixXenclientXenmgrVmGetFlaskLabel :: m (String)
  , comCitrixXenclientXenmgrVmSetFlaskLabel :: String -> m ()
  , comCitrixXenclientXenmgrVmGetGpu :: m (String)
  , comCitrixXenclientXenmgrVmSetGpu :: String -> m ()
  , comCitrixXenclientXenmgrVmGetGreedyPcibackBind :: m (Bool)
  , comCitrixXenclientXenmgrVmSetGreedyPcibackBind :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetHap :: m (Bool)
  , comCitrixXenclientXenmgrVmSetHap :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetHdtype :: m (String)
  , comCitrixXenclientXenmgrVmSetHdtype :: String -> m ()
  , comCitrixXenclientXenmgrVmGetHibernated :: m (Bool)
  , comCitrixXenclientXenmgrVmGetHiddenInSwitcher :: m (Bool)
  , comCitrixXenclientXenmgrVmSetHiddenInSwitcher :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetHiddenInUi :: m (Bool)
  , comCitrixXenclientXenmgrVmSetHiddenInUi :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetHpet :: m (Bool)
  , comCitrixXenclientXenmgrVmSetHpet :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetIcbinnPath :: m (String)
  , comCitrixXenclientXenmgrVmSetIcbinnPath :: String -> m ()
  , comCitrixXenclientXenmgrVmGetImagePath :: m (String)
  , comCitrixXenclientXenmgrVmSetImagePath :: String -> m ()
  , comCitrixXenclientXenmgrVmGetInitFlaskLabel :: m (String)
  , comCitrixXenclientXenmgrVmSetInitFlaskLabel :: String -> m ()
  , comCitrixXenclientXenmgrVmGetInitrd :: m (String)
  , comCitrixXenclientXenmgrVmSetInitrd :: String -> m ()
  , comCitrixXenclientXenmgrVmGetInitrdExtract :: m (String)
  , comCitrixXenclientXenmgrVmSetInitrdExtract :: String -> m ()
  , comCitrixXenclientXenmgrVmGetKeepAlive :: m (Bool)
  , comCitrixXenclientXenmgrVmSetKeepAlive :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetKernel :: m (String)
  , comCitrixXenclientXenmgrVmSetKernel :: String -> m ()
  , comCitrixXenclientXenmgrVmGetKernelExtract :: m (String)
  , comCitrixXenclientXenmgrVmSetKernelExtract :: String -> m ()
  , comCitrixXenclientXenmgrVmGetDisplayHandlerStrict :: m (Bool)
  , comCitrixXenclientXenmgrVmSetDisplayHandlerStrict :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetImagePathVg :: m (String)
  , comCitrixXenclientXenmgrVmSetImagePathVg :: String -> m ()
  , comCitrixXenclientXenmgrVmGetLongFormVg :: m (String)
  , comCitrixXenclientXenmgrVmSetLongFormVg :: String -> m ()
  , comCitrixXenclientXenmgrVmGetShortFormVg :: m (String)
  , comCitrixXenclientXenmgrVmSetShortFormVg :: String -> m ()
  , comCitrixXenclientXenmgrVmGetTextColorVg :: m (String)
  , comCitrixXenclientXenmgrVmSetTextColorVg :: String -> m ()
  , comCitrixXenclientXenmgrVmGetBorderWidthVg :: m (Int32)
  , comCitrixXenclientXenmgrVmSetBorderWidthVg :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetBorderHeightVg :: m (Int32)
  , comCitrixXenclientXenmgrVmSetBorderHeightVg :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetVglassEnabled :: m (Bool)
  , comCitrixXenclientXenmgrVmSetVglassEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetMosaicMode :: m (Int32)
  , comCitrixXenclientXenmgrVmSetMosaicMode :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetWindowedX :: m (Int32)
  , comCitrixXenclientXenmgrVmSetWindowedX :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetWindowedY :: m (Int32)
  , comCitrixXenclientXenmgrVmSetWindowedY :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetWindowedW :: m (Int32)
  , comCitrixXenclientXenmgrVmSetWindowedW :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetWindowedH :: m (Int32)
  , comCitrixXenclientXenmgrVmSetWindowedH :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetPrimaryDomainColor :: m (String)
  , comCitrixXenclientXenmgrVmSetPrimaryDomainColor :: String -> m ()
  , comCitrixXenclientXenmgrVmGetSecondaryDomainColor :: m (String)
  , comCitrixXenclientXenmgrVmSetSecondaryDomainColor :: String -> m ()
  , comCitrixXenclientXenmgrVmGetMosaicVmEnabled :: m (Bool)
  , comCitrixXenclientXenmgrVmSetMosaicVmEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetMac :: m (String)
  , comCitrixXenclientXenmgrVmGetMeasured :: m (Bool)
  , comCitrixXenclientXenmgrVmGetMemory :: m (Int32)
  , comCitrixXenclientXenmgrVmSetMemory :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetMemoryMin :: m (Int32)
  , comCitrixXenclientXenmgrVmSetMemoryMin :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetMemoryStaticMax :: m (Int32)
  , comCitrixXenclientXenmgrVmSetMemoryStaticMax :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetMemoryTarget :: m (Int32)
  , comCitrixXenclientXenmgrVmGetName :: m (String)
  , comCitrixXenclientXenmgrVmSetName :: String -> m ()
  , comCitrixXenclientXenmgrVmGetNativeExperience :: m (Bool)
  , comCitrixXenclientXenmgrVmSetNativeExperience :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetNestedhvm :: m (Bool)
  , comCitrixXenclientXenmgrVmSetNestedhvm :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetNotify :: m (String)
  , comCitrixXenclientXenmgrVmSetNotify :: String -> m ()
  , comCitrixXenclientXenmgrVmGetNx :: m (Bool)
  , comCitrixXenclientXenmgrVmSetNx :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetOemAcpiFeatures :: m (Bool)
  , comCitrixXenclientXenmgrVmSetOemAcpiFeatures :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetOs :: m (String)
  , comCitrixXenclientXenmgrVmSetOs :: String -> m ()
  , comCitrixXenclientXenmgrVmGetOvfTransportIso :: m (Bool)
  , comCitrixXenclientXenmgrVmSetOvfTransportIso :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPae :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPae :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPassthroughIo :: m (String)
  , comCitrixXenclientXenmgrVmSetPassthroughIo :: String -> m ()
  , comCitrixXenclientXenmgrVmGetPassthroughMmio :: m (String)
  , comCitrixXenclientXenmgrVmSetPassthroughMmio :: String -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyAudioAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyAudioAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyAudioRecording :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyAudioRecording :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyCdAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyCdAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyCdRecording :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyCdRecording :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyModifyVmSettings :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyModifyVmSettings :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyPrintScreen :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyPrintScreen :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyWiredNetworking :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyWiredNetworking :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPolicyWirelessNetworking :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPolicyWirelessNetworking :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPorticaEnabled :: m (Int32)
  , comCitrixXenclientXenmgrVmGetPorticaInstalled :: m (Bool)
  , comCitrixXenclientXenmgrVmGetPreserveOnReboot :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPreserveOnReboot :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPrivateSpace :: m (Int32)
  , comCitrixXenclientXenmgrVmGetProvidesDefaultNetworkBackend :: m (Bool)
  , comCitrixXenclientXenmgrVmSetProvidesDefaultNetworkBackend :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetProvidesGraphicsFallback :: m (Bool)
  , comCitrixXenclientXenmgrVmSetProvidesGraphicsFallback :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetProvidesNetworkBackend :: m (Bool)
  , comCitrixXenclientXenmgrVmSetProvidesNetworkBackend :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPvAddons :: m (Bool)
  , comCitrixXenclientXenmgrVmSetPvAddons :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetPvAddonsVersion :: m (String)
  , comCitrixXenclientXenmgrVmSetPvAddonsVersion :: String -> m ()
  , comCitrixXenclientXenmgrVmGetQemuDmPath :: m (String)
  , comCitrixXenclientXenmgrVmSetQemuDmPath :: String -> m ()
  , comCitrixXenclientXenmgrVmGetQemuDmTimeout :: m (Int32)
  , comCitrixXenclientXenmgrVmSetQemuDmTimeout :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetReady :: m (Bool)
  , comCitrixXenclientXenmgrVmSetReady :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetRealm :: m (String)
  , comCitrixXenclientXenmgrVmSetRealm :: String -> m ()
  , comCitrixXenclientXenmgrVmGetRestrictDisplayDepth :: m (Bool)
  , comCitrixXenclientXenmgrVmSetRestrictDisplayDepth :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetRestrictDisplayRes :: m (Bool)
  , comCitrixXenclientXenmgrVmSetRestrictDisplayRes :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetRunInsteadofStart :: m (String)
  , comCitrixXenclientXenmgrVmSetRunInsteadofStart :: String -> m ()
  , comCitrixXenclientXenmgrVmGetRunOnAcpiStateChange :: m (String)
  , comCitrixXenclientXenmgrVmSetRunOnAcpiStateChange :: String -> m ()
  , comCitrixXenclientXenmgrVmGetRunOnStateChange :: m (String)
  , comCitrixXenclientXenmgrVmSetRunOnStateChange :: String -> m ()
  , comCitrixXenclientXenmgrVmGetRunPostCreate :: m (String)
  , comCitrixXenclientXenmgrVmSetRunPostCreate :: String -> m ()
  , comCitrixXenclientXenmgrVmGetRunPreBoot :: m (String)
  , comCitrixXenclientXenmgrVmSetRunPreBoot :: String -> m ()
  , comCitrixXenclientXenmgrVmGetRunPreDelete :: m (String)
  , comCitrixXenclientXenmgrVmSetRunPreDelete :: String -> m ()
  , comCitrixXenclientXenmgrVmGetS3Mode :: m (String)
  , comCitrixXenclientXenmgrVmSetS3Mode :: String -> m ()
  , comCitrixXenclientXenmgrVmGetS4Mode :: m (String)
  , comCitrixXenclientXenmgrVmSetS4Mode :: String -> m ()
  , comCitrixXenclientXenmgrVmGetSeamlessId :: m (String)
  , comCitrixXenclientXenmgrVmSetSeamlessId :: String -> m ()
  , comCitrixXenclientXenmgrVmGetSeamlessMouseLeft :: m (Int32)
  , comCitrixXenclientXenmgrVmGetSeamlessMouseRight :: m (Int32)
  , comCitrixXenclientXenmgrVmGetSeamlessTraffic :: m (Bool)
  , comCitrixXenclientXenmgrVmSetSeamlessTraffic :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetSerial :: m (String)
  , comCitrixXenclientXenmgrVmSetSerial :: String -> m ()
  , comCitrixXenclientXenmgrVmGetShowSwitcher :: m (Bool)
  , comCitrixXenclientXenmgrVmSetShowSwitcher :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetShutdownPriority :: m (Int32)
  , comCitrixXenclientXenmgrVmSetShutdownPriority :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetSlot :: m (Int32)
  , comCitrixXenclientXenmgrVmSetSlot :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetSound :: m (String)
  , comCitrixXenclientXenmgrVmSetSound :: String -> m ()
  , comCitrixXenclientXenmgrVmGetStartFromSuspendImage :: m (String)
  , comCitrixXenclientXenmgrVmSetStartFromSuspendImage :: String -> m ()
  , comCitrixXenclientXenmgrVmGetStartOnBoot :: m (Bool)
  , comCitrixXenclientXenmgrVmSetStartOnBoot :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetStartOnBootPriority :: m (Int32)
  , comCitrixXenclientXenmgrVmSetStartOnBootPriority :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetState :: m (String)
  , comCitrixXenclientXenmgrVmGetStubdom :: m (Bool)
  , comCitrixXenclientXenmgrVmSetStubdom :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetStubdomFlaskLabel :: m (String)
  , comCitrixXenclientXenmgrVmSetStubdomFlaskLabel :: String -> m ()
  , comCitrixXenclientXenmgrVmGetSyncUuid :: m (String)
  , comCitrixXenclientXenmgrVmSetSyncUuid :: String -> m ()
  , comCitrixXenclientXenmgrVmGetTimeOffset :: m (Int32)
  , comCitrixXenclientXenmgrVmSetTimeOffset :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetTimerMode :: m (String)
  , comCitrixXenclientXenmgrVmSetTimerMode :: String -> m ()
  , comCitrixXenclientXenmgrVmGetTrackDependencies :: m (Bool)
  , comCitrixXenclientXenmgrVmSetTrackDependencies :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetType :: m (String)
  , comCitrixXenclientXenmgrVmSetType :: String -> m ()
  , comCitrixXenclientXenmgrVmGetUsbAutoPassthrough :: m (Bool)
  , comCitrixXenclientXenmgrVmSetUsbAutoPassthrough :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetUsbControl :: m (Bool)
  , comCitrixXenclientXenmgrVmSetUsbControl :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetUsbEnabled :: m (Bool)
  , comCitrixXenclientXenmgrVmSetUsbEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetUsbGrabDevices :: m (Bool)
  , comCitrixXenclientXenmgrVmSetUsbGrabDevices :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetUuid :: m (String)
  , comCitrixXenclientXenmgrVmGetVcpus :: m (Int32)
  , comCitrixXenclientXenmgrVmSetVcpus :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetVideoram :: m (Int32)
  , comCitrixXenclientXenmgrVmSetVideoram :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmGetViridian :: m (Bool)
  , comCitrixXenclientXenmgrVmSetViridian :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetVirtType :: m (String)
  , comCitrixXenclientXenmgrVmSetVirtType :: String -> m ()
  , comCitrixXenclientXenmgrVmGetVkbd :: m (Bool)
  , comCitrixXenclientXenmgrVmSetVkbd :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetVsnd :: m (Bool)
  , comCitrixXenclientXenmgrVmSetVsnd :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetWiredNetwork :: m (String)
  , comCitrixXenclientXenmgrVmSetWiredNetwork :: String -> m ()
  , comCitrixXenclientXenmgrVmGetWirelessControl :: m (Bool)
  , comCitrixXenclientXenmgrVmSetWirelessControl :: Bool -> m ()
  , comCitrixXenclientXenmgrVmGetWirelessNetwork :: m (String)
  , comCitrixXenclientXenmgrVmSetWirelessNetwork :: String -> m ()
  , comCitrixXenclientXenmgrVmGetXciCpuidSignature :: m (Bool)
  , comCitrixXenclientXenmgrVmSetXciCpuidSignature :: Bool -> m ()
  , comCitrixXenclientXenmgrVmAddArgoFirewallRule :: String -> m ()
  , comCitrixXenclientXenmgrVmAddDisk :: m (ObjectPath)
  , comCitrixXenclientXenmgrVmAddNetFirewallRule :: Int32 -> String -> String -> String -> m ()
  , comCitrixXenclientXenmgrVmAddNic :: m (ObjectPath)
  , comCitrixXenclientXenmgrVmCreateChildServiceVm :: String -> m (ObjectPath)
  , comCitrixXenclientXenmgrVmDelete :: m ()
  , comCitrixXenclientXenmgrVmDeleteArgoFirewallRule :: String -> m ()
  , comCitrixXenclientXenmgrVmDeleteNetFirewallRule :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmDestroy :: m ()
  , comCitrixXenclientXenmgrVmGetDbKey :: String -> m (String)
  , comCitrixXenclientXenmgrVmGetDomstoreKey :: String -> m (String)
  , comCitrixXenclientXenmgrVmHibernate :: m ()
  , comCitrixXenclientXenmgrVmListArgoFirewallRules :: m ([String])
  , comCitrixXenclientXenmgrVmListDisks :: m ([ObjectPath])
  , comCitrixXenclientXenmgrVmListNetFirewallRules :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrVmListNics :: m ([ObjectPath])
  , comCitrixXenclientXenmgrVmPause :: m ()
  , comCitrixXenclientXenmgrVmReadIcon :: m (B.ByteString)
  , comCitrixXenclientXenmgrVmReboot :: m ()
  , comCitrixXenclientXenmgrVmResume :: m ()
  , comCitrixXenclientXenmgrVmResumeFromFile :: String -> m ()
  , comCitrixXenclientXenmgrVmSetDbKey :: String -> String -> m ()
  , comCitrixXenclientXenmgrVmSetDomstoreKey :: String -> String -> m ()
  , comCitrixXenclientXenmgrVmShutdown :: m ()
  , comCitrixXenclientXenmgrVmSleep :: m ()
  , comCitrixXenclientXenmgrVmStart :: m ()
  , comCitrixXenclientXenmgrVmStartInternal :: m ()
  , comCitrixXenclientXenmgrVmSuspendToFile :: String -> m ()
  , comCitrixXenclientXenmgrVmSwitch :: m ()
  , comCitrixXenclientXenmgrVmUnpause :: m ()
  , comCitrixXenclientXenmgrVmAuthAuth :: m ()
  , comCitrixXenclientXenmgrVmAuthAuthRequired :: m (Bool)
  , comCitrixXenclientXenmgrVmPciAddPtRule :: String -> String -> String -> m ()
  , comCitrixXenclientXenmgrVmPciAddPtRuleBdf :: String -> m ()
  , comCitrixXenclientXenmgrVmPciDeletePtRule :: String -> String -> String -> m ()
  , comCitrixXenclientXenmgrVmPciDeletePtRuleBdf :: String -> m ()
  , comCitrixXenclientXenmgrVmPciListPtPciDevices :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrVmPciListPtRules :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrVmProductGetOvfEnvXml :: m (String)
  , comCitrixXenclientXenmgrVmProductGetProductProperty :: String -> m (String)
  , comCitrixXenclientXenmgrVmProductListProductProperties :: m ([(Map.Map String String)])
  , comCitrixXenclientXenmgrVmProductSetProductProperty :: String -> String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetAcpi :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetAcpi :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetAcpiState :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetAcpiTable :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetAcpiTable :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetAmtPt :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetAmtPt :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetApic :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetApic :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetArgo :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetArgo :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetAutoS3Wake :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetAutoS3Wake :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetAutostartPending :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedGetBios :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetBios :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetBoot :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetBoot :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetBootSentinel :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetBootSentinel :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetCd :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetCd :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetCmdLine :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetCmdLine :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetControlPlatformPowerState :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetControlPlatformPowerState :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetCoresPerSocket :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetCoresPerSocket :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetCpuid :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetCpuid :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetCryptoKeyDirs :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetCryptoKeyDirs :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetCryptoUser :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetCryptoUser :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetDependencies :: m ([ObjectPath])
  , comCitrixXenclientXenmgrVmUnrestrictedGetDescription :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetDescription :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetDisplay :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetDisplay :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetDomid :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreReadAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreReadAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreWriteAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreWriteAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetDownloadProgress :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetDownloadProgress :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetExtraHvm :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetExtraHvm :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetExtraXenvm :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetExtraXenvm :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetFlaskLabel :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetFlaskLabel :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetGpu :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetGpu :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetGreedyPcibackBind :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetGreedyPcibackBind :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetHap :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetHap :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetHdtype :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetHdtype :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetHibernated :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInSwitcher :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInSwitcher :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInUi :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInUi :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetHpet :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetHpet :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetDisplayHandlerStrict :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetDisplayHandlerStrict :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubDomid :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetImagePathVg :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetImagePathVg :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetLongFormVg :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetLongFormVg :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetShortFormVg :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetShortFormVg :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetTextColorVg :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetTextColorVg :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetBorderWidthVg :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetBorderWidthVg :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetBorderHeightVg :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetBorderHeightVg :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetVglassEnabled :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetVglassEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetMosaicMode :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetMosaicMode :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedX :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedX :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedY :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedY :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedW :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedW :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedH :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedH :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPrimaryDomainColor :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPrimaryDomainColor :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetSecondaryDomainColor :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetSecondaryDomainColor :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetMosaicVmEnabled :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetMosaicVmEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetIcbinnPath :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetIcbinnPath :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetImagePath :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetImagePath :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetInitFlaskLabel :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetInitFlaskLabel :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetInitrd :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetInitrd :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetInitrdExtract :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetInitrdExtract :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetKeepAlive :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetKeepAlive :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetKernel :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetKernel :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetKernelExtract :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetKernelExtract :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetMac :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedGetMeasured :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemory :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetMemory :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryMin :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetMemoryMin :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryStaticMax :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetMemoryStaticMax :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryTarget :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetName :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetName :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetNativeExperience :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetNativeExperience :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetNestedhvm :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetNestedhvm :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetNotify :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetNotify :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetNx :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetNx :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetOemAcpiFeatures :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetOemAcpiFeatures :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetOs :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetOs :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetOvfTransportIso :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetOvfTransportIso :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPae :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPae :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughIo :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughIo :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughMmio :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughMmio :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioRecording :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioRecording :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdAccess :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdAccess :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdRecording :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdRecording :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyModifyVmSettings :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyModifyVmSettings :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyPrintScreen :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyPrintScreen :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWiredNetworking :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWiredNetworking :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWirelessNetworking :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWirelessNetworking :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPorticaEnabled :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetPorticaInstalled :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedGetPreserveOnReboot :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPreserveOnReboot :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPrivateSpace :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesDefaultNetworkBackend :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetProvidesDefaultNetworkBackend :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesGraphicsFallback :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetProvidesGraphicsFallback :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesNetworkBackend :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetProvidesNetworkBackend :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPvAddons :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPvAddons :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetPvAddonsVersion :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetPvAddonsVersion :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmPath :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmPath :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmTimeout :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmTimeout :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetReady :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetReady :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRealm :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRealm :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayDepth :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayDepth :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayRes :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayRes :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunInsteadofStart :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunInsteadofStart :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunOnAcpiStateChange :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunOnAcpiStateChange :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunOnStateChange :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunOnStateChange :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunPostCreate :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunPostCreate :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunPreBoot :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunPreBoot :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunPreDelete :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunPreDelete :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetS3Mode :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetS3Mode :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetS4Mode :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetS4Mode :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessId :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessId :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseLeft :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseRight :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessTraffic :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessTraffic :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetSerial :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetSerial :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetShowSwitcher :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetShowSwitcher :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetShutdownPriority :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetShutdownPriority :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetSlot :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetSlot :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetSound :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetSound :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetStartFromSuspendImage :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetStartFromSuspendImage :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBoot :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBoot :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBootPriority :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBootPriority :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetState :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdom :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdom :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomCmdline :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdomCmdline :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomFlaskLabel :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdomFlaskLabel :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomMemory :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdomMemory :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetSyncUuid :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetSyncUuid :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetTimeOffset :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetTimeOffset :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetTimerMode :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetTimerMode :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetTrackDependencies :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetTrackDependencies :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetType :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetType :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbAutoPassthrough :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbAutoPassthrough :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbControl :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbControl :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbEnabled :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbEnabled :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbGrabDevices :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbGrabDevices :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetUuid :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedGetVcpus :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetVcpus :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetVideoram :: m (Int32)
  , comCitrixXenclientXenmgrVmUnrestrictedSetVideoram :: Int32 -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetViridian :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetViridian :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetVirtType :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetVirtType :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetVkbd :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetVkbd :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetVsnd :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetVsnd :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetWiredNetwork :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetWiredNetwork :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetWirelessControl :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetWirelessControl :: Bool -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetWirelessNetwork :: m (String)
  , comCitrixXenclientXenmgrVmUnrestrictedSetWirelessNetwork :: String -> m ()
  , comCitrixXenclientXenmgrVmUnrestrictedGetXciCpuidSignature :: m (Bool)
  , comCitrixXenclientXenmgrVmUnrestrictedSetXciCpuidSignature :: Bool -> m ()
}

-- Stubs handle marshalling datatypes from/to Variants interfacing with DBus calls.

-- Interface com.citrix.xenclient.xenmgr.vm

stubComCitrixXenclientXenmgrVmAddArgoFirewallRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmAddArgoFirewallRule server_ args_ = do
  case args_ of
    [ rule ] -> do
      () <- comCitrixXenclientXenmgrVmAddArgoFirewallRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ rule)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmAddDisk :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmAddDisk server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmAddDisk server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmAddNetFirewallRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmAddNetFirewallRule server_ args_ = do
  case args_ of
    [ id, direction, remoteip, extra ] -> do
      () <- comCitrixXenclientXenmgrVmAddNetFirewallRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ id)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ direction)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ remoteip)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ extra)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmAddNic :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmAddNic server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmAddNic server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmCreateChildServiceVm :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmCreateChildServiceVm server_ args_ = do
  case args_ of
    [ template ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmCreateChildServiceVm server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ template)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmDelete :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmDelete server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmDelete server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmDeleteArgoFirewallRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmDeleteArgoFirewallRule server_ args_ = do
  case args_ of
    [ rule ] -> do
      () <- comCitrixXenclientXenmgrVmDeleteArgoFirewallRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ rule)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmDeleteNetFirewallRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmDeleteNetFirewallRule server_ args_ = do
  case args_ of
    [ id ] -> do
      () <- comCitrixXenclientXenmgrVmDeleteNetFirewallRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ id)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmDestroy :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmDestroy server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmDestroy server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmGetDbKey :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmGetDbKey server_ args_ = do
  case args_ of
    [ key ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmGetDbKey server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ key)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmGetDomstoreKey :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmGetDomstoreKey server_ args_ = do
  case args_ of
    [ key ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmGetDomstoreKey server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ key)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmHibernate :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmHibernate server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmHibernate server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmListArgoFirewallRules :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmListArgoFirewallRules server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmListArgoFirewallRules server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmListDisks :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmListDisks server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmListDisks server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmListNetFirewallRules :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmListNetFirewallRules server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmListNetFirewallRules server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmListNics :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmListNics server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmListNics server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmPause :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmPause server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmPause server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmReadIcon :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmReadIcon server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmReadIcon server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmReboot :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmReboot server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmReboot server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmResume :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmResume server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmResume server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmResumeFromFile :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmResumeFromFile server_ args_ = do
  case args_ of
    [ file ] -> do
      () <- comCitrixXenclientXenmgrVmResumeFromFile server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ file)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmSetDbKey :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmSetDbKey server_ args_ = do
  case args_ of
    [ key, value ] -> do
      () <- comCitrixXenclientXenmgrVmSetDbKey server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ key)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmSetDomstoreKey :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmSetDomstoreKey server_ args_ = do
  case args_ of
    [ key, value ] -> do
      () <- comCitrixXenclientXenmgrVmSetDomstoreKey server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ key)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmShutdown :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmShutdown server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmShutdown server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmSleep :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmSleep server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmSleep server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmStart :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmStart server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmStart server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmStartInternal :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmStartInternal server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmStartInternal server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmSuspendToFile :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmSuspendToFile server_ args_ = do
  case args_ of
    [ file ] -> do
      () <- comCitrixXenclientXenmgrVmSuspendToFile server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ file)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmSwitch :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmSwitch server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmSwitch server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmUnpause :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmUnpause server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmUnpause server_
      return [ ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.vm.auth

stubComCitrixXenclientXenmgrVmAuthAuth :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmAuthAuth server_ args_ = do
  case args_ of
    [ ] -> do
      () <- comCitrixXenclientXenmgrVmAuthAuth server_
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmAuthAuthRequired :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmAuthAuthRequired server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmAuthAuthRequired server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.vm.pci

stubComCitrixXenclientXenmgrVmPciAddPtRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmPciAddPtRule server_ args_ = do
  case args_ of
    [ pciclass, vendor_id, device_id ] -> do
      () <- comCitrixXenclientXenmgrVmPciAddPtRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ pciclass)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vendor_id)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ device_id)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmPciAddPtRuleBdf :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmPciAddPtRuleBdf server_ args_ = do
  case args_ of
    [ bdf ] -> do
      () <- comCitrixXenclientXenmgrVmPciAddPtRuleBdf server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ bdf)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmPciDeletePtRule :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmPciDeletePtRule server_ args_ = do
  case args_ of
    [ pciclass, vendor_id, device_id ] -> do
      () <- comCitrixXenclientXenmgrVmPciDeletePtRule server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ pciclass)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ vendor_id)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ device_id)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmPciDeletePtRuleBdf :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmPciDeletePtRuleBdf server_ args_ = do
  case args_ of
    [ bdf ] -> do
      () <- comCitrixXenclientXenmgrVmPciDeletePtRuleBdf server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ bdf)
      return [ ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmPciListPtPciDevices :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmPciListPtPciDevices server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmPciListPtPciDevices server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmPciListPtRules :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmPciListPtRules server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmPciListPtRules server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.vm.product

stubComCitrixXenclientXenmgrVmProductGetOvfEnvXml :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmProductGetOvfEnvXml server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmProductGetOvfEnvXml server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmProductGetProductProperty :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmProductGetProductProperty server_ args_ = do
  case args_ of
    [ property_id ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmProductGetProductProperty server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property_id)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmProductListProductProperties :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmProductListProductProperties server_ args_ = do
  case args_ of
    [ ] -> do
      (out_0) <- comCitrixXenclientXenmgrVmProductListProductProperties server_
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubComCitrixXenclientXenmgrVmProductSetProductProperty :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubComCitrixXenclientXenmgrVmProductSetProductProperty server_ args_ = do
  case args_ of
    [ property_id, value ] -> do
      () <- comCitrixXenclientXenmgrVmProductSetProductProperty server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property_id)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [ ]
    _ -> error "invalid arguments"

-- Interface com.citrix.xenclient.xenmgr.vm.unrestricted

-- DBus Properties wrappers
stubOrgFreedesktopDBusPropertiesGet :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGet server_ args_ = do
  case args_ of
    [ interface, property ] -> do
      (out_0) <-
        orgFreedesktopDBusPropertiesGet server_
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
          (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesSet :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesSet server_ args_ = do
  case args_ of
    [ interface, property, value ] -> do
      () <- orgFreedesktopDBusPropertiesSet server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ property)
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ value)
      return [  ]
    _ -> error "invalid arguments"

stubOrgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [Variant] -> m [Variant]
stubOrgFreedesktopDBusPropertiesGetAll server_ args_ = do
  case args_ of
    [ interface ] -> do
      (out_0) <- orgFreedesktopDBusPropertiesGetAll server_
        (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ interface)
      return [ (toVariant $ out_0) ]
    _ -> error "invalid arguments"

orgFreedesktopDBusPropertiesGet :: ((MonadRpc e m)) => XenmgrVmServer m -> String -> String -> m Variant
orgFreedesktopDBusPropertiesGet obj intf property =
  case (intf, property) of
    ("com.citrix.xenclient.xenmgr.vm", "acpi") -> comCitrixXenclientXenmgrVmGetAcpi obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "acpi-state") -> comCitrixXenclientXenmgrVmGetAcpiState obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "acpi-table") -> comCitrixXenclientXenmgrVmGetAcpiTable obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "amt-pt") -> comCitrixXenclientXenmgrVmGetAmtPt obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "apic") -> comCitrixXenclientXenmgrVmGetApic obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "argo") -> comCitrixXenclientXenmgrVmGetArgo obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "auto-s3-wake") -> comCitrixXenclientXenmgrVmGetAutoS3Wake obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "autostart-pending") -> comCitrixXenclientXenmgrVmGetAutostartPending obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "bios") -> comCitrixXenclientXenmgrVmGetBios obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "boot") -> comCitrixXenclientXenmgrVmGetBoot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "boot-sentinel") -> comCitrixXenclientXenmgrVmGetBootSentinel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "cd") -> comCitrixXenclientXenmgrVmGetCd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "cmd-line") -> comCitrixXenclientXenmgrVmGetCmdLine obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "control-platform-power-state") -> comCitrixXenclientXenmgrVmGetControlPlatformPowerState obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "cores-per-socket") -> comCitrixXenclientXenmgrVmGetCoresPerSocket obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "cpuid") -> comCitrixXenclientXenmgrVmGetCpuid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "crypto-key-dirs") -> comCitrixXenclientXenmgrVmGetCryptoKeyDirs obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "crypto-user") -> comCitrixXenclientXenmgrVmGetCryptoUser obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "dependencies") -> comCitrixXenclientXenmgrVmGetDependencies obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "description") -> comCitrixXenclientXenmgrVmGetDescription obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "display") -> comCitrixXenclientXenmgrVmGetDisplay obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "domid") -> comCitrixXenclientXenmgrVmGetDomid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "domstore-read-access") -> comCitrixXenclientXenmgrVmGetDomstoreReadAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "domstore-write-access") -> comCitrixXenclientXenmgrVmGetDomstoreWriteAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "download-progress") -> comCitrixXenclientXenmgrVmGetDownloadProgress obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "extra-hvm") -> comCitrixXenclientXenmgrVmGetExtraHvm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "extra-xenvm") -> comCitrixXenclientXenmgrVmGetExtraXenvm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "flask-label") -> comCitrixXenclientXenmgrVmGetFlaskLabel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "gpu") -> comCitrixXenclientXenmgrVmGetGpu obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "greedy-pciback-bind") -> comCitrixXenclientXenmgrVmGetGreedyPcibackBind obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "hap") -> comCitrixXenclientXenmgrVmGetHap obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "hdtype") -> comCitrixXenclientXenmgrVmGetHdtype obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "hibernated") -> comCitrixXenclientXenmgrVmGetHibernated obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "hidden-in-switcher") -> comCitrixXenclientXenmgrVmGetHiddenInSwitcher obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "hidden-in-ui") -> comCitrixXenclientXenmgrVmGetHiddenInUi obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "hpet") -> comCitrixXenclientXenmgrVmGetHpet obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "icbinn-path") -> comCitrixXenclientXenmgrVmGetIcbinnPath obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "image-path") -> comCitrixXenclientXenmgrVmGetImagePath obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "init-flask-label") -> comCitrixXenclientXenmgrVmGetInitFlaskLabel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "initrd") -> comCitrixXenclientXenmgrVmGetInitrd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "initrd-extract") -> comCitrixXenclientXenmgrVmGetInitrdExtract obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "keep-alive") -> comCitrixXenclientXenmgrVmGetKeepAlive obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "kernel") -> comCitrixXenclientXenmgrVmGetKernel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "kernel-extract") -> comCitrixXenclientXenmgrVmGetKernelExtract obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "display-handler-strict") -> comCitrixXenclientXenmgrVmGetDisplayHandlerStrict obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "image_path_vg") -> comCitrixXenclientXenmgrVmGetImagePathVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "long_form_vg") -> comCitrixXenclientXenmgrVmGetLongFormVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "short_form_vg") -> comCitrixXenclientXenmgrVmGetShortFormVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "text_color_vg") -> comCitrixXenclientXenmgrVmGetTextColorVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "border_width_vg") -> comCitrixXenclientXenmgrVmGetBorderWidthVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "border_height_vg") -> comCitrixXenclientXenmgrVmGetBorderHeightVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "vglass_enabled") -> comCitrixXenclientXenmgrVmGetVglassEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "mosaic_mode") -> comCitrixXenclientXenmgrVmGetMosaicMode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "windowed_x") -> comCitrixXenclientXenmgrVmGetWindowedX obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "windowed_y") -> comCitrixXenclientXenmgrVmGetWindowedY obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "windowed_w") -> comCitrixXenclientXenmgrVmGetWindowedW obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "windowed_h") -> comCitrixXenclientXenmgrVmGetWindowedH obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "primary_domain_color") -> comCitrixXenclientXenmgrVmGetPrimaryDomainColor obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "secondary_domain_color") -> comCitrixXenclientXenmgrVmGetSecondaryDomainColor obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "mosaic_vm_enabled") -> comCitrixXenclientXenmgrVmGetMosaicVmEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "mac") -> comCitrixXenclientXenmgrVmGetMac obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "measured") -> comCitrixXenclientXenmgrVmGetMeasured obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "memory") -> comCitrixXenclientXenmgrVmGetMemory obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "memory-min") -> comCitrixXenclientXenmgrVmGetMemoryMin obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "memory-static-max") -> comCitrixXenclientXenmgrVmGetMemoryStaticMax obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "memory-target") -> comCitrixXenclientXenmgrVmGetMemoryTarget obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "name") -> comCitrixXenclientXenmgrVmGetName obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "native-experience") -> comCitrixXenclientXenmgrVmGetNativeExperience obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "nestedhvm") -> comCitrixXenclientXenmgrVmGetNestedhvm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "notify") -> comCitrixXenclientXenmgrVmGetNotify obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "nx") -> comCitrixXenclientXenmgrVmGetNx obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "oem-acpi-features") -> comCitrixXenclientXenmgrVmGetOemAcpiFeatures obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "os") -> comCitrixXenclientXenmgrVmGetOs obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "ovf-transport-iso") -> comCitrixXenclientXenmgrVmGetOvfTransportIso obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "pae") -> comCitrixXenclientXenmgrVmGetPae obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "passthrough-io") -> comCitrixXenclientXenmgrVmGetPassthroughIo obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "passthrough-mmio") -> comCitrixXenclientXenmgrVmGetPassthroughMmio obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-audio-access") -> comCitrixXenclientXenmgrVmGetPolicyAudioAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-audio-recording") -> comCitrixXenclientXenmgrVmGetPolicyAudioRecording obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-cd-access") -> comCitrixXenclientXenmgrVmGetPolicyCdAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-cd-recording") -> comCitrixXenclientXenmgrVmGetPolicyCdRecording obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-modify-vm-settings") -> comCitrixXenclientXenmgrVmGetPolicyModifyVmSettings obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-print-screen") -> comCitrixXenclientXenmgrVmGetPolicyPrintScreen obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-wired-networking") -> comCitrixXenclientXenmgrVmGetPolicyWiredNetworking obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "policy-wireless-networking") -> comCitrixXenclientXenmgrVmGetPolicyWirelessNetworking obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "portica-enabled") -> comCitrixXenclientXenmgrVmGetPorticaEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "portica-installed") -> comCitrixXenclientXenmgrVmGetPorticaInstalled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "preserve-on-reboot") -> comCitrixXenclientXenmgrVmGetPreserveOnReboot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "private-space") -> comCitrixXenclientXenmgrVmGetPrivateSpace obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "provides-default-network-backend") -> comCitrixXenclientXenmgrVmGetProvidesDefaultNetworkBackend obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "provides-graphics-fallback") -> comCitrixXenclientXenmgrVmGetProvidesGraphicsFallback obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "provides-network-backend") -> comCitrixXenclientXenmgrVmGetProvidesNetworkBackend obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "pv-addons") -> comCitrixXenclientXenmgrVmGetPvAddons obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "pv-addons-version") -> comCitrixXenclientXenmgrVmGetPvAddonsVersion obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "qemu-dm-path") -> comCitrixXenclientXenmgrVmGetQemuDmPath obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "qemu-dm-timeout") -> comCitrixXenclientXenmgrVmGetQemuDmTimeout obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "ready") -> comCitrixXenclientXenmgrVmGetReady obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "realm") -> comCitrixXenclientXenmgrVmGetRealm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "restrict-display-depth") -> comCitrixXenclientXenmgrVmGetRestrictDisplayDepth obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "restrict-display-res") -> comCitrixXenclientXenmgrVmGetRestrictDisplayRes obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "run-insteadof-start") -> comCitrixXenclientXenmgrVmGetRunInsteadofStart obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "run-on-acpi-state-change") -> comCitrixXenclientXenmgrVmGetRunOnAcpiStateChange obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "run-on-state-change") -> comCitrixXenclientXenmgrVmGetRunOnStateChange obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "run-post-create") -> comCitrixXenclientXenmgrVmGetRunPostCreate obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "run-pre-boot") -> comCitrixXenclientXenmgrVmGetRunPreBoot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "run-pre-delete") -> comCitrixXenclientXenmgrVmGetRunPreDelete obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "s3-mode") -> comCitrixXenclientXenmgrVmGetS3Mode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "s4-mode") -> comCitrixXenclientXenmgrVmGetS4Mode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "seamless-id") -> comCitrixXenclientXenmgrVmGetSeamlessId obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "seamless-mouse-left") -> comCitrixXenclientXenmgrVmGetSeamlessMouseLeft obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "seamless-mouse-right") -> comCitrixXenclientXenmgrVmGetSeamlessMouseRight obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "seamless-traffic") -> comCitrixXenclientXenmgrVmGetSeamlessTraffic obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "serial") -> comCitrixXenclientXenmgrVmGetSerial obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "show-switcher") -> comCitrixXenclientXenmgrVmGetShowSwitcher obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "shutdown-priority") -> comCitrixXenclientXenmgrVmGetShutdownPriority obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "slot") -> comCitrixXenclientXenmgrVmGetSlot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "sound") -> comCitrixXenclientXenmgrVmGetSound obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "start-from-suspend-image") -> comCitrixXenclientXenmgrVmGetStartFromSuspendImage obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "start-on-boot") -> comCitrixXenclientXenmgrVmGetStartOnBoot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "start-on-boot-priority") -> comCitrixXenclientXenmgrVmGetStartOnBootPriority obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "state") -> comCitrixXenclientXenmgrVmGetState obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "stubdom") -> comCitrixXenclientXenmgrVmGetStubdom obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "stubdom-flask-label") -> comCitrixXenclientXenmgrVmGetStubdomFlaskLabel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "sync-uuid") -> comCitrixXenclientXenmgrVmGetSyncUuid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "time-offset") -> comCitrixXenclientXenmgrVmGetTimeOffset obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "timer-mode") -> comCitrixXenclientXenmgrVmGetTimerMode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "track-dependencies") -> comCitrixXenclientXenmgrVmGetTrackDependencies obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "type") -> comCitrixXenclientXenmgrVmGetType obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "usb-auto-passthrough") -> comCitrixXenclientXenmgrVmGetUsbAutoPassthrough obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "usb-control") -> comCitrixXenclientXenmgrVmGetUsbControl obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "usb-enabled") -> comCitrixXenclientXenmgrVmGetUsbEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "usb-grab-devices") -> comCitrixXenclientXenmgrVmGetUsbGrabDevices obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "uuid") -> comCitrixXenclientXenmgrVmGetUuid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "vcpus") -> comCitrixXenclientXenmgrVmGetVcpus obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "videoram") -> comCitrixXenclientXenmgrVmGetVideoram obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "viridian") -> comCitrixXenclientXenmgrVmGetViridian obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "virt-type") -> comCitrixXenclientXenmgrVmGetVirtType obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "vkbd") -> comCitrixXenclientXenmgrVmGetVkbd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "vsnd") -> comCitrixXenclientXenmgrVmGetVsnd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "wired-network") -> comCitrixXenclientXenmgrVmGetWiredNetwork obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "wireless-control") -> comCitrixXenclientXenmgrVmGetWirelessControl obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "wireless-network") -> comCitrixXenclientXenmgrVmGetWirelessNetwork obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm", "xci-cpuid-signature") -> comCitrixXenclientXenmgrVmGetXciCpuidSignature obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "acpi") -> comCitrixXenclientXenmgrVmUnrestrictedGetAcpi obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "acpi-state") -> comCitrixXenclientXenmgrVmUnrestrictedGetAcpiState obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "acpi-table") -> comCitrixXenclientXenmgrVmUnrestrictedGetAcpiTable obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "amt-pt") -> comCitrixXenclientXenmgrVmUnrestrictedGetAmtPt obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "apic") -> comCitrixXenclientXenmgrVmUnrestrictedGetApic obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "argo") -> comCitrixXenclientXenmgrVmUnrestrictedGetArgo obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "auto-s3-wake") -> comCitrixXenclientXenmgrVmUnrestrictedGetAutoS3Wake obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "autostart-pending") -> comCitrixXenclientXenmgrVmUnrestrictedGetAutostartPending obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "bios") -> comCitrixXenclientXenmgrVmUnrestrictedGetBios obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "boot") -> comCitrixXenclientXenmgrVmUnrestrictedGetBoot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "boot-sentinel") -> comCitrixXenclientXenmgrVmUnrestrictedGetBootSentinel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cd") -> comCitrixXenclientXenmgrVmUnrestrictedGetCd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cmd-line") -> comCitrixXenclientXenmgrVmUnrestrictedGetCmdLine obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "control-platform-power-state") -> comCitrixXenclientXenmgrVmUnrestrictedGetControlPlatformPowerState obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cores-per-socket") -> comCitrixXenclientXenmgrVmUnrestrictedGetCoresPerSocket obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cpuid") -> comCitrixXenclientXenmgrVmUnrestrictedGetCpuid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "crypto-key-dirs") -> comCitrixXenclientXenmgrVmUnrestrictedGetCryptoKeyDirs obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "crypto-user") -> comCitrixXenclientXenmgrVmUnrestrictedGetCryptoUser obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "dependencies") -> comCitrixXenclientXenmgrVmUnrestrictedGetDependencies obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "description") -> comCitrixXenclientXenmgrVmUnrestrictedGetDescription obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "display") -> comCitrixXenclientXenmgrVmUnrestrictedGetDisplay obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "domid") -> comCitrixXenclientXenmgrVmUnrestrictedGetDomid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "domstore-read-access") -> comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreReadAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "domstore-write-access") -> comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreWriteAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "download-progress") -> comCitrixXenclientXenmgrVmUnrestrictedGetDownloadProgress obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "extra-hvm") -> comCitrixXenclientXenmgrVmUnrestrictedGetExtraHvm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "extra-xenvm") -> comCitrixXenclientXenmgrVmUnrestrictedGetExtraXenvm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "flask-label") -> comCitrixXenclientXenmgrVmUnrestrictedGetFlaskLabel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "gpu") -> comCitrixXenclientXenmgrVmUnrestrictedGetGpu obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "greedy-pciback-bind") -> comCitrixXenclientXenmgrVmUnrestrictedGetGreedyPcibackBind obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hap") -> comCitrixXenclientXenmgrVmUnrestrictedGetHap obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hdtype") -> comCitrixXenclientXenmgrVmUnrestrictedGetHdtype obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hibernated") -> comCitrixXenclientXenmgrVmUnrestrictedGetHibernated obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hidden-in-switcher") -> comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInSwitcher obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hidden-in-ui") -> comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInUi obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hpet") -> comCitrixXenclientXenmgrVmUnrestrictedGetHpet obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "display-handler-strict") -> comCitrixXenclientXenmgrVmUnrestrictedGetDisplayHandlerStrict obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stub_domid") -> comCitrixXenclientXenmgrVmUnrestrictedGetStubDomid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "image_path_vg") -> comCitrixXenclientXenmgrVmUnrestrictedGetImagePathVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "long_form_vg") -> comCitrixXenclientXenmgrVmUnrestrictedGetLongFormVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "short_form_vg") -> comCitrixXenclientXenmgrVmUnrestrictedGetShortFormVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "text_color_vg") -> comCitrixXenclientXenmgrVmUnrestrictedGetTextColorVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "border_width_vg") -> comCitrixXenclientXenmgrVmUnrestrictedGetBorderWidthVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "border_height_vg") -> comCitrixXenclientXenmgrVmUnrestrictedGetBorderHeightVg obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vglass_enabled") -> comCitrixXenclientXenmgrVmUnrestrictedGetVglassEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "mosaic_mode") -> comCitrixXenclientXenmgrVmUnrestrictedGetMosaicMode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_x") -> comCitrixXenclientXenmgrVmUnrestrictedGetWindowedX obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_y") -> comCitrixXenclientXenmgrVmUnrestrictedGetWindowedY obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_w") -> comCitrixXenclientXenmgrVmUnrestrictedGetWindowedW obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_h") -> comCitrixXenclientXenmgrVmUnrestrictedGetWindowedH obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "primary_domain_color") -> comCitrixXenclientXenmgrVmUnrestrictedGetPrimaryDomainColor obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "secondary_domain_color") -> comCitrixXenclientXenmgrVmUnrestrictedGetSecondaryDomainColor obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "mosaic_vm_enabled") -> comCitrixXenclientXenmgrVmUnrestrictedGetMosaicVmEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "icbinn-path") -> comCitrixXenclientXenmgrVmUnrestrictedGetIcbinnPath obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "image-path") -> comCitrixXenclientXenmgrVmUnrestrictedGetImagePath obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "init-flask-label") -> comCitrixXenclientXenmgrVmUnrestrictedGetInitFlaskLabel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "initrd") -> comCitrixXenclientXenmgrVmUnrestrictedGetInitrd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "initrd-extract") -> comCitrixXenclientXenmgrVmUnrestrictedGetInitrdExtract obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "keep-alive") -> comCitrixXenclientXenmgrVmUnrestrictedGetKeepAlive obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "kernel") -> comCitrixXenclientXenmgrVmUnrestrictedGetKernel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "kernel-extract") -> comCitrixXenclientXenmgrVmUnrestrictedGetKernelExtract obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "mac") -> comCitrixXenclientXenmgrVmUnrestrictedGetMac obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "measured") -> comCitrixXenclientXenmgrVmUnrestrictedGetMeasured obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "memory") -> comCitrixXenclientXenmgrVmUnrestrictedGetMemory obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "memory-min") -> comCitrixXenclientXenmgrVmUnrestrictedGetMemoryMin obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "memory-static-max") -> comCitrixXenclientXenmgrVmUnrestrictedGetMemoryStaticMax obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "memory-target") -> comCitrixXenclientXenmgrVmUnrestrictedGetMemoryTarget obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "name") -> comCitrixXenclientXenmgrVmUnrestrictedGetName obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "native-experience") -> comCitrixXenclientXenmgrVmUnrestrictedGetNativeExperience obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "nestedhvm") -> comCitrixXenclientXenmgrVmUnrestrictedGetNestedhvm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "notify") -> comCitrixXenclientXenmgrVmUnrestrictedGetNotify obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "nx") -> comCitrixXenclientXenmgrVmUnrestrictedGetNx obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "oem-acpi-features") -> comCitrixXenclientXenmgrVmUnrestrictedGetOemAcpiFeatures obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "os") -> comCitrixXenclientXenmgrVmUnrestrictedGetOs obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "ovf-transport-iso") -> comCitrixXenclientXenmgrVmUnrestrictedGetOvfTransportIso obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "pae") -> comCitrixXenclientXenmgrVmUnrestrictedGetPae obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "passthrough-io") -> comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughIo obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "passthrough-mmio") -> comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughMmio obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-audio-access") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-audio-recording") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioRecording obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-cd-access") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdAccess obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-cd-recording") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdRecording obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-modify-vm-settings") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyModifyVmSettings obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-print-screen") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyPrintScreen obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-wired-networking") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWiredNetworking obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-wireless-networking") -> comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWirelessNetworking obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "portica-enabled") -> comCitrixXenclientXenmgrVmUnrestrictedGetPorticaEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "portica-installed") -> comCitrixXenclientXenmgrVmUnrestrictedGetPorticaInstalled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "preserve-on-reboot") -> comCitrixXenclientXenmgrVmUnrestrictedGetPreserveOnReboot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "private-space") -> comCitrixXenclientXenmgrVmUnrestrictedGetPrivateSpace obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "provides-default-network-backend") -> comCitrixXenclientXenmgrVmUnrestrictedGetProvidesDefaultNetworkBackend obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "provides-graphics-fallback") -> comCitrixXenclientXenmgrVmUnrestrictedGetProvidesGraphicsFallback obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "provides-network-backend") -> comCitrixXenclientXenmgrVmUnrestrictedGetProvidesNetworkBackend obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "pv-addons") -> comCitrixXenclientXenmgrVmUnrestrictedGetPvAddons obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "pv-addons-version") -> comCitrixXenclientXenmgrVmUnrestrictedGetPvAddonsVersion obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "qemu-dm-path") -> comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmPath obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "qemu-dm-timeout") -> comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmTimeout obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "ready") -> comCitrixXenclientXenmgrVmUnrestrictedGetReady obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "realm") -> comCitrixXenclientXenmgrVmUnrestrictedGetRealm obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "restrict-display-depth") -> comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayDepth obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "restrict-display-res") -> comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayRes obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-insteadof-start") -> comCitrixXenclientXenmgrVmUnrestrictedGetRunInsteadofStart obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-on-acpi-state-change") -> comCitrixXenclientXenmgrVmUnrestrictedGetRunOnAcpiStateChange obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-on-state-change") -> comCitrixXenclientXenmgrVmUnrestrictedGetRunOnStateChange obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-post-create") -> comCitrixXenclientXenmgrVmUnrestrictedGetRunPostCreate obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-pre-boot") -> comCitrixXenclientXenmgrVmUnrestrictedGetRunPreBoot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-pre-delete") -> comCitrixXenclientXenmgrVmUnrestrictedGetRunPreDelete obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "s3-mode") -> comCitrixXenclientXenmgrVmUnrestrictedGetS3Mode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "s4-mode") -> comCitrixXenclientXenmgrVmUnrestrictedGetS4Mode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "seamless-id") -> comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessId obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "seamless-mouse-left") -> comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseLeft obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "seamless-mouse-right") -> comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseRight obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "seamless-traffic") -> comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessTraffic obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "serial") -> comCitrixXenclientXenmgrVmUnrestrictedGetSerial obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "show-switcher") -> comCitrixXenclientXenmgrVmUnrestrictedGetShowSwitcher obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "shutdown-priority") -> comCitrixXenclientXenmgrVmUnrestrictedGetShutdownPriority obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "slot") -> comCitrixXenclientXenmgrVmUnrestrictedGetSlot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "sound") -> comCitrixXenclientXenmgrVmUnrestrictedGetSound obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "start-from-suspend-image") -> comCitrixXenclientXenmgrVmUnrestrictedGetStartFromSuspendImage obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "start-on-boot") -> comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBoot obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "start-on-boot-priority") -> comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBootPriority obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "state") -> comCitrixXenclientXenmgrVmUnrestrictedGetState obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom") -> comCitrixXenclientXenmgrVmUnrestrictedGetStubdom obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom-cmdline") -> comCitrixXenclientXenmgrVmUnrestrictedGetStubdomCmdline obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom-flask-label") -> comCitrixXenclientXenmgrVmUnrestrictedGetStubdomFlaskLabel obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom-memory") -> comCitrixXenclientXenmgrVmUnrestrictedGetStubdomMemory obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "sync-uuid") -> comCitrixXenclientXenmgrVmUnrestrictedGetSyncUuid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "time-offset") -> comCitrixXenclientXenmgrVmUnrestrictedGetTimeOffset obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "timer-mode") -> comCitrixXenclientXenmgrVmUnrestrictedGetTimerMode obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "track-dependencies") -> comCitrixXenclientXenmgrVmUnrestrictedGetTrackDependencies obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "type") -> comCitrixXenclientXenmgrVmUnrestrictedGetType obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-auto-passthrough") -> comCitrixXenclientXenmgrVmUnrestrictedGetUsbAutoPassthrough obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-control") -> comCitrixXenclientXenmgrVmUnrestrictedGetUsbControl obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-enabled") -> comCitrixXenclientXenmgrVmUnrestrictedGetUsbEnabled obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-grab-devices") -> comCitrixXenclientXenmgrVmUnrestrictedGetUsbGrabDevices obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "uuid") -> comCitrixXenclientXenmgrVmUnrestrictedGetUuid obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vcpus") -> comCitrixXenclientXenmgrVmUnrestrictedGetVcpus obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "videoram") -> comCitrixXenclientXenmgrVmUnrestrictedGetVideoram obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "viridian") -> comCitrixXenclientXenmgrVmUnrestrictedGetViridian obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "virt-type") -> comCitrixXenclientXenmgrVmUnrestrictedGetVirtType obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vkbd") -> comCitrixXenclientXenmgrVmUnrestrictedGetVkbd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vsnd") -> comCitrixXenclientXenmgrVmUnrestrictedGetVsnd obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "wired-network") -> comCitrixXenclientXenmgrVmUnrestrictedGetWiredNetwork obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "wireless-control") -> comCitrixXenclientXenmgrVmUnrestrictedGetWirelessControl obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "wireless-network") -> comCitrixXenclientXenmgrVmUnrestrictedGetWirelessNetwork obj >>= return . toVariant
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "xci-cpuid-signature") -> comCitrixXenclientXenmgrVmUnrestrictedGetXciCpuidSignature obj >>= return . toVariant
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not readable, or does not exist"

orgFreedesktopDBusPropertiesSet :: ((MonadRpc e m)) => XenmgrVmServer m -> String -> String -> Variant -> m ()
orgFreedesktopDBusPropertiesSet obj intf property value =
  case (intf, property) of
    ("com.citrix.xenclient.xenmgr.vm", "acpi") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetAcpi obj v
    ("com.citrix.xenclient.xenmgr.vm", "acpi-table") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetAcpiTable obj v
    ("com.citrix.xenclient.xenmgr.vm", "amt-pt") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetAmtPt obj v
    ("com.citrix.xenclient.xenmgr.vm", "apic") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetApic obj v
    ("com.citrix.xenclient.xenmgr.vm", "argo") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetArgo obj v
    ("com.citrix.xenclient.xenmgr.vm", "auto-s3-wake") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetAutoS3Wake obj v
    ("com.citrix.xenclient.xenmgr.vm", "bios") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetBios obj v
    ("com.citrix.xenclient.xenmgr.vm", "boot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetBoot obj v
    ("com.citrix.xenclient.xenmgr.vm", "boot-sentinel") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetBootSentinel obj v
    ("com.citrix.xenclient.xenmgr.vm", "cd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetCd obj v
    ("com.citrix.xenclient.xenmgr.vm", "cmd-line") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetCmdLine obj v
    ("com.citrix.xenclient.xenmgr.vm", "control-platform-power-state") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetControlPlatformPowerState obj v
    ("com.citrix.xenclient.xenmgr.vm", "cores-per-socket") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetCoresPerSocket obj v
    ("com.citrix.xenclient.xenmgr.vm", "cpuid") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetCpuid obj v
    ("com.citrix.xenclient.xenmgr.vm", "crypto-key-dirs") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetCryptoKeyDirs obj v
    ("com.citrix.xenclient.xenmgr.vm", "crypto-user") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetCryptoUser obj v
    ("com.citrix.xenclient.xenmgr.vm", "description") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetDescription obj v
    ("com.citrix.xenclient.xenmgr.vm", "display") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetDisplay obj v
    ("com.citrix.xenclient.xenmgr.vm", "domstore-read-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetDomstoreReadAccess obj v
    ("com.citrix.xenclient.xenmgr.vm", "domstore-write-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetDomstoreWriteAccess obj v
    ("com.citrix.xenclient.xenmgr.vm", "download-progress") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetDownloadProgress obj v
    ("com.citrix.xenclient.xenmgr.vm", "extra-hvm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetExtraHvm obj v
    ("com.citrix.xenclient.xenmgr.vm", "extra-xenvm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetExtraXenvm obj v
    ("com.citrix.xenclient.xenmgr.vm", "flask-label") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetFlaskLabel obj v
    ("com.citrix.xenclient.xenmgr.vm", "gpu") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetGpu obj v
    ("com.citrix.xenclient.xenmgr.vm", "greedy-pciback-bind") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetGreedyPcibackBind obj v
    ("com.citrix.xenclient.xenmgr.vm", "hap") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetHap obj v
    ("com.citrix.xenclient.xenmgr.vm", "hdtype") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetHdtype obj v
    ("com.citrix.xenclient.xenmgr.vm", "hidden-in-switcher") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetHiddenInSwitcher obj v
    ("com.citrix.xenclient.xenmgr.vm", "hidden-in-ui") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetHiddenInUi obj v
    ("com.citrix.xenclient.xenmgr.vm", "hpet") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetHpet obj v
    ("com.citrix.xenclient.xenmgr.vm", "icbinn-path") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetIcbinnPath obj v
    ("com.citrix.xenclient.xenmgr.vm", "image-path") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetImagePath obj v
    ("com.citrix.xenclient.xenmgr.vm", "init-flask-label") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetInitFlaskLabel obj v
    ("com.citrix.xenclient.xenmgr.vm", "initrd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetInitrd obj v
    ("com.citrix.xenclient.xenmgr.vm", "initrd-extract") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetInitrdExtract obj v
    ("com.citrix.xenclient.xenmgr.vm", "keep-alive") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetKeepAlive obj v
    ("com.citrix.xenclient.xenmgr.vm", "kernel") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetKernel obj v
    ("com.citrix.xenclient.xenmgr.vm", "kernel-extract") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetKernelExtract obj v
    ("com.citrix.xenclient.xenmgr.vm", "display-handler-strict") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetDisplayHandlerStrict obj v
    ("com.citrix.xenclient.xenmgr.vm", "image_path_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetImagePathVg obj v
    ("com.citrix.xenclient.xenmgr.vm", "long_form_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetLongFormVg obj v
    ("com.citrix.xenclient.xenmgr.vm", "short_form_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetShortFormVg obj v
    ("com.citrix.xenclient.xenmgr.vm", "text_color_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetTextColorVg obj v
    ("com.citrix.xenclient.xenmgr.vm", "border_width_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetBorderWidthVg obj v
    ("com.citrix.xenclient.xenmgr.vm", "border_height_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetBorderHeightVg obj v
    ("com.citrix.xenclient.xenmgr.vm", "vglass_enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetVglassEnabled obj v
    ("com.citrix.xenclient.xenmgr.vm", "mosaic_mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetMosaicMode obj v
    ("com.citrix.xenclient.xenmgr.vm", "windowed_x") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetWindowedX obj v
    ("com.citrix.xenclient.xenmgr.vm", "windowed_y") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetWindowedY obj v
    ("com.citrix.xenclient.xenmgr.vm", "windowed_w") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetWindowedW obj v
    ("com.citrix.xenclient.xenmgr.vm", "windowed_h") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetWindowedH obj v
    ("com.citrix.xenclient.xenmgr.vm", "primary_domain_color") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPrimaryDomainColor obj v
    ("com.citrix.xenclient.xenmgr.vm", "secondary_domain_color") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetSecondaryDomainColor obj v
    ("com.citrix.xenclient.xenmgr.vm", "mosaic_vm_enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetMosaicVmEnabled obj v
    ("com.citrix.xenclient.xenmgr.vm", "memory") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetMemory obj v
    ("com.citrix.xenclient.xenmgr.vm", "memory-min") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetMemoryMin obj v
    ("com.citrix.xenclient.xenmgr.vm", "memory-static-max") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetMemoryStaticMax obj v
    ("com.citrix.xenclient.xenmgr.vm", "name") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetName obj v
    ("com.citrix.xenclient.xenmgr.vm", "native-experience") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetNativeExperience obj v
    ("com.citrix.xenclient.xenmgr.vm", "nestedhvm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetNestedhvm obj v
    ("com.citrix.xenclient.xenmgr.vm", "notify") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetNotify obj v
    ("com.citrix.xenclient.xenmgr.vm", "nx") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetNx obj v
    ("com.citrix.xenclient.xenmgr.vm", "oem-acpi-features") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetOemAcpiFeatures obj v
    ("com.citrix.xenclient.xenmgr.vm", "os") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetOs obj v
    ("com.citrix.xenclient.xenmgr.vm", "ovf-transport-iso") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetOvfTransportIso obj v
    ("com.citrix.xenclient.xenmgr.vm", "pae") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPae obj v
    ("com.citrix.xenclient.xenmgr.vm", "passthrough-io") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPassthroughIo obj v
    ("com.citrix.xenclient.xenmgr.vm", "passthrough-mmio") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPassthroughMmio obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-audio-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyAudioAccess obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-audio-recording") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyAudioRecording obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-cd-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyCdAccess obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-cd-recording") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyCdRecording obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-modify-vm-settings") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyModifyVmSettings obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-print-screen") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyPrintScreen obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-wired-networking") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyWiredNetworking obj v
    ("com.citrix.xenclient.xenmgr.vm", "policy-wireless-networking") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPolicyWirelessNetworking obj v
    ("com.citrix.xenclient.xenmgr.vm", "preserve-on-reboot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPreserveOnReboot obj v
    ("com.citrix.xenclient.xenmgr.vm", "provides-default-network-backend") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetProvidesDefaultNetworkBackend obj v
    ("com.citrix.xenclient.xenmgr.vm", "provides-graphics-fallback") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetProvidesGraphicsFallback obj v
    ("com.citrix.xenclient.xenmgr.vm", "provides-network-backend") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetProvidesNetworkBackend obj v
    ("com.citrix.xenclient.xenmgr.vm", "pv-addons") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPvAddons obj v
    ("com.citrix.xenclient.xenmgr.vm", "pv-addons-version") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetPvAddonsVersion obj v
    ("com.citrix.xenclient.xenmgr.vm", "qemu-dm-path") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetQemuDmPath obj v
    ("com.citrix.xenclient.xenmgr.vm", "qemu-dm-timeout") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetQemuDmTimeout obj v
    ("com.citrix.xenclient.xenmgr.vm", "ready") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetReady obj v
    ("com.citrix.xenclient.xenmgr.vm", "realm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRealm obj v
    ("com.citrix.xenclient.xenmgr.vm", "restrict-display-depth") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRestrictDisplayDepth obj v
    ("com.citrix.xenclient.xenmgr.vm", "restrict-display-res") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRestrictDisplayRes obj v
    ("com.citrix.xenclient.xenmgr.vm", "run-insteadof-start") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRunInsteadofStart obj v
    ("com.citrix.xenclient.xenmgr.vm", "run-on-acpi-state-change") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRunOnAcpiStateChange obj v
    ("com.citrix.xenclient.xenmgr.vm", "run-on-state-change") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRunOnStateChange obj v
    ("com.citrix.xenclient.xenmgr.vm", "run-post-create") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRunPostCreate obj v
    ("com.citrix.xenclient.xenmgr.vm", "run-pre-boot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRunPreBoot obj v
    ("com.citrix.xenclient.xenmgr.vm", "run-pre-delete") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetRunPreDelete obj v
    ("com.citrix.xenclient.xenmgr.vm", "s3-mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetS3Mode obj v
    ("com.citrix.xenclient.xenmgr.vm", "s4-mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetS4Mode obj v
    ("com.citrix.xenclient.xenmgr.vm", "seamless-id") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetSeamlessId obj v
    ("com.citrix.xenclient.xenmgr.vm", "seamless-traffic") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetSeamlessTraffic obj v
    ("com.citrix.xenclient.xenmgr.vm", "serial") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetSerial obj v
    ("com.citrix.xenclient.xenmgr.vm", "show-switcher") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetShowSwitcher obj v
    ("com.citrix.xenclient.xenmgr.vm", "shutdown-priority") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetShutdownPriority obj v
    ("com.citrix.xenclient.xenmgr.vm", "slot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetSlot obj v
    ("com.citrix.xenclient.xenmgr.vm", "sound") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetSound obj v
    ("com.citrix.xenclient.xenmgr.vm", "start-from-suspend-image") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetStartFromSuspendImage obj v
    ("com.citrix.xenclient.xenmgr.vm", "start-on-boot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetStartOnBoot obj v
    ("com.citrix.xenclient.xenmgr.vm", "start-on-boot-priority") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetStartOnBootPriority obj v
    ("com.citrix.xenclient.xenmgr.vm", "stubdom") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetStubdom obj v
    ("com.citrix.xenclient.xenmgr.vm", "stubdom-flask-label") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetStubdomFlaskLabel obj v
    ("com.citrix.xenclient.xenmgr.vm", "sync-uuid") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetSyncUuid obj v
    ("com.citrix.xenclient.xenmgr.vm", "time-offset") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetTimeOffset obj v
    ("com.citrix.xenclient.xenmgr.vm", "timer-mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetTimerMode obj v
    ("com.citrix.xenclient.xenmgr.vm", "track-dependencies") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetTrackDependencies obj v
    ("com.citrix.xenclient.xenmgr.vm", "type") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetType obj v
    ("com.citrix.xenclient.xenmgr.vm", "usb-auto-passthrough") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetUsbAutoPassthrough obj v
    ("com.citrix.xenclient.xenmgr.vm", "usb-control") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetUsbControl obj v
    ("com.citrix.xenclient.xenmgr.vm", "usb-enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetUsbEnabled obj v
    ("com.citrix.xenclient.xenmgr.vm", "usb-grab-devices") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetUsbGrabDevices obj v
    ("com.citrix.xenclient.xenmgr.vm", "vcpus") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetVcpus obj v
    ("com.citrix.xenclient.xenmgr.vm", "videoram") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetVideoram obj v
    ("com.citrix.xenclient.xenmgr.vm", "viridian") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetViridian obj v
    ("com.citrix.xenclient.xenmgr.vm", "virt-type") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetVirtType obj v
    ("com.citrix.xenclient.xenmgr.vm", "vkbd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetVkbd obj v
    ("com.citrix.xenclient.xenmgr.vm", "vsnd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetVsnd obj v
    ("com.citrix.xenclient.xenmgr.vm", "wired-network") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetWiredNetwork obj v
    ("com.citrix.xenclient.xenmgr.vm", "wireless-control") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetWirelessControl obj v
    ("com.citrix.xenclient.xenmgr.vm", "wireless-network") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetWirelessNetwork obj v
    ("com.citrix.xenclient.xenmgr.vm", "xci-cpuid-signature") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmSetXciCpuidSignature obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "acpi") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetAcpi obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "acpi-table") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetAcpiTable obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "amt-pt") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetAmtPt obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "apic") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetApic obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "argo") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetArgo obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "auto-s3-wake") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetAutoS3Wake obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "bios") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetBios obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "boot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetBoot obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "boot-sentinel") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetBootSentinel obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetCd obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cmd-line") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetCmdLine obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "control-platform-power-state") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetControlPlatformPowerState obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cores-per-socket") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetCoresPerSocket obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "cpuid") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetCpuid obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "crypto-key-dirs") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetCryptoKeyDirs obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "crypto-user") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetCryptoUser obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "description") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetDescription obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "display") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetDisplay obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "domstore-read-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreReadAccess obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "domstore-write-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreWriteAccess obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "download-progress") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetDownloadProgress obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "extra-hvm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetExtraHvm obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "extra-xenvm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetExtraXenvm obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "flask-label") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetFlaskLabel obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "gpu") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetGpu obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "greedy-pciback-bind") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetGreedyPcibackBind obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hap") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetHap obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hdtype") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetHdtype obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hidden-in-switcher") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInSwitcher obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hidden-in-ui") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInUi obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "hpet") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetHpet obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "display-handler-strict") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetDisplayHandlerStrict obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "image_path_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetImagePathVg obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "long_form_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetLongFormVg obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "short_form_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetShortFormVg obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "text_color_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetTextColorVg obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "border_width_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetBorderWidthVg obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "border_height_vg") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetBorderHeightVg obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vglass_enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetVglassEnabled obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "mosaic_mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetMosaicMode obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_x") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetWindowedX obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_y") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetWindowedY obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_w") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetWindowedW obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "windowed_h") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetWindowedH obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "primary_domain_color") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPrimaryDomainColor obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "secondary_domain_color") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetSecondaryDomainColor obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "mosaic_vm_enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetMosaicVmEnabled obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "icbinn-path") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetIcbinnPath obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "image-path") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetImagePath obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "init-flask-label") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetInitFlaskLabel obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "initrd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetInitrd obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "initrd-extract") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetInitrdExtract obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "keep-alive") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetKeepAlive obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "kernel") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetKernel obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "kernel-extract") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetKernelExtract obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "memory") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetMemory obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "memory-min") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetMemoryMin obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "memory-static-max") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetMemoryStaticMax obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "name") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetName obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "native-experience") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetNativeExperience obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "nestedhvm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetNestedhvm obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "notify") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetNotify obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "nx") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetNx obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "oem-acpi-features") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetOemAcpiFeatures obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "os") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetOs obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "ovf-transport-iso") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetOvfTransportIso obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "pae") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPae obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "passthrough-io") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughIo obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "passthrough-mmio") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughMmio obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-audio-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioAccess obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-audio-recording") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioRecording obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-cd-access") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdAccess obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-cd-recording") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdRecording obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-modify-vm-settings") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyModifyVmSettings obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-print-screen") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyPrintScreen obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-wired-networking") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWiredNetworking obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "policy-wireless-networking") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWirelessNetworking obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "preserve-on-reboot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPreserveOnReboot obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "provides-default-network-backend") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetProvidesDefaultNetworkBackend obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "provides-graphics-fallback") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetProvidesGraphicsFallback obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "provides-network-backend") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetProvidesNetworkBackend obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "pv-addons") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPvAddons obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "pv-addons-version") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetPvAddonsVersion obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "qemu-dm-path") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmPath obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "qemu-dm-timeout") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmTimeout obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "ready") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetReady obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "realm") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRealm obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "restrict-display-depth") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayDepth obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "restrict-display-res") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayRes obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-insteadof-start") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRunInsteadofStart obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-on-acpi-state-change") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRunOnAcpiStateChange obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-on-state-change") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRunOnStateChange obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-post-create") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRunPostCreate obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-pre-boot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRunPreBoot obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "run-pre-delete") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetRunPreDelete obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "s3-mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetS3Mode obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "s4-mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetS4Mode obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "seamless-id") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessId obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "seamless-traffic") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessTraffic obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "serial") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetSerial obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "show-switcher") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetShowSwitcher obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "shutdown-priority") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetShutdownPriority obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "slot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetSlot obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "sound") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetSound obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "start-from-suspend-image") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetStartFromSuspendImage obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "start-on-boot") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBoot obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "start-on-boot-priority") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBootPriority obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetStubdom obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom-cmdline") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetStubdomCmdline obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom-flask-label") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetStubdomFlaskLabel obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "stubdom-memory") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetStubdomMemory obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "sync-uuid") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetSyncUuid obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "time-offset") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetTimeOffset obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "timer-mode") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetTimerMode obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "track-dependencies") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetTrackDependencies obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "type") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetType obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-auto-passthrough") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetUsbAutoPassthrough obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-control") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetUsbControl obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-enabled") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetUsbEnabled obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "usb-grab-devices") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetUsbGrabDevices obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vcpus") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetVcpus obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "videoram") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetVideoram obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "viridian") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetViridian obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "virt-type") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetVirtType obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vkbd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetVkbd obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "vsnd") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetVsnd obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "wired-network") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetWiredNetwork obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "wireless-control") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetWirelessControl obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "wireless-network") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetWirelessNetwork obj v
    ("com.citrix.xenclient.xenmgr.vm.unrestricted", "xci-cpuid-signature") -> let Just v = fromVariant value in comCitrixXenclientXenmgrVmUnrestrictedSetXciCpuidSignature obj v
    _ -> error $ "property " ++ intf ++ "." ++ property ++ " is not writable, or does not exist"

orgFreedesktopDBusPropertiesGetAll :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> String -> m (Map String Variant)
orgFreedesktopDBusPropertiesGetAll obj intf =
  case intf of
    "com.citrix.xenclient.xenmgr.vm" -> rpcRunParallel [
          comCitrixXenclientXenmgrVmGetAcpi obj >>= \v -> return ("acpi", toVariant v)
        , comCitrixXenclientXenmgrVmGetAcpiState obj >>= \v -> return ("acpi-state", toVariant v)
        , comCitrixXenclientXenmgrVmGetAcpiTable obj >>= \v -> return ("acpi-table", toVariant v)
        , comCitrixXenclientXenmgrVmGetAmtPt obj >>= \v -> return ("amt-pt", toVariant v)
        , comCitrixXenclientXenmgrVmGetApic obj >>= \v -> return ("apic", toVariant v)
        , comCitrixXenclientXenmgrVmGetArgo obj >>= \v -> return ("argo", toVariant v)
        , comCitrixXenclientXenmgrVmGetAutoS3Wake obj >>= \v -> return ("auto-s3-wake", toVariant v)
        , comCitrixXenclientXenmgrVmGetAutostartPending obj >>= \v -> return ("autostart-pending", toVariant v)
        , comCitrixXenclientXenmgrVmGetBios obj >>= \v -> return ("bios", toVariant v)
        , comCitrixXenclientXenmgrVmGetBoot obj >>= \v -> return ("boot", toVariant v)
        , comCitrixXenclientXenmgrVmGetBootSentinel obj >>= \v -> return ("boot-sentinel", toVariant v)
        , comCitrixXenclientXenmgrVmGetCd obj >>= \v -> return ("cd", toVariant v)
        , comCitrixXenclientXenmgrVmGetCmdLine obj >>= \v -> return ("cmd-line", toVariant v)
        , comCitrixXenclientXenmgrVmGetControlPlatformPowerState obj >>= \v -> return ("control-platform-power-state", toVariant v)
        , comCitrixXenclientXenmgrVmGetCoresPerSocket obj >>= \v -> return ("cores-per-socket", toVariant v)
        , comCitrixXenclientXenmgrVmGetCpuid obj >>= \v -> return ("cpuid", toVariant v)
        , comCitrixXenclientXenmgrVmGetCryptoKeyDirs obj >>= \v -> return ("crypto-key-dirs", toVariant v)
        , comCitrixXenclientXenmgrVmGetCryptoUser obj >>= \v -> return ("crypto-user", toVariant v)
        , comCitrixXenclientXenmgrVmGetDependencies obj >>= \v -> return ("dependencies", toVariant v)
        , comCitrixXenclientXenmgrVmGetDescription obj >>= \v -> return ("description", toVariant v)
        , comCitrixXenclientXenmgrVmGetDisplay obj >>= \v -> return ("display", toVariant v)
        , comCitrixXenclientXenmgrVmGetDomid obj >>= \v -> return ("domid", toVariant v)
        , comCitrixXenclientXenmgrVmGetDomstoreReadAccess obj >>= \v -> return ("domstore-read-access", toVariant v)
        , comCitrixXenclientXenmgrVmGetDomstoreWriteAccess obj >>= \v -> return ("domstore-write-access", toVariant v)
        , comCitrixXenclientXenmgrVmGetDownloadProgress obj >>= \v -> return ("download-progress", toVariant v)
        , comCitrixXenclientXenmgrVmGetExtraHvm obj >>= \v -> return ("extra-hvm", toVariant v)
        , comCitrixXenclientXenmgrVmGetExtraXenvm obj >>= \v -> return ("extra-xenvm", toVariant v)
        , comCitrixXenclientXenmgrVmGetFlaskLabel obj >>= \v -> return ("flask-label", toVariant v)
        , comCitrixXenclientXenmgrVmGetGpu obj >>= \v -> return ("gpu", toVariant v)
        , comCitrixXenclientXenmgrVmGetGreedyPcibackBind obj >>= \v -> return ("greedy-pciback-bind", toVariant v)
        , comCitrixXenclientXenmgrVmGetHap obj >>= \v -> return ("hap", toVariant v)
        , comCitrixXenclientXenmgrVmGetHdtype obj >>= \v -> return ("hdtype", toVariant v)
        , comCitrixXenclientXenmgrVmGetHibernated obj >>= \v -> return ("hibernated", toVariant v)
        , comCitrixXenclientXenmgrVmGetHiddenInSwitcher obj >>= \v -> return ("hidden-in-switcher", toVariant v)
        , comCitrixXenclientXenmgrVmGetHiddenInUi obj >>= \v -> return ("hidden-in-ui", toVariant v)
        , comCitrixXenclientXenmgrVmGetHpet obj >>= \v -> return ("hpet", toVariant v)
        , comCitrixXenclientXenmgrVmGetIcbinnPath obj >>= \v -> return ("icbinn-path", toVariant v)
        , comCitrixXenclientXenmgrVmGetImagePath obj >>= \v -> return ("image-path", toVariant v)
        , comCitrixXenclientXenmgrVmGetInitFlaskLabel obj >>= \v -> return ("init-flask-label", toVariant v)
        , comCitrixXenclientXenmgrVmGetInitrd obj >>= \v -> return ("initrd", toVariant v)
        , comCitrixXenclientXenmgrVmGetInitrdExtract obj >>= \v -> return ("initrd-extract", toVariant v)
        , comCitrixXenclientXenmgrVmGetKeepAlive obj >>= \v -> return ("keep-alive", toVariant v)
        , comCitrixXenclientXenmgrVmGetKernel obj >>= \v -> return ("kernel", toVariant v)
        , comCitrixXenclientXenmgrVmGetKernelExtract obj >>= \v -> return ("kernel-extract", toVariant v)
        , comCitrixXenclientXenmgrVmGetDisplayHandlerStrict obj >>= \v -> return ("display-handler-strict", toVariant v)
        , comCitrixXenclientXenmgrVmGetImagePathVg obj >>= \v -> return ("image_path_vg", toVariant v)
        , comCitrixXenclientXenmgrVmGetLongFormVg obj >>= \v -> return ("long_form_vg", toVariant v)
        , comCitrixXenclientXenmgrVmGetShortFormVg obj >>= \v -> return ("short_form_vg", toVariant v)
        , comCitrixXenclientXenmgrVmGetTextColorVg obj >>= \v -> return ("text_color_vg", toVariant v)
        , comCitrixXenclientXenmgrVmGetBorderWidthVg obj >>= \v -> return ("border_width_vg", toVariant v)
        , comCitrixXenclientXenmgrVmGetBorderHeightVg obj >>= \v -> return ("border_height_vg", toVariant v)
        , comCitrixXenclientXenmgrVmGetVglassEnabled obj >>= \v -> return ("vglass_enabled", toVariant v)
        , comCitrixXenclientXenmgrVmGetMosaicMode obj >>= \v -> return ("mosaic_mode", toVariant v)
        , comCitrixXenclientXenmgrVmGetWindowedX obj >>= \v -> return ("windowed_x", toVariant v)
        , comCitrixXenclientXenmgrVmGetWindowedY obj >>= \v -> return ("windowed_y", toVariant v)
        , comCitrixXenclientXenmgrVmGetWindowedW obj >>= \v -> return ("windowed_w", toVariant v)
        , comCitrixXenclientXenmgrVmGetWindowedH obj >>= \v -> return ("windowed_h", toVariant v)
        , comCitrixXenclientXenmgrVmGetPrimaryDomainColor obj >>= \v -> return ("primary_domain_color", toVariant v)
        , comCitrixXenclientXenmgrVmGetSecondaryDomainColor obj >>= \v -> return ("secondary_domain_color", toVariant v)
        , comCitrixXenclientXenmgrVmGetMosaicVmEnabled obj >>= \v -> return ("mosaic_vm_enabled", toVariant v)
        , comCitrixXenclientXenmgrVmGetMac obj >>= \v -> return ("mac", toVariant v)
        , comCitrixXenclientXenmgrVmGetMeasured obj >>= \v -> return ("measured", toVariant v)
        , comCitrixXenclientXenmgrVmGetMemory obj >>= \v -> return ("memory", toVariant v)
        , comCitrixXenclientXenmgrVmGetMemoryMin obj >>= \v -> return ("memory-min", toVariant v)
        , comCitrixXenclientXenmgrVmGetMemoryStaticMax obj >>= \v -> return ("memory-static-max", toVariant v)
        , comCitrixXenclientXenmgrVmGetMemoryTarget obj >>= \v -> return ("memory-target", toVariant v)
        , comCitrixXenclientXenmgrVmGetName obj >>= \v -> return ("name", toVariant v)
        , comCitrixXenclientXenmgrVmGetNativeExperience obj >>= \v -> return ("native-experience", toVariant v)
        , comCitrixXenclientXenmgrVmGetNestedhvm obj >>= \v -> return ("nestedhvm", toVariant v)
        , comCitrixXenclientXenmgrVmGetNotify obj >>= \v -> return ("notify", toVariant v)
        , comCitrixXenclientXenmgrVmGetNx obj >>= \v -> return ("nx", toVariant v)
        , comCitrixXenclientXenmgrVmGetOemAcpiFeatures obj >>= \v -> return ("oem-acpi-features", toVariant v)
        , comCitrixXenclientXenmgrVmGetOs obj >>= \v -> return ("os", toVariant v)
        , comCitrixXenclientXenmgrVmGetOvfTransportIso obj >>= \v -> return ("ovf-transport-iso", toVariant v)
        , comCitrixXenclientXenmgrVmGetPae obj >>= \v -> return ("pae", toVariant v)
        , comCitrixXenclientXenmgrVmGetPassthroughIo obj >>= \v -> return ("passthrough-io", toVariant v)
        , comCitrixXenclientXenmgrVmGetPassthroughMmio obj >>= \v -> return ("passthrough-mmio", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyAudioAccess obj >>= \v -> return ("policy-audio-access", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyAudioRecording obj >>= \v -> return ("policy-audio-recording", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyCdAccess obj >>= \v -> return ("policy-cd-access", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyCdRecording obj >>= \v -> return ("policy-cd-recording", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyModifyVmSettings obj >>= \v -> return ("policy-modify-vm-settings", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyPrintScreen obj >>= \v -> return ("policy-print-screen", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyWiredNetworking obj >>= \v -> return ("policy-wired-networking", toVariant v)
        , comCitrixXenclientXenmgrVmGetPolicyWirelessNetworking obj >>= \v -> return ("policy-wireless-networking", toVariant v)
        , comCitrixXenclientXenmgrVmGetPorticaEnabled obj >>= \v -> return ("portica-enabled", toVariant v)
        , comCitrixXenclientXenmgrVmGetPorticaInstalled obj >>= \v -> return ("portica-installed", toVariant v)
        , comCitrixXenclientXenmgrVmGetPreserveOnReboot obj >>= \v -> return ("preserve-on-reboot", toVariant v)
        , comCitrixXenclientXenmgrVmGetPrivateSpace obj >>= \v -> return ("private-space", toVariant v)
        , comCitrixXenclientXenmgrVmGetProvidesDefaultNetworkBackend obj >>= \v -> return ("provides-default-network-backend", toVariant v)
        , comCitrixXenclientXenmgrVmGetProvidesGraphicsFallback obj >>= \v -> return ("provides-graphics-fallback", toVariant v)
        , comCitrixXenclientXenmgrVmGetProvidesNetworkBackend obj >>= \v -> return ("provides-network-backend", toVariant v)
        , comCitrixXenclientXenmgrVmGetPvAddons obj >>= \v -> return ("pv-addons", toVariant v)
        , comCitrixXenclientXenmgrVmGetPvAddonsVersion obj >>= \v -> return ("pv-addons-version", toVariant v)
        , comCitrixXenclientXenmgrVmGetQemuDmPath obj >>= \v -> return ("qemu-dm-path", toVariant v)
        , comCitrixXenclientXenmgrVmGetQemuDmTimeout obj >>= \v -> return ("qemu-dm-timeout", toVariant v)
        , comCitrixXenclientXenmgrVmGetReady obj >>= \v -> return ("ready", toVariant v)
        , comCitrixXenclientXenmgrVmGetRealm obj >>= \v -> return ("realm", toVariant v)
        , comCitrixXenclientXenmgrVmGetRestrictDisplayDepth obj >>= \v -> return ("restrict-display-depth", toVariant v)
        , comCitrixXenclientXenmgrVmGetRestrictDisplayRes obj >>= \v -> return ("restrict-display-res", toVariant v)
        , comCitrixXenclientXenmgrVmGetRunInsteadofStart obj >>= \v -> return ("run-insteadof-start", toVariant v)
        , comCitrixXenclientXenmgrVmGetRunOnAcpiStateChange obj >>= \v -> return ("run-on-acpi-state-change", toVariant v)
        , comCitrixXenclientXenmgrVmGetRunOnStateChange obj >>= \v -> return ("run-on-state-change", toVariant v)
        , comCitrixXenclientXenmgrVmGetRunPostCreate obj >>= \v -> return ("run-post-create", toVariant v)
        , comCitrixXenclientXenmgrVmGetRunPreBoot obj >>= \v -> return ("run-pre-boot", toVariant v)
        , comCitrixXenclientXenmgrVmGetRunPreDelete obj >>= \v -> return ("run-pre-delete", toVariant v)
        , comCitrixXenclientXenmgrVmGetS3Mode obj >>= \v -> return ("s3-mode", toVariant v)
        , comCitrixXenclientXenmgrVmGetS4Mode obj >>= \v -> return ("s4-mode", toVariant v)
        , comCitrixXenclientXenmgrVmGetSeamlessId obj >>= \v -> return ("seamless-id", toVariant v)
        , comCitrixXenclientXenmgrVmGetSeamlessMouseLeft obj >>= \v -> return ("seamless-mouse-left", toVariant v)
        , comCitrixXenclientXenmgrVmGetSeamlessMouseRight obj >>= \v -> return ("seamless-mouse-right", toVariant v)
        , comCitrixXenclientXenmgrVmGetSeamlessTraffic obj >>= \v -> return ("seamless-traffic", toVariant v)
        , comCitrixXenclientXenmgrVmGetSerial obj >>= \v -> return ("serial", toVariant v)
        , comCitrixXenclientXenmgrVmGetShowSwitcher obj >>= \v -> return ("show-switcher", toVariant v)
        , comCitrixXenclientXenmgrVmGetShutdownPriority obj >>= \v -> return ("shutdown-priority", toVariant v)
        , comCitrixXenclientXenmgrVmGetSlot obj >>= \v -> return ("slot", toVariant v)
        , comCitrixXenclientXenmgrVmGetSound obj >>= \v -> return ("sound", toVariant v)
        , comCitrixXenclientXenmgrVmGetStartFromSuspendImage obj >>= \v -> return ("start-from-suspend-image", toVariant v)
        , comCitrixXenclientXenmgrVmGetStartOnBoot obj >>= \v -> return ("start-on-boot", toVariant v)
        , comCitrixXenclientXenmgrVmGetStartOnBootPriority obj >>= \v -> return ("start-on-boot-priority", toVariant v)
        , comCitrixXenclientXenmgrVmGetState obj >>= \v -> return ("state", toVariant v)
        , comCitrixXenclientXenmgrVmGetStubdom obj >>= \v -> return ("stubdom", toVariant v)
        , comCitrixXenclientXenmgrVmGetStubdomFlaskLabel obj >>= \v -> return ("stubdom-flask-label", toVariant v)
        , comCitrixXenclientXenmgrVmGetSyncUuid obj >>= \v -> return ("sync-uuid", toVariant v)
        , comCitrixXenclientXenmgrVmGetTimeOffset obj >>= \v -> return ("time-offset", toVariant v)
        , comCitrixXenclientXenmgrVmGetTimerMode obj >>= \v -> return ("timer-mode", toVariant v)
        , comCitrixXenclientXenmgrVmGetTrackDependencies obj >>= \v -> return ("track-dependencies", toVariant v)
        , comCitrixXenclientXenmgrVmGetType obj >>= \v -> return ("type", toVariant v)
        , comCitrixXenclientXenmgrVmGetUsbAutoPassthrough obj >>= \v -> return ("usb-auto-passthrough", toVariant v)
        , comCitrixXenclientXenmgrVmGetUsbControl obj >>= \v -> return ("usb-control", toVariant v)
        , comCitrixXenclientXenmgrVmGetUsbEnabled obj >>= \v -> return ("usb-enabled", toVariant v)
        , comCitrixXenclientXenmgrVmGetUsbGrabDevices obj >>= \v -> return ("usb-grab-devices", toVariant v)
        , comCitrixXenclientXenmgrVmGetUuid obj >>= \v -> return ("uuid", toVariant v)
        , comCitrixXenclientXenmgrVmGetVcpus obj >>= \v -> return ("vcpus", toVariant v)
        , comCitrixXenclientXenmgrVmGetVideoram obj >>= \v -> return ("videoram", toVariant v)
        , comCitrixXenclientXenmgrVmGetViridian obj >>= \v -> return ("viridian", toVariant v)
        , comCitrixXenclientXenmgrVmGetVirtType obj >>= \v -> return ("virt-type", toVariant v)
        , comCitrixXenclientXenmgrVmGetVkbd obj >>= \v -> return ("vkbd", toVariant v)
        , comCitrixXenclientXenmgrVmGetVsnd obj >>= \v -> return ("vsnd", toVariant v)
        , comCitrixXenclientXenmgrVmGetWiredNetwork obj >>= \v -> return ("wired-network", toVariant v)
        , comCitrixXenclientXenmgrVmGetWirelessControl obj >>= \v -> return ("wireless-control", toVariant v)
        , comCitrixXenclientXenmgrVmGetWirelessNetwork obj >>= \v -> return ("wireless-network", toVariant v)
        , comCitrixXenclientXenmgrVmGetXciCpuidSignature obj >>= \v -> return ("xci-cpuid-signature", toVariant v)
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.vm.auth" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.vm.pci" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.vm.product" -> rpcRunParallel [
      ] >>= return . Map.fromList
    "com.citrix.xenclient.xenmgr.vm.unrestricted" -> rpcRunParallel [
          comCitrixXenclientXenmgrVmUnrestrictedGetAcpi obj >>= \v -> return ("acpi", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetAcpiState obj >>= \v -> return ("acpi-state", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetAcpiTable obj >>= \v -> return ("acpi-table", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetAmtPt obj >>= \v -> return ("amt-pt", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetApic obj >>= \v -> return ("apic", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetArgo obj >>= \v -> return ("argo", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetAutoS3Wake obj >>= \v -> return ("auto-s3-wake", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetAutostartPending obj >>= \v -> return ("autostart-pending", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetBios obj >>= \v -> return ("bios", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetBoot obj >>= \v -> return ("boot", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetBootSentinel obj >>= \v -> return ("boot-sentinel", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetCd obj >>= \v -> return ("cd", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetCmdLine obj >>= \v -> return ("cmd-line", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetControlPlatformPowerState obj >>= \v -> return ("control-platform-power-state", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetCoresPerSocket obj >>= \v -> return ("cores-per-socket", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetCpuid obj >>= \v -> return ("cpuid", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetCryptoKeyDirs obj >>= \v -> return ("crypto-key-dirs", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetCryptoUser obj >>= \v -> return ("crypto-user", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDependencies obj >>= \v -> return ("dependencies", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDescription obj >>= \v -> return ("description", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDisplay obj >>= \v -> return ("display", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDomid obj >>= \v -> return ("domid", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreReadAccess obj >>= \v -> return ("domstore-read-access", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreWriteAccess obj >>= \v -> return ("domstore-write-access", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDownloadProgress obj >>= \v -> return ("download-progress", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetExtraHvm obj >>= \v -> return ("extra-hvm", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetExtraXenvm obj >>= \v -> return ("extra-xenvm", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetFlaskLabel obj >>= \v -> return ("flask-label", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetGpu obj >>= \v -> return ("gpu", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetGreedyPcibackBind obj >>= \v -> return ("greedy-pciback-bind", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetHap obj >>= \v -> return ("hap", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetHdtype obj >>= \v -> return ("hdtype", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetHibernated obj >>= \v -> return ("hibernated", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInSwitcher obj >>= \v -> return ("hidden-in-switcher", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInUi obj >>= \v -> return ("hidden-in-ui", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetHpet obj >>= \v -> return ("hpet", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetDisplayHandlerStrict obj >>= \v -> return ("display-handler-strict", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStubDomid obj >>= \v -> return ("stub_domid", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetImagePathVg obj >>= \v -> return ("image_path_vg", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetLongFormVg obj >>= \v -> return ("long_form_vg", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetShortFormVg obj >>= \v -> return ("short_form_vg", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetTextColorVg obj >>= \v -> return ("text_color_vg", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetBorderWidthVg obj >>= \v -> return ("border_width_vg", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetBorderHeightVg obj >>= \v -> return ("border_height_vg", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetVglassEnabled obj >>= \v -> return ("vglass_enabled", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMosaicMode obj >>= \v -> return ("mosaic_mode", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedX obj >>= \v -> return ("windowed_x", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedY obj >>= \v -> return ("windowed_y", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedW obj >>= \v -> return ("windowed_w", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedH obj >>= \v -> return ("windowed_h", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPrimaryDomainColor obj >>= \v -> return ("primary_domain_color", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSecondaryDomainColor obj >>= \v -> return ("secondary_domain_color", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMosaicVmEnabled obj >>= \v -> return ("mosaic_vm_enabled", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetIcbinnPath obj >>= \v -> return ("icbinn-path", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetImagePath obj >>= \v -> return ("image-path", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetInitFlaskLabel obj >>= \v -> return ("init-flask-label", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetInitrd obj >>= \v -> return ("initrd", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetInitrdExtract obj >>= \v -> return ("initrd-extract", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetKeepAlive obj >>= \v -> return ("keep-alive", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetKernel obj >>= \v -> return ("kernel", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetKernelExtract obj >>= \v -> return ("kernel-extract", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMac obj >>= \v -> return ("mac", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMeasured obj >>= \v -> return ("measured", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMemory obj >>= \v -> return ("memory", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryMin obj >>= \v -> return ("memory-min", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryStaticMax obj >>= \v -> return ("memory-static-max", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryTarget obj >>= \v -> return ("memory-target", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetName obj >>= \v -> return ("name", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetNativeExperience obj >>= \v -> return ("native-experience", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetNestedhvm obj >>= \v -> return ("nestedhvm", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetNotify obj >>= \v -> return ("notify", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetNx obj >>= \v -> return ("nx", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetOemAcpiFeatures obj >>= \v -> return ("oem-acpi-features", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetOs obj >>= \v -> return ("os", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetOvfTransportIso obj >>= \v -> return ("ovf-transport-iso", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPae obj >>= \v -> return ("pae", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughIo obj >>= \v -> return ("passthrough-io", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughMmio obj >>= \v -> return ("passthrough-mmio", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioAccess obj >>= \v -> return ("policy-audio-access", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioRecording obj >>= \v -> return ("policy-audio-recording", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdAccess obj >>= \v -> return ("policy-cd-access", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdRecording obj >>= \v -> return ("policy-cd-recording", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyModifyVmSettings obj >>= \v -> return ("policy-modify-vm-settings", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyPrintScreen obj >>= \v -> return ("policy-print-screen", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWiredNetworking obj >>= \v -> return ("policy-wired-networking", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWirelessNetworking obj >>= \v -> return ("policy-wireless-networking", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPorticaEnabled obj >>= \v -> return ("portica-enabled", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPorticaInstalled obj >>= \v -> return ("portica-installed", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPreserveOnReboot obj >>= \v -> return ("preserve-on-reboot", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPrivateSpace obj >>= \v -> return ("private-space", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesDefaultNetworkBackend obj >>= \v -> return ("provides-default-network-backend", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesGraphicsFallback obj >>= \v -> return ("provides-graphics-fallback", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesNetworkBackend obj >>= \v -> return ("provides-network-backend", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPvAddons obj >>= \v -> return ("pv-addons", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetPvAddonsVersion obj >>= \v -> return ("pv-addons-version", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmPath obj >>= \v -> return ("qemu-dm-path", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmTimeout obj >>= \v -> return ("qemu-dm-timeout", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetReady obj >>= \v -> return ("ready", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRealm obj >>= \v -> return ("realm", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayDepth obj >>= \v -> return ("restrict-display-depth", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayRes obj >>= \v -> return ("restrict-display-res", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRunInsteadofStart obj >>= \v -> return ("run-insteadof-start", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRunOnAcpiStateChange obj >>= \v -> return ("run-on-acpi-state-change", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRunOnStateChange obj >>= \v -> return ("run-on-state-change", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRunPostCreate obj >>= \v -> return ("run-post-create", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRunPreBoot obj >>= \v -> return ("run-pre-boot", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetRunPreDelete obj >>= \v -> return ("run-pre-delete", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetS3Mode obj >>= \v -> return ("s3-mode", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetS4Mode obj >>= \v -> return ("s4-mode", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessId obj >>= \v -> return ("seamless-id", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseLeft obj >>= \v -> return ("seamless-mouse-left", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseRight obj >>= \v -> return ("seamless-mouse-right", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessTraffic obj >>= \v -> return ("seamless-traffic", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSerial obj >>= \v -> return ("serial", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetShowSwitcher obj >>= \v -> return ("show-switcher", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetShutdownPriority obj >>= \v -> return ("shutdown-priority", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSlot obj >>= \v -> return ("slot", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSound obj >>= \v -> return ("sound", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStartFromSuspendImage obj >>= \v -> return ("start-from-suspend-image", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBoot obj >>= \v -> return ("start-on-boot", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBootPriority obj >>= \v -> return ("start-on-boot-priority", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetState obj >>= \v -> return ("state", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStubdom obj >>= \v -> return ("stubdom", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomCmdline obj >>= \v -> return ("stubdom-cmdline", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomFlaskLabel obj >>= \v -> return ("stubdom-flask-label", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomMemory obj >>= \v -> return ("stubdom-memory", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetSyncUuid obj >>= \v -> return ("sync-uuid", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetTimeOffset obj >>= \v -> return ("time-offset", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetTimerMode obj >>= \v -> return ("timer-mode", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetTrackDependencies obj >>= \v -> return ("track-dependencies", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetType obj >>= \v -> return ("type", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetUsbAutoPassthrough obj >>= \v -> return ("usb-auto-passthrough", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetUsbControl obj >>= \v -> return ("usb-control", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetUsbEnabled obj >>= \v -> return ("usb-enabled", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetUsbGrabDevices obj >>= \v -> return ("usb-grab-devices", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetUuid obj >>= \v -> return ("uuid", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetVcpus obj >>= \v -> return ("vcpus", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetVideoram obj >>= \v -> return ("videoram", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetViridian obj >>= \v -> return ("viridian", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetVirtType obj >>= \v -> return ("virt-type", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetVkbd obj >>= \v -> return ("vkbd", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetVsnd obj >>= \v -> return ("vsnd", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetWiredNetwork obj >>= \v -> return ("wired-network", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetWirelessControl obj >>= \v -> return ("wireless-control", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetWirelessNetwork obj >>= \v -> return ("wireless-network", toVariant v)
        , comCitrixXenclientXenmgrVmUnrestrictedGetXciCpuidSignature obj >>= \v -> return ("xci-cpuid-signature", toVariant v)
      ] >>= return . Map.fromList
    _ -> error $ "unknown interface " ++ intf

-- Returns a list of interfaces for exporting, given the server data type.
interfaces :: ((FreezeIOM ctx i m, MonadRpc e m)) => XenmgrVmServer m -> [RpcInterface m]
interfaces server_ =
  [
    RpcInterface "com.citrix.xenclient.xenmgr.vm" [
        rpcMethod "add_argo_firewall_rule" "rule:s" "" (stubComCitrixXenclientXenmgrVmAddArgoFirewallRule server_)
      , rpcMethod "add_disk" "" "path:o" (stubComCitrixXenclientXenmgrVmAddDisk server_)
      , rpcMethod "add_net_firewall_rule" "id:i,direction:s,remoteip:s,extra:s" "" (stubComCitrixXenclientXenmgrVmAddNetFirewallRule server_)
      , rpcMethod "add_nic" "" "path:o" (stubComCitrixXenclientXenmgrVmAddNic server_)
      , rpcMethod "create_child_service_vm" "template:s" "path:o" (stubComCitrixXenclientXenmgrVmCreateChildServiceVm server_)
      , rpcMethod "delete" "" "" (stubComCitrixXenclientXenmgrVmDelete server_)
      , rpcMethod "delete_argo_firewall_rule" "rule:s" "" (stubComCitrixXenclientXenmgrVmDeleteArgoFirewallRule server_)
      , rpcMethod "delete_net_firewall_rule" "id:i" "" (stubComCitrixXenclientXenmgrVmDeleteNetFirewallRule server_)
      , rpcMethod "destroy" "" "" (stubComCitrixXenclientXenmgrVmDestroy server_)
      , rpcMethod "get_db_key" "key:s" "value:s" (stubComCitrixXenclientXenmgrVmGetDbKey server_)
      , rpcMethod "get_domstore_key" "key:s" "value:s" (stubComCitrixXenclientXenmgrVmGetDomstoreKey server_)
      , rpcMethod "hibernate" "" "" (stubComCitrixXenclientXenmgrVmHibernate server_)
      , rpcMethod "list_argo_firewall_rules" "" "rules:as" (stubComCitrixXenclientXenmgrVmListArgoFirewallRules server_)
      , rpcMethod "list_disks" "" ":ao" (stubComCitrixXenclientXenmgrVmListDisks server_)
      , rpcMethod "list_net_firewall_rules" "" "rules:aa{ss}" (stubComCitrixXenclientXenmgrVmListNetFirewallRules server_)
      , rpcMethod "list_nics" "" ":ao" (stubComCitrixXenclientXenmgrVmListNics server_)
      , rpcMethod "pause" "" "" (stubComCitrixXenclientXenmgrVmPause server_)
      , rpcMethod "read_icon" "" "bytes:ay" (stubComCitrixXenclientXenmgrVmReadIcon server_)
      , rpcMethod "reboot" "" "" (stubComCitrixXenclientXenmgrVmReboot server_)
      , rpcMethod "resume" "" "" (stubComCitrixXenclientXenmgrVmResume server_)
      , rpcMethod "resume_from_file" "file:s" "" (stubComCitrixXenclientXenmgrVmResumeFromFile server_)
      , rpcMethod "set_db_key" "key:s,value:s" "" (stubComCitrixXenclientXenmgrVmSetDbKey server_)
      , rpcMethod "set_domstore_key" "key:s,value:s" "" (stubComCitrixXenclientXenmgrVmSetDomstoreKey server_)
      , rpcMethod "shutdown" "" "" (stubComCitrixXenclientXenmgrVmShutdown server_)
      , rpcMethod "sleep" "" "" (stubComCitrixXenclientXenmgrVmSleep server_)
      , rpcMethod "start" "" "" (stubComCitrixXenclientXenmgrVmStart server_)
      , rpcMethod "start_internal" "" "" (stubComCitrixXenclientXenmgrVmStartInternal server_)
      , rpcMethod "suspend_to_file" "file:s" "" (stubComCitrixXenclientXenmgrVmSuspendToFile server_)
      , rpcMethod "switch" "" "" (stubComCitrixXenclientXenmgrVmSwitch server_)
      , rpcMethod "unpause" "" "" (stubComCitrixXenclientXenmgrVmUnpause server_)
    ] [
        rpcProperty "acpi" "b" ReadWrite
      , rpcProperty "acpi-state" "i" Read
      , rpcProperty "acpi-table" "b" ReadWrite
      , rpcProperty "amt-pt" "b" ReadWrite
      , rpcProperty "apic" "b" ReadWrite
      , rpcProperty "argo" "b" ReadWrite
      , rpcProperty "auto-s3-wake" "b" ReadWrite
      , rpcProperty "autostart-pending" "b" Read
      , rpcProperty "bios" "s" ReadWrite
      , rpcProperty "boot" "s" ReadWrite
      , rpcProperty "boot-sentinel" "s" ReadWrite
      , rpcProperty "cd" "s" ReadWrite
      , rpcProperty "cmd-line" "s" ReadWrite
      , rpcProperty "control-platform-power-state" "b" ReadWrite
      , rpcProperty "cores-per-socket" "i" ReadWrite
      , rpcProperty "cpuid" "s" ReadWrite
      , rpcProperty "crypto-key-dirs" "s" ReadWrite
      , rpcProperty "crypto-user" "s" ReadWrite
      , rpcProperty "dependencies" "ao" Read
      , rpcProperty "description" "s" ReadWrite
      , rpcProperty "display" "s" ReadWrite
      , rpcProperty "domid" "i" Read
      , rpcProperty "domstore-read-access" "b" ReadWrite
      , rpcProperty "domstore-write-access" "b" ReadWrite
      , rpcProperty "download-progress" "i" ReadWrite
      , rpcProperty "extra-hvm" "s" ReadWrite
      , rpcProperty "extra-xenvm" "s" ReadWrite
      , rpcProperty "flask-label" "s" ReadWrite
      , rpcProperty "gpu" "s" ReadWrite
      , rpcProperty "greedy-pciback-bind" "b" ReadWrite
      , rpcProperty "hap" "b" ReadWrite
      , rpcProperty "hdtype" "s" ReadWrite
      , rpcProperty "hibernated" "b" Read
      , rpcProperty "hidden-in-switcher" "b" ReadWrite
      , rpcProperty "hidden-in-ui" "b" ReadWrite
      , rpcProperty "hpet" "b" ReadWrite
      , rpcProperty "icbinn-path" "s" ReadWrite
      , rpcProperty "image-path" "s" ReadWrite
      , rpcProperty "init-flask-label" "s" ReadWrite
      , rpcProperty "initrd" "s" ReadWrite
      , rpcProperty "initrd-extract" "s" ReadWrite
      , rpcProperty "keep-alive" "b" ReadWrite
      , rpcProperty "kernel" "s" ReadWrite
      , rpcProperty "kernel-extract" "s" ReadWrite
      , rpcProperty "display-handler-strict" "b" ReadWrite
      , rpcProperty "image_path_vg" "s" ReadWrite
      , rpcProperty "long_form_vg" "s" ReadWrite
      , rpcProperty "short_form_vg" "s" ReadWrite
      , rpcProperty "text_color_vg" "s" ReadWrite
      , rpcProperty "border_width_vg" "i" ReadWrite
      , rpcProperty "border_height_vg" "i" ReadWrite
      , rpcProperty "vglass_enabled" "b" ReadWrite
      , rpcProperty "mosaic_mode" "i" ReadWrite
      , rpcProperty "windowed_x" "i" ReadWrite
      , rpcProperty "windowed_y" "i" ReadWrite
      , rpcProperty "windowed_w" "i" ReadWrite
      , rpcProperty "windowed_h" "i" ReadWrite
      , rpcProperty "primary_domain_color" "s" ReadWrite
      , rpcProperty "secondary_domain_color" "s" ReadWrite
      , rpcProperty "mosaic_vm_enabled" "b" ReadWrite
      , rpcProperty "mac" "s" Read
      , rpcProperty "measured" "b" Read
      , rpcProperty "memory" "i" ReadWrite
      , rpcProperty "memory-min" "i" ReadWrite
      , rpcProperty "memory-static-max" "i" ReadWrite
      , rpcProperty "memory-target" "i" Read
      , rpcProperty "name" "s" ReadWrite
      , rpcProperty "native-experience" "b" ReadWrite
      , rpcProperty "nestedhvm" "b" ReadWrite
      , rpcProperty "notify" "s" ReadWrite
      , rpcProperty "nx" "b" ReadWrite
      , rpcProperty "oem-acpi-features" "b" ReadWrite
      , rpcProperty "os" "s" ReadWrite
      , rpcProperty "ovf-transport-iso" "b" ReadWrite
      , rpcProperty "pae" "b" ReadWrite
      , rpcProperty "passthrough-io" "s" ReadWrite
      , rpcProperty "passthrough-mmio" "s" ReadWrite
      , rpcProperty "policy-audio-access" "b" ReadWrite
      , rpcProperty "policy-audio-recording" "b" ReadWrite
      , rpcProperty "policy-cd-access" "b" ReadWrite
      , rpcProperty "policy-cd-recording" "b" ReadWrite
      , rpcProperty "policy-modify-vm-settings" "b" ReadWrite
      , rpcProperty "policy-print-screen" "b" ReadWrite
      , rpcProperty "policy-wired-networking" "b" ReadWrite
      , rpcProperty "policy-wireless-networking" "b" ReadWrite
      , rpcProperty "portica-enabled" "i" Read
      , rpcProperty "portica-installed" "b" Read
      , rpcProperty "preserve-on-reboot" "b" ReadWrite
      , rpcProperty "private-space" "i" Read
      , rpcProperty "provides-default-network-backend" "b" ReadWrite
      , rpcProperty "provides-graphics-fallback" "b" ReadWrite
      , rpcProperty "provides-network-backend" "b" ReadWrite
      , rpcProperty "pv-addons" "b" ReadWrite
      , rpcProperty "pv-addons-version" "s" ReadWrite
      , rpcProperty "qemu-dm-path" "s" ReadWrite
      , rpcProperty "qemu-dm-timeout" "i" ReadWrite
      , rpcProperty "ready" "b" ReadWrite
      , rpcProperty "realm" "s" ReadWrite
      , rpcProperty "restrict-display-depth" "b" ReadWrite
      , rpcProperty "restrict-display-res" "b" ReadWrite
      , rpcProperty "run-insteadof-start" "s" ReadWrite
      , rpcProperty "run-on-acpi-state-change" "s" ReadWrite
      , rpcProperty "run-on-state-change" "s" ReadWrite
      , rpcProperty "run-post-create" "s" ReadWrite
      , rpcProperty "run-pre-boot" "s" ReadWrite
      , rpcProperty "run-pre-delete" "s" ReadWrite
      , rpcProperty "s3-mode" "s" ReadWrite
      , rpcProperty "s4-mode" "s" ReadWrite
      , rpcProperty "seamless-id" "s" ReadWrite
      , rpcProperty "seamless-mouse-left" "i" Read
      , rpcProperty "seamless-mouse-right" "i" Read
      , rpcProperty "seamless-traffic" "b" ReadWrite
      , rpcProperty "serial" "s" ReadWrite
      , rpcProperty "show-switcher" "b" ReadWrite
      , rpcProperty "shutdown-priority" "i" ReadWrite
      , rpcProperty "slot" "i" ReadWrite
      , rpcProperty "sound" "s" ReadWrite
      , rpcProperty "start-from-suspend-image" "s" ReadWrite
      , rpcProperty "start-on-boot" "b" ReadWrite
      , rpcProperty "start-on-boot-priority" "i" ReadWrite
      , rpcProperty "state" "s" Read
      , rpcProperty "stubdom" "b" ReadWrite
      , rpcProperty "stubdom-flask-label" "s" ReadWrite
      , rpcProperty "sync-uuid" "s" ReadWrite
      , rpcProperty "time-offset" "i" ReadWrite
      , rpcProperty "timer-mode" "s" ReadWrite
      , rpcProperty "track-dependencies" "b" ReadWrite
      , rpcProperty "type" "s" ReadWrite
      , rpcProperty "usb-auto-passthrough" "b" ReadWrite
      , rpcProperty "usb-control" "b" ReadWrite
      , rpcProperty "usb-enabled" "b" ReadWrite
      , rpcProperty "usb-grab-devices" "b" ReadWrite
      , rpcProperty "uuid" "s" Read
      , rpcProperty "vcpus" "i" ReadWrite
      , rpcProperty "videoram" "i" ReadWrite
      , rpcProperty "viridian" "b" ReadWrite
      , rpcProperty "virt-type" "s" ReadWrite
      , rpcProperty "vkbd" "b" ReadWrite
      , rpcProperty "vsnd" "b" ReadWrite
      , rpcProperty "wired-network" "s" ReadWrite
      , rpcProperty "wireless-control" "b" ReadWrite
      , rpcProperty "wireless-network" "s" ReadWrite
      , rpcProperty "xci-cpuid-signature" "b" ReadWrite
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.vm.auth" [
        rpcMethod "auth" "" "" (stubComCitrixXenclientXenmgrVmAuthAuth server_)
      , rpcMethod "auth_required" "" "required:b" (stubComCitrixXenclientXenmgrVmAuthAuthRequired server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.vm.pci" [
        rpcMethod "add_pt_rule" "pciclass:s,vendor_id:s,device_id:s" "" (stubComCitrixXenclientXenmgrVmPciAddPtRule server_)
      , rpcMethod "add_pt_rule_bdf" "bdf:s" "" (stubComCitrixXenclientXenmgrVmPciAddPtRuleBdf server_)
      , rpcMethod "delete_pt_rule" "pciclass:s,vendor_id:s,device_id:s" "" (stubComCitrixXenclientXenmgrVmPciDeletePtRule server_)
      , rpcMethod "delete_pt_rule_bdf" "bdf:s" "" (stubComCitrixXenclientXenmgrVmPciDeletePtRuleBdf server_)
      , rpcMethod "list_pt_pci_devices" "" ":aa{ss}" (stubComCitrixXenclientXenmgrVmPciListPtPciDevices server_)
      , rpcMethod "list_pt_rules" "" ":aa{ss}" (stubComCitrixXenclientXenmgrVmPciListPtRules server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.vm.product" [
        rpcMethod "get_ovf_env_xml" "" "value:s" (stubComCitrixXenclientXenmgrVmProductGetOvfEnvXml server_)
      , rpcMethod "get_product_property" "property_id:s" "value:s" (stubComCitrixXenclientXenmgrVmProductGetProductProperty server_)
      , rpcMethod "list_product_properties" "" "product_properties:aa{ss}" (stubComCitrixXenclientXenmgrVmProductListProductProperties server_)
      , rpcMethod "set_product_property" "property_id:s,value:s" "" (stubComCitrixXenclientXenmgrVmProductSetProductProperty server_)
    ] [
    ],
    RpcInterface "com.citrix.xenclient.xenmgr.vm.unrestricted" [
    ] [
        rpcProperty "acpi" "b" ReadWrite
      , rpcProperty "acpi-state" "i" Read
      , rpcProperty "acpi-table" "b" ReadWrite
      , rpcProperty "amt-pt" "b" ReadWrite
      , rpcProperty "apic" "b" ReadWrite
      , rpcProperty "argo" "b" ReadWrite
      , rpcProperty "auto-s3-wake" "b" ReadWrite
      , rpcProperty "autostart-pending" "b" Read
      , rpcProperty "bios" "s" ReadWrite
      , rpcProperty "boot" "s" ReadWrite
      , rpcProperty "boot-sentinel" "s" ReadWrite
      , rpcProperty "cd" "s" ReadWrite
      , rpcProperty "cmd-line" "s" ReadWrite
      , rpcProperty "control-platform-power-state" "b" ReadWrite
      , rpcProperty "cores-per-socket" "i" ReadWrite
      , rpcProperty "cpuid" "s" ReadWrite
      , rpcProperty "crypto-key-dirs" "s" ReadWrite
      , rpcProperty "crypto-user" "s" ReadWrite
      , rpcProperty "dependencies" "ao" Read
      , rpcProperty "description" "s" ReadWrite
      , rpcProperty "display" "s" ReadWrite
      , rpcProperty "domid" "i" Read
      , rpcProperty "domstore-read-access" "b" ReadWrite
      , rpcProperty "domstore-write-access" "b" ReadWrite
      , rpcProperty "download-progress" "i" ReadWrite
      , rpcProperty "extra-hvm" "s" ReadWrite
      , rpcProperty "extra-xenvm" "s" ReadWrite
      , rpcProperty "flask-label" "s" ReadWrite
      , rpcProperty "gpu" "s" ReadWrite
      , rpcProperty "greedy-pciback-bind" "b" ReadWrite
      , rpcProperty "hap" "b" ReadWrite
      , rpcProperty "hdtype" "s" ReadWrite
      , rpcProperty "hibernated" "b" Read
      , rpcProperty "hidden-in-switcher" "b" ReadWrite
      , rpcProperty "hidden-in-ui" "b" ReadWrite
      , rpcProperty "hpet" "b" ReadWrite
      , rpcProperty "display-handler-strict" "b" ReadWrite
      , rpcProperty "stub_domid" "i" Read
      , rpcProperty "image_path_vg" "s" ReadWrite
      , rpcProperty "long_form_vg" "s" ReadWrite
      , rpcProperty "short_form_vg" "s" ReadWrite
      , rpcProperty "text_color_vg" "s" ReadWrite
      , rpcProperty "border_width_vg" "i" ReadWrite
      , rpcProperty "border_height_vg" "i" ReadWrite
      , rpcProperty "vglass_enabled" "b" ReadWrite
      , rpcProperty "mosaic_mode" "i" ReadWrite
      , rpcProperty "windowed_x" "i" ReadWrite
      , rpcProperty "windowed_y" "i" ReadWrite
      , rpcProperty "windowed_w" "i" ReadWrite
      , rpcProperty "windowed_h" "i" ReadWrite
      , rpcProperty "primary_domain_color" "s" ReadWrite
      , rpcProperty "secondary_domain_color" "s" ReadWrite
      , rpcProperty "mosaic_vm_enabled" "b" ReadWrite
      , rpcProperty "icbinn-path" "s" ReadWrite
      , rpcProperty "image-path" "s" ReadWrite
      , rpcProperty "init-flask-label" "s" ReadWrite
      , rpcProperty "initrd" "s" ReadWrite
      , rpcProperty "initrd-extract" "s" ReadWrite
      , rpcProperty "keep-alive" "b" ReadWrite
      , rpcProperty "kernel" "s" ReadWrite
      , rpcProperty "kernel-extract" "s" ReadWrite
      , rpcProperty "mac" "s" Read
      , rpcProperty "measured" "b" Read
      , rpcProperty "memory" "i" ReadWrite
      , rpcProperty "memory-min" "i" ReadWrite
      , rpcProperty "memory-static-max" "i" ReadWrite
      , rpcProperty "memory-target" "i" Read
      , rpcProperty "name" "s" ReadWrite
      , rpcProperty "native-experience" "b" ReadWrite
      , rpcProperty "nestedhvm" "b" ReadWrite
      , rpcProperty "notify" "s" ReadWrite
      , rpcProperty "nx" "b" ReadWrite
      , rpcProperty "oem-acpi-features" "b" ReadWrite
      , rpcProperty "os" "s" ReadWrite
      , rpcProperty "ovf-transport-iso" "b" ReadWrite
      , rpcProperty "pae" "b" ReadWrite
      , rpcProperty "passthrough-io" "s" ReadWrite
      , rpcProperty "passthrough-mmio" "s" ReadWrite
      , rpcProperty "policy-audio-access" "b" ReadWrite
      , rpcProperty "policy-audio-recording" "b" ReadWrite
      , rpcProperty "policy-cd-access" "b" ReadWrite
      , rpcProperty "policy-cd-recording" "b" ReadWrite
      , rpcProperty "policy-modify-vm-settings" "b" ReadWrite
      , rpcProperty "policy-print-screen" "b" ReadWrite
      , rpcProperty "policy-wired-networking" "b" ReadWrite
      , rpcProperty "policy-wireless-networking" "b" ReadWrite
      , rpcProperty "portica-enabled" "i" Read
      , rpcProperty "portica-installed" "b" Read
      , rpcProperty "preserve-on-reboot" "b" ReadWrite
      , rpcProperty "private-space" "i" Read
      , rpcProperty "provides-default-network-backend" "b" ReadWrite
      , rpcProperty "provides-graphics-fallback" "b" ReadWrite
      , rpcProperty "provides-network-backend" "b" ReadWrite
      , rpcProperty "pv-addons" "b" ReadWrite
      , rpcProperty "pv-addons-version" "s" ReadWrite
      , rpcProperty "qemu-dm-path" "s" ReadWrite
      , rpcProperty "qemu-dm-timeout" "i" ReadWrite
      , rpcProperty "ready" "b" ReadWrite
      , rpcProperty "realm" "s" ReadWrite
      , rpcProperty "restrict-display-depth" "b" ReadWrite
      , rpcProperty "restrict-display-res" "b" ReadWrite
      , rpcProperty "run-insteadof-start" "s" ReadWrite
      , rpcProperty "run-on-acpi-state-change" "s" ReadWrite
      , rpcProperty "run-on-state-change" "s" ReadWrite
      , rpcProperty "run-post-create" "s" ReadWrite
      , rpcProperty "run-pre-boot" "s" ReadWrite
      , rpcProperty "run-pre-delete" "s" ReadWrite
      , rpcProperty "s3-mode" "s" ReadWrite
      , rpcProperty "s4-mode" "s" ReadWrite
      , rpcProperty "seamless-id" "s" ReadWrite
      , rpcProperty "seamless-mouse-left" "i" Read
      , rpcProperty "seamless-mouse-right" "i" Read
      , rpcProperty "seamless-traffic" "b" ReadWrite
      , rpcProperty "serial" "s" ReadWrite
      , rpcProperty "show-switcher" "b" ReadWrite
      , rpcProperty "shutdown-priority" "i" ReadWrite
      , rpcProperty "slot" "i" ReadWrite
      , rpcProperty "sound" "s" ReadWrite
      , rpcProperty "start-from-suspend-image" "s" ReadWrite
      , rpcProperty "start-on-boot" "b" ReadWrite
      , rpcProperty "start-on-boot-priority" "i" ReadWrite
      , rpcProperty "state" "s" Read
      , rpcProperty "stubdom" "b" ReadWrite
      , rpcProperty "stubdom-cmdline" "s" ReadWrite
      , rpcProperty "stubdom-flask-label" "s" ReadWrite
      , rpcProperty "stubdom-memory" "i" ReadWrite
      , rpcProperty "sync-uuid" "s" ReadWrite
      , rpcProperty "time-offset" "i" ReadWrite
      , rpcProperty "timer-mode" "s" ReadWrite
      , rpcProperty "track-dependencies" "b" ReadWrite
      , rpcProperty "type" "s" ReadWrite
      , rpcProperty "usb-auto-passthrough" "b" ReadWrite
      , rpcProperty "usb-control" "b" ReadWrite
      , rpcProperty "usb-enabled" "b" ReadWrite
      , rpcProperty "usb-grab-devices" "b" ReadWrite
      , rpcProperty "uuid" "s" Read
      , rpcProperty "vcpus" "i" ReadWrite
      , rpcProperty "videoram" "i" ReadWrite
      , rpcProperty "viridian" "b" ReadWrite
      , rpcProperty "virt-type" "s" ReadWrite
      , rpcProperty "vkbd" "b" ReadWrite
      , rpcProperty "vsnd" "b" ReadWrite
      , rpcProperty "wired-network" "s" ReadWrite
      , rpcProperty "wireless-control" "b" ReadWrite
      , rpcProperty "wireless-network" "s" ReadWrite
      , rpcProperty "xci-cpuid-signature" "b" ReadWrite
    ],
    RpcInterface "org.freedesktop.DBus.Properties" [
        rpcMethod "Get" "interface:s,property:s" "value:v" (stubOrgFreedesktopDBusPropertiesGet server_)
      , rpcMethod "Set" "interface:s,property:s,value:v" "" (stubOrgFreedesktopDBusPropertiesSet server_)
      , rpcMethod "GetAll" "interface:s" "properties:a{sv}" (stubOrgFreedesktopDBusPropertiesGetAll server_)
    ] [
    ]
  ]
