module Rpc.Autogen.XenmgrVmClient (
  eVIRT_TYPE_PV
  , eVIRT_TYPE_PVH
  , eVIRT_TYPE_HVM
  , comCitrixXenclientXenmgrVmAddArgoFirewallRule
  , comCitrixXenclientXenmgrVmAddDisk
  , comCitrixXenclientXenmgrVmAddNetFirewallRule
  , comCitrixXenclientXenmgrVmAddNic
  , comCitrixXenclientXenmgrVmCreateChildServiceVm
  , comCitrixXenclientXenmgrVmDelete
  , comCitrixXenclientXenmgrVmDeleteArgoFirewallRule
  , comCitrixXenclientXenmgrVmDeleteNetFirewallRule
  , comCitrixXenclientXenmgrVmDestroy
  , comCitrixXenclientXenmgrVmGetDbKey
  , comCitrixXenclientXenmgrVmGetDomstoreKey
  , comCitrixXenclientXenmgrVmHibernate
  , comCitrixXenclientXenmgrVmListArgoFirewallRules
  , comCitrixXenclientXenmgrVmListDisks
  , comCitrixXenclientXenmgrVmListNetFirewallRules
  , comCitrixXenclientXenmgrVmListNics
  , comCitrixXenclientXenmgrVmPause
  , comCitrixXenclientXenmgrVmReadIcon
  , comCitrixXenclientXenmgrVmReboot
  , comCitrixXenclientXenmgrVmResume
  , comCitrixXenclientXenmgrVmResumeFromFile
  , comCitrixXenclientXenmgrVmSetDbKey
  , comCitrixXenclientXenmgrVmSetDomstoreKey
  , comCitrixXenclientXenmgrVmShutdown
  , comCitrixXenclientXenmgrVmSleep
  , comCitrixXenclientXenmgrVmStart
  , comCitrixXenclientXenmgrVmStartInternal
  , comCitrixXenclientXenmgrVmSuspendToFile
  , comCitrixXenclientXenmgrVmSwitch
  , comCitrixXenclientXenmgrVmUnpause
  , comCitrixXenclientXenmgrVmGetAcpi
  , comCitrixXenclientXenmgrVmSetAcpi
  , comCitrixXenclientXenmgrVmGetAcpiState
  , comCitrixXenclientXenmgrVmGetAcpiTable
  , comCitrixXenclientXenmgrVmSetAcpiTable
  , comCitrixXenclientXenmgrVmGetAmtPt
  , comCitrixXenclientXenmgrVmSetAmtPt
  , comCitrixXenclientXenmgrVmGetApic
  , comCitrixXenclientXenmgrVmSetApic
  , comCitrixXenclientXenmgrVmGetArgo
  , comCitrixXenclientXenmgrVmSetArgo
  , comCitrixXenclientXenmgrVmGetAutoS3Wake
  , comCitrixXenclientXenmgrVmSetAutoS3Wake
  , comCitrixXenclientXenmgrVmGetAutostartPending
  , comCitrixXenclientXenmgrVmGetBios
  , comCitrixXenclientXenmgrVmSetBios
  , comCitrixXenclientXenmgrVmGetBoot
  , comCitrixXenclientXenmgrVmSetBoot
  , comCitrixXenclientXenmgrVmGetBootSentinel
  , comCitrixXenclientXenmgrVmSetBootSentinel
  , comCitrixXenclientXenmgrVmGetCd
  , comCitrixXenclientXenmgrVmSetCd
  , comCitrixXenclientXenmgrVmGetCmdLine
  , comCitrixXenclientXenmgrVmSetCmdLine
  , comCitrixXenclientXenmgrVmGetControlPlatformPowerState
  , comCitrixXenclientXenmgrVmSetControlPlatformPowerState
  , comCitrixXenclientXenmgrVmGetCoresPerSocket
  , comCitrixXenclientXenmgrVmSetCoresPerSocket
  , comCitrixXenclientXenmgrVmGetCpuid
  , comCitrixXenclientXenmgrVmSetCpuid
  , comCitrixXenclientXenmgrVmGetCryptoKeyDirs
  , comCitrixXenclientXenmgrVmSetCryptoKeyDirs
  , comCitrixXenclientXenmgrVmGetCryptoUser
  , comCitrixXenclientXenmgrVmSetCryptoUser
  , comCitrixXenclientXenmgrVmGetDependencies
  , comCitrixXenclientXenmgrVmGetDescription
  , comCitrixXenclientXenmgrVmSetDescription
  , comCitrixXenclientXenmgrVmGetDisplay
  , comCitrixXenclientXenmgrVmSetDisplay
  , comCitrixXenclientXenmgrVmGetDomid
  , comCitrixXenclientXenmgrVmGetDomstoreReadAccess
  , comCitrixXenclientXenmgrVmSetDomstoreReadAccess
  , comCitrixXenclientXenmgrVmGetDomstoreWriteAccess
  , comCitrixXenclientXenmgrVmSetDomstoreWriteAccess
  , comCitrixXenclientXenmgrVmGetDownloadProgress
  , comCitrixXenclientXenmgrVmSetDownloadProgress
  , comCitrixXenclientXenmgrVmGetExtraHvm
  , comCitrixXenclientXenmgrVmSetExtraHvm
  , comCitrixXenclientXenmgrVmGetExtraXenvm
  , comCitrixXenclientXenmgrVmSetExtraXenvm
  , comCitrixXenclientXenmgrVmGetFlaskLabel
  , comCitrixXenclientXenmgrVmSetFlaskLabel
  , comCitrixXenclientXenmgrVmGetGpu
  , comCitrixXenclientXenmgrVmSetGpu
  , comCitrixXenclientXenmgrVmGetGreedyPcibackBind
  , comCitrixXenclientXenmgrVmSetGreedyPcibackBind
  , comCitrixXenclientXenmgrVmGetHap
  , comCitrixXenclientXenmgrVmSetHap
  , comCitrixXenclientXenmgrVmGetHdtype
  , comCitrixXenclientXenmgrVmSetHdtype
  , comCitrixXenclientXenmgrVmGetHibernated
  , comCitrixXenclientXenmgrVmGetHiddenInSwitcher
  , comCitrixXenclientXenmgrVmSetHiddenInSwitcher
  , comCitrixXenclientXenmgrVmGetHiddenInUi
  , comCitrixXenclientXenmgrVmSetHiddenInUi
  , comCitrixXenclientXenmgrVmGetHpet
  , comCitrixXenclientXenmgrVmSetHpet
  , comCitrixXenclientXenmgrVmGetIcbinnPath
  , comCitrixXenclientXenmgrVmSetIcbinnPath
  , comCitrixXenclientXenmgrVmGetImagePath
  , comCitrixXenclientXenmgrVmSetImagePath
  , comCitrixXenclientXenmgrVmGetInitFlaskLabel
  , comCitrixXenclientXenmgrVmSetInitFlaskLabel
  , comCitrixXenclientXenmgrVmGetInitrd
  , comCitrixXenclientXenmgrVmSetInitrd
  , comCitrixXenclientXenmgrVmGetInitrdExtract
  , comCitrixXenclientXenmgrVmSetInitrdExtract
  , comCitrixXenclientXenmgrVmGetKeepAlive
  , comCitrixXenclientXenmgrVmSetKeepAlive
  , comCitrixXenclientXenmgrVmGetKernel
  , comCitrixXenclientXenmgrVmSetKernel
  , comCitrixXenclientXenmgrVmGetKernelExtract
  , comCitrixXenclientXenmgrVmSetKernelExtract
  , comCitrixXenclientXenmgrVmGetDisplayHandlerStrict
  , comCitrixXenclientXenmgrVmSetDisplayHandlerStrict
  , comCitrixXenclientXenmgrVmGetImagePathVg
  , comCitrixXenclientXenmgrVmSetImagePathVg
  , comCitrixXenclientXenmgrVmGetLongFormVg
  , comCitrixXenclientXenmgrVmSetLongFormVg
  , comCitrixXenclientXenmgrVmGetShortFormVg
  , comCitrixXenclientXenmgrVmSetShortFormVg
  , comCitrixXenclientXenmgrVmGetTextColorVg
  , comCitrixXenclientXenmgrVmSetTextColorVg
  , comCitrixXenclientXenmgrVmGetBorderWidthVg
  , comCitrixXenclientXenmgrVmSetBorderWidthVg
  , comCitrixXenclientXenmgrVmGetBorderHeightVg
  , comCitrixXenclientXenmgrVmSetBorderHeightVg
  , comCitrixXenclientXenmgrVmGetVglassEnabled
  , comCitrixXenclientXenmgrVmSetVglassEnabled
  , comCitrixXenclientXenmgrVmGetMosaicMode
  , comCitrixXenclientXenmgrVmSetMosaicMode
  , comCitrixXenclientXenmgrVmGetWindowedX
  , comCitrixXenclientXenmgrVmSetWindowedX
  , comCitrixXenclientXenmgrVmGetWindowedY
  , comCitrixXenclientXenmgrVmSetWindowedY
  , comCitrixXenclientXenmgrVmGetWindowedW
  , comCitrixXenclientXenmgrVmSetWindowedW
  , comCitrixXenclientXenmgrVmGetWindowedH
  , comCitrixXenclientXenmgrVmSetWindowedH
  , comCitrixXenclientXenmgrVmGetPrimaryDomainColor
  , comCitrixXenclientXenmgrVmSetPrimaryDomainColor
  , comCitrixXenclientXenmgrVmGetSecondaryDomainColor
  , comCitrixXenclientXenmgrVmSetSecondaryDomainColor
  , comCitrixXenclientXenmgrVmGetMosaicVmEnabled
  , comCitrixXenclientXenmgrVmSetMosaicVmEnabled
  , comCitrixXenclientXenmgrVmGetMac
  , comCitrixXenclientXenmgrVmGetMeasured
  , comCitrixXenclientXenmgrVmGetMemory
  , comCitrixXenclientXenmgrVmSetMemory
  , comCitrixXenclientXenmgrVmGetMemoryMin
  , comCitrixXenclientXenmgrVmSetMemoryMin
  , comCitrixXenclientXenmgrVmGetMemoryStaticMax
  , comCitrixXenclientXenmgrVmSetMemoryStaticMax
  , comCitrixXenclientXenmgrVmGetMemoryTarget
  , comCitrixXenclientXenmgrVmGetName
  , comCitrixXenclientXenmgrVmSetName
  , comCitrixXenclientXenmgrVmGetNativeExperience
  , comCitrixXenclientXenmgrVmSetNativeExperience
  , comCitrixXenclientXenmgrVmGetNestedhvm
  , comCitrixXenclientXenmgrVmSetNestedhvm
  , comCitrixXenclientXenmgrVmGetNotify
  , comCitrixXenclientXenmgrVmSetNotify
  , comCitrixXenclientXenmgrVmGetNx
  , comCitrixXenclientXenmgrVmSetNx
  , comCitrixXenclientXenmgrVmGetOemAcpiFeatures
  , comCitrixXenclientXenmgrVmSetOemAcpiFeatures
  , comCitrixXenclientXenmgrVmGetOs
  , comCitrixXenclientXenmgrVmSetOs
  , comCitrixXenclientXenmgrVmGetOvfTransportIso
  , comCitrixXenclientXenmgrVmSetOvfTransportIso
  , comCitrixXenclientXenmgrVmGetPae
  , comCitrixXenclientXenmgrVmSetPae
  , comCitrixXenclientXenmgrVmGetPassthroughIo
  , comCitrixXenclientXenmgrVmSetPassthroughIo
  , comCitrixXenclientXenmgrVmGetPassthroughMmio
  , comCitrixXenclientXenmgrVmSetPassthroughMmio
  , comCitrixXenclientXenmgrVmGetPolicyAudioAccess
  , comCitrixXenclientXenmgrVmSetPolicyAudioAccess
  , comCitrixXenclientXenmgrVmGetPolicyAudioRecording
  , comCitrixXenclientXenmgrVmSetPolicyAudioRecording
  , comCitrixXenclientXenmgrVmGetPolicyCdAccess
  , comCitrixXenclientXenmgrVmSetPolicyCdAccess
  , comCitrixXenclientXenmgrVmGetPolicyCdRecording
  , comCitrixXenclientXenmgrVmSetPolicyCdRecording
  , comCitrixXenclientXenmgrVmGetPolicyModifyVmSettings
  , comCitrixXenclientXenmgrVmSetPolicyModifyVmSettings
  , comCitrixXenclientXenmgrVmGetPolicyPrintScreen
  , comCitrixXenclientXenmgrVmSetPolicyPrintScreen
  , comCitrixXenclientXenmgrVmGetPolicyWiredNetworking
  , comCitrixXenclientXenmgrVmSetPolicyWiredNetworking
  , comCitrixXenclientXenmgrVmGetPolicyWirelessNetworking
  , comCitrixXenclientXenmgrVmSetPolicyWirelessNetworking
  , comCitrixXenclientXenmgrVmGetPorticaEnabled
  , comCitrixXenclientXenmgrVmGetPorticaInstalled
  , comCitrixXenclientXenmgrVmGetPreserveOnReboot
  , comCitrixXenclientXenmgrVmSetPreserveOnReboot
  , comCitrixXenclientXenmgrVmGetPrivateSpace
  , comCitrixXenclientXenmgrVmGetProvidesDefaultNetworkBackend
  , comCitrixXenclientXenmgrVmSetProvidesDefaultNetworkBackend
  , comCitrixXenclientXenmgrVmGetProvidesGraphicsFallback
  , comCitrixXenclientXenmgrVmSetProvidesGraphicsFallback
  , comCitrixXenclientXenmgrVmGetProvidesNetworkBackend
  , comCitrixXenclientXenmgrVmSetProvidesNetworkBackend
  , comCitrixXenclientXenmgrVmGetPvAddons
  , comCitrixXenclientXenmgrVmSetPvAddons
  , comCitrixXenclientXenmgrVmGetPvAddonsVersion
  , comCitrixXenclientXenmgrVmSetPvAddonsVersion
  , comCitrixXenclientXenmgrVmGetQemuDmPath
  , comCitrixXenclientXenmgrVmSetQemuDmPath
  , comCitrixXenclientXenmgrVmGetQemuDmTimeout
  , comCitrixXenclientXenmgrVmSetQemuDmTimeout
  , comCitrixXenclientXenmgrVmGetReady
  , comCitrixXenclientXenmgrVmSetReady
  , comCitrixXenclientXenmgrVmGetRealm
  , comCitrixXenclientXenmgrVmSetRealm
  , comCitrixXenclientXenmgrVmGetRestrictDisplayDepth
  , comCitrixXenclientXenmgrVmSetRestrictDisplayDepth
  , comCitrixXenclientXenmgrVmGetRestrictDisplayRes
  , comCitrixXenclientXenmgrVmSetRestrictDisplayRes
  , comCitrixXenclientXenmgrVmGetRunInsteadofStart
  , comCitrixXenclientXenmgrVmSetRunInsteadofStart
  , comCitrixXenclientXenmgrVmGetRunOnAcpiStateChange
  , comCitrixXenclientXenmgrVmSetRunOnAcpiStateChange
  , comCitrixXenclientXenmgrVmGetRunOnStateChange
  , comCitrixXenclientXenmgrVmSetRunOnStateChange
  , comCitrixXenclientXenmgrVmGetRunPostCreate
  , comCitrixXenclientXenmgrVmSetRunPostCreate
  , comCitrixXenclientXenmgrVmGetRunPreBoot
  , comCitrixXenclientXenmgrVmSetRunPreBoot
  , comCitrixXenclientXenmgrVmGetRunPreDelete
  , comCitrixXenclientXenmgrVmSetRunPreDelete
  , comCitrixXenclientXenmgrVmGetS3Mode
  , comCitrixXenclientXenmgrVmSetS3Mode
  , comCitrixXenclientXenmgrVmGetS4Mode
  , comCitrixXenclientXenmgrVmSetS4Mode
  , comCitrixXenclientXenmgrVmGetSeamlessId
  , comCitrixXenclientXenmgrVmSetSeamlessId
  , comCitrixXenclientXenmgrVmGetSeamlessMouseLeft
  , comCitrixXenclientXenmgrVmGetSeamlessMouseRight
  , comCitrixXenclientXenmgrVmGetSeamlessTraffic
  , comCitrixXenclientXenmgrVmSetSeamlessTraffic
  , comCitrixXenclientXenmgrVmGetSerial
  , comCitrixXenclientXenmgrVmSetSerial
  , comCitrixXenclientXenmgrVmGetShowSwitcher
  , comCitrixXenclientXenmgrVmSetShowSwitcher
  , comCitrixXenclientXenmgrVmGetShutdownPriority
  , comCitrixXenclientXenmgrVmSetShutdownPriority
  , comCitrixXenclientXenmgrVmGetSlot
  , comCitrixXenclientXenmgrVmSetSlot
  , comCitrixXenclientXenmgrVmGetSound
  , comCitrixXenclientXenmgrVmSetSound
  , comCitrixXenclientXenmgrVmGetStartFromSuspendImage
  , comCitrixXenclientXenmgrVmSetStartFromSuspendImage
  , comCitrixXenclientXenmgrVmGetStartOnBoot
  , comCitrixXenclientXenmgrVmSetStartOnBoot
  , comCitrixXenclientXenmgrVmGetStartOnBootPriority
  , comCitrixXenclientXenmgrVmSetStartOnBootPriority
  , comCitrixXenclientXenmgrVmGetState
  , comCitrixXenclientXenmgrVmGetStubdom
  , comCitrixXenclientXenmgrVmSetStubdom
  , comCitrixXenclientXenmgrVmGetStubdomFlaskLabel
  , comCitrixXenclientXenmgrVmSetStubdomFlaskLabel
  , comCitrixXenclientXenmgrVmGetSyncUuid
  , comCitrixXenclientXenmgrVmSetSyncUuid
  , comCitrixXenclientXenmgrVmGetTimeOffset
  , comCitrixXenclientXenmgrVmSetTimeOffset
  , comCitrixXenclientXenmgrVmGetTimerMode
  , comCitrixXenclientXenmgrVmSetTimerMode
  , comCitrixXenclientXenmgrVmGetTrackDependencies
  , comCitrixXenclientXenmgrVmSetTrackDependencies
  , comCitrixXenclientXenmgrVmGetType
  , comCitrixXenclientXenmgrVmSetType
  , comCitrixXenclientXenmgrVmGetUsbAutoPassthrough
  , comCitrixXenclientXenmgrVmSetUsbAutoPassthrough
  , comCitrixXenclientXenmgrVmGetUsbControl
  , comCitrixXenclientXenmgrVmSetUsbControl
  , comCitrixXenclientXenmgrVmGetUsbEnabled
  , comCitrixXenclientXenmgrVmSetUsbEnabled
  , comCitrixXenclientXenmgrVmGetUsbGrabDevices
  , comCitrixXenclientXenmgrVmSetUsbGrabDevices
  , comCitrixXenclientXenmgrVmGetUuid
  , comCitrixXenclientXenmgrVmGetVcpus
  , comCitrixXenclientXenmgrVmSetVcpus
  , comCitrixXenclientXenmgrVmGetVideoram
  , comCitrixXenclientXenmgrVmSetVideoram
  , comCitrixXenclientXenmgrVmGetViridian
  , comCitrixXenclientXenmgrVmSetViridian
  , comCitrixXenclientXenmgrVmGetVirtType
  , comCitrixXenclientXenmgrVmSetVirtType
  , comCitrixXenclientXenmgrVmGetVkbd
  , comCitrixXenclientXenmgrVmSetVkbd
  , comCitrixXenclientXenmgrVmGetVsnd
  , comCitrixXenclientXenmgrVmSetVsnd
  , comCitrixXenclientXenmgrVmGetWiredNetwork
  , comCitrixXenclientXenmgrVmSetWiredNetwork
  , comCitrixXenclientXenmgrVmGetWirelessControl
  , comCitrixXenclientXenmgrVmSetWirelessControl
  , comCitrixXenclientXenmgrVmGetWirelessNetwork
  , comCitrixXenclientXenmgrVmSetWirelessNetwork
  , comCitrixXenclientXenmgrVmGetXciCpuidSignature
  , comCitrixXenclientXenmgrVmSetXciCpuidSignature
  , comCitrixXenclientXenmgrVmAuthAuth
  , comCitrixXenclientXenmgrVmAuthAuthRequired
  , comCitrixXenclientXenmgrVmPciAddPtRule
  , comCitrixXenclientXenmgrVmPciAddPtRuleBdf
  , comCitrixXenclientXenmgrVmPciDeletePtRule
  , comCitrixXenclientXenmgrVmPciDeletePtRuleBdf
  , comCitrixXenclientXenmgrVmPciListPtPciDevices
  , comCitrixXenclientXenmgrVmPciListPtRules
  , comCitrixXenclientXenmgrVmProductGetOvfEnvXml
  , comCitrixXenclientXenmgrVmProductGetProductProperty
  , comCitrixXenclientXenmgrVmProductListProductProperties
  , comCitrixXenclientXenmgrVmProductSetProductProperty
  , comCitrixXenclientXenmgrVmUnrestrictedGetAcpi
  , comCitrixXenclientXenmgrVmUnrestrictedSetAcpi
  , comCitrixXenclientXenmgrVmUnrestrictedGetAcpiState
  , comCitrixXenclientXenmgrVmUnrestrictedGetAcpiTable
  , comCitrixXenclientXenmgrVmUnrestrictedSetAcpiTable
  , comCitrixXenclientXenmgrVmUnrestrictedGetAmtPt
  , comCitrixXenclientXenmgrVmUnrestrictedSetAmtPt
  , comCitrixXenclientXenmgrVmUnrestrictedGetApic
  , comCitrixXenclientXenmgrVmUnrestrictedSetApic
  , comCitrixXenclientXenmgrVmUnrestrictedGetArgo
  , comCitrixXenclientXenmgrVmUnrestrictedSetArgo
  , comCitrixXenclientXenmgrVmUnrestrictedGetAutoS3Wake
  , comCitrixXenclientXenmgrVmUnrestrictedSetAutoS3Wake
  , comCitrixXenclientXenmgrVmUnrestrictedGetAutostartPending
  , comCitrixXenclientXenmgrVmUnrestrictedGetBios
  , comCitrixXenclientXenmgrVmUnrestrictedSetBios
  , comCitrixXenclientXenmgrVmUnrestrictedGetBoot
  , comCitrixXenclientXenmgrVmUnrestrictedSetBoot
  , comCitrixXenclientXenmgrVmUnrestrictedGetBootSentinel
  , comCitrixXenclientXenmgrVmUnrestrictedSetBootSentinel
  , comCitrixXenclientXenmgrVmUnrestrictedGetCd
  , comCitrixXenclientXenmgrVmUnrestrictedSetCd
  , comCitrixXenclientXenmgrVmUnrestrictedGetCmdLine
  , comCitrixXenclientXenmgrVmUnrestrictedSetCmdLine
  , comCitrixXenclientXenmgrVmUnrestrictedGetControlPlatformPowerState
  , comCitrixXenclientXenmgrVmUnrestrictedSetControlPlatformPowerState
  , comCitrixXenclientXenmgrVmUnrestrictedGetCoresPerSocket
  , comCitrixXenclientXenmgrVmUnrestrictedSetCoresPerSocket
  , comCitrixXenclientXenmgrVmUnrestrictedGetCpuid
  , comCitrixXenclientXenmgrVmUnrestrictedSetCpuid
  , comCitrixXenclientXenmgrVmUnrestrictedGetCryptoKeyDirs
  , comCitrixXenclientXenmgrVmUnrestrictedSetCryptoKeyDirs
  , comCitrixXenclientXenmgrVmUnrestrictedGetCryptoUser
  , comCitrixXenclientXenmgrVmUnrestrictedSetCryptoUser
  , comCitrixXenclientXenmgrVmUnrestrictedGetDependencies
  , comCitrixXenclientXenmgrVmUnrestrictedGetDescription
  , comCitrixXenclientXenmgrVmUnrestrictedSetDescription
  , comCitrixXenclientXenmgrVmUnrestrictedGetDisplay
  , comCitrixXenclientXenmgrVmUnrestrictedSetDisplay
  , comCitrixXenclientXenmgrVmUnrestrictedGetDomid
  , comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreReadAccess
  , comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreReadAccess
  , comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreWriteAccess
  , comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreWriteAccess
  , comCitrixXenclientXenmgrVmUnrestrictedGetDownloadProgress
  , comCitrixXenclientXenmgrVmUnrestrictedSetDownloadProgress
  , comCitrixXenclientXenmgrVmUnrestrictedGetExtraHvm
  , comCitrixXenclientXenmgrVmUnrestrictedSetExtraHvm
  , comCitrixXenclientXenmgrVmUnrestrictedGetExtraXenvm
  , comCitrixXenclientXenmgrVmUnrestrictedSetExtraXenvm
  , comCitrixXenclientXenmgrVmUnrestrictedGetFlaskLabel
  , comCitrixXenclientXenmgrVmUnrestrictedSetFlaskLabel
  , comCitrixXenclientXenmgrVmUnrestrictedGetGpu
  , comCitrixXenclientXenmgrVmUnrestrictedSetGpu
  , comCitrixXenclientXenmgrVmUnrestrictedGetGreedyPcibackBind
  , comCitrixXenclientXenmgrVmUnrestrictedSetGreedyPcibackBind
  , comCitrixXenclientXenmgrVmUnrestrictedGetHap
  , comCitrixXenclientXenmgrVmUnrestrictedSetHap
  , comCitrixXenclientXenmgrVmUnrestrictedGetHdtype
  , comCitrixXenclientXenmgrVmUnrestrictedSetHdtype
  , comCitrixXenclientXenmgrVmUnrestrictedGetHibernated
  , comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInSwitcher
  , comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInSwitcher
  , comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInUi
  , comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInUi
  , comCitrixXenclientXenmgrVmUnrestrictedGetHpet
  , comCitrixXenclientXenmgrVmUnrestrictedSetHpet
  , comCitrixXenclientXenmgrVmUnrestrictedGetDisplayHandlerStrict
  , comCitrixXenclientXenmgrVmUnrestrictedSetDisplayHandlerStrict
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubDomid
  , comCitrixXenclientXenmgrVmUnrestrictedGetImagePathVg
  , comCitrixXenclientXenmgrVmUnrestrictedSetImagePathVg
  , comCitrixXenclientXenmgrVmUnrestrictedGetLongFormVg
  , comCitrixXenclientXenmgrVmUnrestrictedSetLongFormVg
  , comCitrixXenclientXenmgrVmUnrestrictedGetShortFormVg
  , comCitrixXenclientXenmgrVmUnrestrictedSetShortFormVg
  , comCitrixXenclientXenmgrVmUnrestrictedGetTextColorVg
  , comCitrixXenclientXenmgrVmUnrestrictedSetTextColorVg
  , comCitrixXenclientXenmgrVmUnrestrictedGetBorderWidthVg
  , comCitrixXenclientXenmgrVmUnrestrictedSetBorderWidthVg
  , comCitrixXenclientXenmgrVmUnrestrictedGetBorderHeightVg
  , comCitrixXenclientXenmgrVmUnrestrictedSetBorderHeightVg
  , comCitrixXenclientXenmgrVmUnrestrictedGetVglassEnabled
  , comCitrixXenclientXenmgrVmUnrestrictedSetVglassEnabled
  , comCitrixXenclientXenmgrVmUnrestrictedGetMosaicMode
  , comCitrixXenclientXenmgrVmUnrestrictedSetMosaicMode
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedX
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedX
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedY
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedY
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedW
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedW
  , comCitrixXenclientXenmgrVmUnrestrictedGetWindowedH
  , comCitrixXenclientXenmgrVmUnrestrictedSetWindowedH
  , comCitrixXenclientXenmgrVmUnrestrictedGetPrimaryDomainColor
  , comCitrixXenclientXenmgrVmUnrestrictedSetPrimaryDomainColor
  , comCitrixXenclientXenmgrVmUnrestrictedGetSecondaryDomainColor
  , comCitrixXenclientXenmgrVmUnrestrictedSetSecondaryDomainColor
  , comCitrixXenclientXenmgrVmUnrestrictedGetMosaicVmEnabled
  , comCitrixXenclientXenmgrVmUnrestrictedSetMosaicVmEnabled
  , comCitrixXenclientXenmgrVmUnrestrictedGetIcbinnPath
  , comCitrixXenclientXenmgrVmUnrestrictedSetIcbinnPath
  , comCitrixXenclientXenmgrVmUnrestrictedGetImagePath
  , comCitrixXenclientXenmgrVmUnrestrictedSetImagePath
  , comCitrixXenclientXenmgrVmUnrestrictedGetInitFlaskLabel
  , comCitrixXenclientXenmgrVmUnrestrictedSetInitFlaskLabel
  , comCitrixXenclientXenmgrVmUnrestrictedGetInitrd
  , comCitrixXenclientXenmgrVmUnrestrictedSetInitrd
  , comCitrixXenclientXenmgrVmUnrestrictedGetInitrdExtract
  , comCitrixXenclientXenmgrVmUnrestrictedSetInitrdExtract
  , comCitrixXenclientXenmgrVmUnrestrictedGetKeepAlive
  , comCitrixXenclientXenmgrVmUnrestrictedSetKeepAlive
  , comCitrixXenclientXenmgrVmUnrestrictedGetKernel
  , comCitrixXenclientXenmgrVmUnrestrictedSetKernel
  , comCitrixXenclientXenmgrVmUnrestrictedGetKernelExtract
  , comCitrixXenclientXenmgrVmUnrestrictedSetKernelExtract
  , comCitrixXenclientXenmgrVmUnrestrictedGetMac
  , comCitrixXenclientXenmgrVmUnrestrictedGetMeasured
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemory
  , comCitrixXenclientXenmgrVmUnrestrictedSetMemory
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryMin
  , comCitrixXenclientXenmgrVmUnrestrictedSetMemoryMin
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryStaticMax
  , comCitrixXenclientXenmgrVmUnrestrictedSetMemoryStaticMax
  , comCitrixXenclientXenmgrVmUnrestrictedGetMemoryTarget
  , comCitrixXenclientXenmgrVmUnrestrictedGetName
  , comCitrixXenclientXenmgrVmUnrestrictedSetName
  , comCitrixXenclientXenmgrVmUnrestrictedGetNativeExperience
  , comCitrixXenclientXenmgrVmUnrestrictedSetNativeExperience
  , comCitrixXenclientXenmgrVmUnrestrictedGetNestedhvm
  , comCitrixXenclientXenmgrVmUnrestrictedSetNestedhvm
  , comCitrixXenclientXenmgrVmUnrestrictedGetNotify
  , comCitrixXenclientXenmgrVmUnrestrictedSetNotify
  , comCitrixXenclientXenmgrVmUnrestrictedGetNx
  , comCitrixXenclientXenmgrVmUnrestrictedSetNx
  , comCitrixXenclientXenmgrVmUnrestrictedGetOemAcpiFeatures
  , comCitrixXenclientXenmgrVmUnrestrictedSetOemAcpiFeatures
  , comCitrixXenclientXenmgrVmUnrestrictedGetOs
  , comCitrixXenclientXenmgrVmUnrestrictedSetOs
  , comCitrixXenclientXenmgrVmUnrestrictedGetOvfTransportIso
  , comCitrixXenclientXenmgrVmUnrestrictedSetOvfTransportIso
  , comCitrixXenclientXenmgrVmUnrestrictedGetPae
  , comCitrixXenclientXenmgrVmUnrestrictedSetPae
  , comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughIo
  , comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughIo
  , comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughMmio
  , comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughMmio
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioAccess
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioAccess
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioRecording
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioRecording
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdAccess
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdAccess
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdRecording
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdRecording
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyModifyVmSettings
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyModifyVmSettings
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyPrintScreen
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyPrintScreen
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWiredNetworking
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWiredNetworking
  , comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWirelessNetworking
  , comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWirelessNetworking
  , comCitrixXenclientXenmgrVmUnrestrictedGetPorticaEnabled
  , comCitrixXenclientXenmgrVmUnrestrictedGetPorticaInstalled
  , comCitrixXenclientXenmgrVmUnrestrictedGetPreserveOnReboot
  , comCitrixXenclientXenmgrVmUnrestrictedSetPreserveOnReboot
  , comCitrixXenclientXenmgrVmUnrestrictedGetPrivateSpace
  , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesDefaultNetworkBackend
  , comCitrixXenclientXenmgrVmUnrestrictedSetProvidesDefaultNetworkBackend
  , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesGraphicsFallback
  , comCitrixXenclientXenmgrVmUnrestrictedSetProvidesGraphicsFallback
  , comCitrixXenclientXenmgrVmUnrestrictedGetProvidesNetworkBackend
  , comCitrixXenclientXenmgrVmUnrestrictedSetProvidesNetworkBackend
  , comCitrixXenclientXenmgrVmUnrestrictedGetPvAddons
  , comCitrixXenclientXenmgrVmUnrestrictedSetPvAddons
  , comCitrixXenclientXenmgrVmUnrestrictedGetPvAddonsVersion
  , comCitrixXenclientXenmgrVmUnrestrictedSetPvAddonsVersion
  , comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmPath
  , comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmPath
  , comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmTimeout
  , comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmTimeout
  , comCitrixXenclientXenmgrVmUnrestrictedGetReady
  , comCitrixXenclientXenmgrVmUnrestrictedSetReady
  , comCitrixXenclientXenmgrVmUnrestrictedGetRealm
  , comCitrixXenclientXenmgrVmUnrestrictedSetRealm
  , comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayDepth
  , comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayDepth
  , comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayRes
  , comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayRes
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunInsteadofStart
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunInsteadofStart
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunOnAcpiStateChange
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunOnAcpiStateChange
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunOnStateChange
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunOnStateChange
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunPostCreate
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunPostCreate
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunPreBoot
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunPreBoot
  , comCitrixXenclientXenmgrVmUnrestrictedGetRunPreDelete
  , comCitrixXenclientXenmgrVmUnrestrictedSetRunPreDelete
  , comCitrixXenclientXenmgrVmUnrestrictedGetS3Mode
  , comCitrixXenclientXenmgrVmUnrestrictedSetS3Mode
  , comCitrixXenclientXenmgrVmUnrestrictedGetS4Mode
  , comCitrixXenclientXenmgrVmUnrestrictedSetS4Mode
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessId
  , comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessId
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseLeft
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseRight
  , comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessTraffic
  , comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessTraffic
  , comCitrixXenclientXenmgrVmUnrestrictedGetSerial
  , comCitrixXenclientXenmgrVmUnrestrictedSetSerial
  , comCitrixXenclientXenmgrVmUnrestrictedGetShowSwitcher
  , comCitrixXenclientXenmgrVmUnrestrictedSetShowSwitcher
  , comCitrixXenclientXenmgrVmUnrestrictedGetShutdownPriority
  , comCitrixXenclientXenmgrVmUnrestrictedSetShutdownPriority
  , comCitrixXenclientXenmgrVmUnrestrictedGetSlot
  , comCitrixXenclientXenmgrVmUnrestrictedSetSlot
  , comCitrixXenclientXenmgrVmUnrestrictedGetSound
  , comCitrixXenclientXenmgrVmUnrestrictedSetSound
  , comCitrixXenclientXenmgrVmUnrestrictedGetStartFromSuspendImage
  , comCitrixXenclientXenmgrVmUnrestrictedSetStartFromSuspendImage
  , comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBoot
  , comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBoot
  , comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBootPriority
  , comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBootPriority
  , comCitrixXenclientXenmgrVmUnrestrictedGetState
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdom
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdom
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomCmdline
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdomCmdline
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomFlaskLabel
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdomFlaskLabel
  , comCitrixXenclientXenmgrVmUnrestrictedGetStubdomMemory
  , comCitrixXenclientXenmgrVmUnrestrictedSetStubdomMemory
  , comCitrixXenclientXenmgrVmUnrestrictedGetSyncUuid
  , comCitrixXenclientXenmgrVmUnrestrictedSetSyncUuid
  , comCitrixXenclientXenmgrVmUnrestrictedGetTimeOffset
  , comCitrixXenclientXenmgrVmUnrestrictedSetTimeOffset
  , comCitrixXenclientXenmgrVmUnrestrictedGetTimerMode
  , comCitrixXenclientXenmgrVmUnrestrictedSetTimerMode
  , comCitrixXenclientXenmgrVmUnrestrictedGetTrackDependencies
  , comCitrixXenclientXenmgrVmUnrestrictedSetTrackDependencies
  , comCitrixXenclientXenmgrVmUnrestrictedGetType
  , comCitrixXenclientXenmgrVmUnrestrictedSetType
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbAutoPassthrough
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbAutoPassthrough
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbControl
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbControl
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbEnabled
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbEnabled
  , comCitrixXenclientXenmgrVmUnrestrictedGetUsbGrabDevices
  , comCitrixXenclientXenmgrVmUnrestrictedSetUsbGrabDevices
  , comCitrixXenclientXenmgrVmUnrestrictedGetUuid
  , comCitrixXenclientXenmgrVmUnrestrictedGetVcpus
  , comCitrixXenclientXenmgrVmUnrestrictedSetVcpus
  , comCitrixXenclientXenmgrVmUnrestrictedGetVideoram
  , comCitrixXenclientXenmgrVmUnrestrictedSetVideoram
  , comCitrixXenclientXenmgrVmUnrestrictedGetViridian
  , comCitrixXenclientXenmgrVmUnrestrictedSetViridian
  , comCitrixXenclientXenmgrVmUnrestrictedGetVirtType
  , comCitrixXenclientXenmgrVmUnrestrictedSetVirtType
  , comCitrixXenclientXenmgrVmUnrestrictedGetVkbd
  , comCitrixXenclientXenmgrVmUnrestrictedSetVkbd
  , comCitrixXenclientXenmgrVmUnrestrictedGetVsnd
  , comCitrixXenclientXenmgrVmUnrestrictedSetVsnd
  , comCitrixXenclientXenmgrVmUnrestrictedGetWiredNetwork
  , comCitrixXenclientXenmgrVmUnrestrictedSetWiredNetwork
  , comCitrixXenclientXenmgrVmUnrestrictedGetWirelessControl
  , comCitrixXenclientXenmgrVmUnrestrictedSetWirelessControl
  , comCitrixXenclientXenmgrVmUnrestrictedGetWirelessNetwork
  , comCitrixXenclientXenmgrVmUnrestrictedSetWirelessNetwork
  , comCitrixXenclientXenmgrVmUnrestrictedGetXciCpuidSignature
  , comCitrixXenclientXenmgrVmUnrestrictedSetXciCpuidSignature
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

eVIRT_TYPE_PV :: String
eVIRT_TYPE_PV = "pv"

eVIRT_TYPE_PVH :: String
eVIRT_TYPE_PVH = "pvh"

eVIRT_TYPE_HVM :: String
eVIRT_TYPE_HVM = "hvm"

-- Interface com.citrix.xenclient.xenmgr.vm

comCitrixXenclientXenmgrVmAddArgoFirewallRule :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmAddArgoFirewallRule service_ objPath_ rule = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "add_argo_firewall_rule" [ (toVariant $ rule) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.add_argo_firewall_rule"

comCitrixXenclientXenmgrVmAddDisk :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrVmAddDisk service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "add_disk" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.add_disk"

comCitrixXenclientXenmgrVmAddNetFirewallRule :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> String -> String -> m ()
comCitrixXenclientXenmgrVmAddNetFirewallRule service_ objPath_ id direction remoteip extra = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "add_net_firewall_rule" [ (toVariant $ id), (toVariant $ direction), (toVariant $ remoteip), (toVariant $ extra) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.add_net_firewall_rule"

comCitrixXenclientXenmgrVmAddNic :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrVmAddNic service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "add_nic" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.add_nic"

comCitrixXenclientXenmgrVmCreateChildServiceVm :: ((MonadRpc e m)) => String -> String -> String -> m (ObjectPath)
comCitrixXenclientXenmgrVmCreateChildServiceVm service_ objPath_ template = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "create_child_service_vm" [ (toVariant $ template) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.create_child_service_vm"

comCitrixXenclientXenmgrVmDelete :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmDelete service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "delete" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.delete"

comCitrixXenclientXenmgrVmDeleteArgoFirewallRule :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmDeleteArgoFirewallRule service_ objPath_ rule = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "delete_argo_firewall_rule" [ (toVariant $ rule) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.delete_argo_firewall_rule"

comCitrixXenclientXenmgrVmDeleteNetFirewallRule :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmDeleteNetFirewallRule service_ objPath_ id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "delete_net_firewall_rule" [ (toVariant $ id) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.delete_net_firewall_rule"

comCitrixXenclientXenmgrVmDestroy :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmDestroy service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "destroy" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.destroy"

comCitrixXenclientXenmgrVmGetDbKey :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientXenmgrVmGetDbKey service_ objPath_ key = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "get_db_key" [ (toVariant $ key) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.get_db_key"

comCitrixXenclientXenmgrVmGetDomstoreKey :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientXenmgrVmGetDomstoreKey service_ objPath_ key = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "get_domstore_key" [ (toVariant $ key) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.get_domstore_key"

comCitrixXenclientXenmgrVmHibernate :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmHibernate service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "hibernate" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.hibernate"

comCitrixXenclientXenmgrVmListArgoFirewallRules :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientXenmgrVmListArgoFirewallRules service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "list_argo_firewall_rules" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.list_argo_firewall_rules"

comCitrixXenclientXenmgrVmListDisks :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
comCitrixXenclientXenmgrVmListDisks service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "list_disks" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.list_disks"

comCitrixXenclientXenmgrVmListNetFirewallRules :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrVmListNetFirewallRules service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "list_net_firewall_rules" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.list_net_firewall_rules"

comCitrixXenclientXenmgrVmListNics :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
comCitrixXenclientXenmgrVmListNics service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "list_nics" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.list_nics"

comCitrixXenclientXenmgrVmPause :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmPause service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "pause" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.pause"

comCitrixXenclientXenmgrVmReadIcon :: ((MonadRpc e m)) => String -> String -> m (B.ByteString)
comCitrixXenclientXenmgrVmReadIcon service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "read_icon" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.read_icon"

comCitrixXenclientXenmgrVmReboot :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmReboot service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "reboot" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.reboot"

comCitrixXenclientXenmgrVmResume :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmResume service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "resume" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.resume"

comCitrixXenclientXenmgrVmResumeFromFile :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmResumeFromFile service_ objPath_ file = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "resume_from_file" [ (toVariant $ file) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.resume_from_file"

comCitrixXenclientXenmgrVmSetDbKey :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetDbKey service_ objPath_ key value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "set_db_key" [ (toVariant $ key), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.set_db_key"

comCitrixXenclientXenmgrVmSetDomstoreKey :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetDomstoreKey service_ objPath_ key value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "set_domstore_key" [ (toVariant $ key), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.set_domstore_key"

comCitrixXenclientXenmgrVmShutdown :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmShutdown service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "shutdown" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.shutdown"

comCitrixXenclientXenmgrVmSleep :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmSleep service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "sleep" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.sleep"

comCitrixXenclientXenmgrVmStart :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmStart service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "start" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.start"

comCitrixXenclientXenmgrVmStartInternal :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmStartInternal service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "start_internal" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.start_internal"

comCitrixXenclientXenmgrVmSuspendToFile :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSuspendToFile service_ objPath_ file = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "suspend_to_file" [ (toVariant $ file) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.suspend_to_file"

comCitrixXenclientXenmgrVmSwitch :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmSwitch service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "switch" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.switch"

comCitrixXenclientXenmgrVmUnpause :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmUnpause service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm" "unpause" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.unpause"

comCitrixXenclientXenmgrVmGetAcpi :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetAcpi service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "acpi" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetAcpi :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetAcpi service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "acpi", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetAcpiState :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetAcpiState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "acpi-state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetAcpiTable :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetAcpiTable service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "acpi-table" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetAcpiTable :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetAcpiTable service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "acpi-table", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetAmtPt :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetAmtPt service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "amt-pt" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetAmtPt :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetAmtPt service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "amt-pt", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetApic :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetApic service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "apic" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetApic :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetApic service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "apic", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetArgo :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetArgo service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "argo" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetArgo :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetArgo service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "argo", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetAutoS3Wake :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetAutoS3Wake service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "auto-s3-wake" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetAutoS3Wake :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetAutoS3Wake service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "auto-s3-wake", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetAutostartPending :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetAutostartPending service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "autostart-pending" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetBios :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetBios service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "bios" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetBios :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetBios service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "bios", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetBoot :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetBoot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "boot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetBoot :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetBoot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "boot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetBootSentinel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetBootSentinel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "boot-sentinel" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetBootSentinel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetBootSentinel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "boot-sentinel", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetCd :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetCd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetCd :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetCd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetCmdLine :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetCmdLine service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cmd-line" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetCmdLine :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetCmdLine service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cmd-line", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetControlPlatformPowerState :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetControlPlatformPowerState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "control-platform-power-state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetControlPlatformPowerState :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetControlPlatformPowerState service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "control-platform-power-state", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetCoresPerSocket :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetCoresPerSocket service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cores-per-socket" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetCoresPerSocket :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetCoresPerSocket service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cores-per-socket", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetCpuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetCpuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cpuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetCpuid :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetCpuid service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "cpuid", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetCryptoKeyDirs :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetCryptoKeyDirs service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "crypto-key-dirs" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetCryptoKeyDirs :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetCryptoKeyDirs service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "crypto-key-dirs", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetCryptoUser :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetCryptoUser service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "crypto-user" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetCryptoUser :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetCryptoUser service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "crypto-user", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetDependencies :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
comCitrixXenclientXenmgrVmGetDependencies service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "dependencies" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetDescription :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetDescription service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "description" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetDescription :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetDescription service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "description", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetDisplay :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetDisplay service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "display" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetDisplay :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetDisplay service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "display", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetDomid :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetDomid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "domid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetDomstoreReadAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetDomstoreReadAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "domstore-read-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetDomstoreReadAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetDomstoreReadAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "domstore-read-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetDomstoreWriteAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetDomstoreWriteAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "domstore-write-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetDomstoreWriteAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetDomstoreWriteAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "domstore-write-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetDownloadProgress :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetDownloadProgress service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "download-progress" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetDownloadProgress :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetDownloadProgress service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "download-progress", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetExtraHvm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetExtraHvm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "extra-hvm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetExtraHvm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetExtraHvm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "extra-hvm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetExtraXenvm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetExtraXenvm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "extra-xenvm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetExtraXenvm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetExtraXenvm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "extra-xenvm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetFlaskLabel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetFlaskLabel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "flask-label" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetFlaskLabel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetFlaskLabel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "flask-label", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetGpu :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetGpu service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "gpu" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetGpu :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetGpu service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "gpu", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetGreedyPcibackBind :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetGreedyPcibackBind service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "greedy-pciback-bind" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetGreedyPcibackBind :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetGreedyPcibackBind service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "greedy-pciback-bind", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetHap :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetHap service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hap" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetHap :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetHap service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hap", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetHdtype :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetHdtype service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hdtype" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetHdtype :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetHdtype service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hdtype", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetHibernated :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetHibernated service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hibernated" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetHiddenInSwitcher :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetHiddenInSwitcher service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hidden-in-switcher" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetHiddenInSwitcher :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetHiddenInSwitcher service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hidden-in-switcher", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetHiddenInUi :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetHiddenInUi service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hidden-in-ui" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetHiddenInUi :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetHiddenInUi service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hidden-in-ui", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetHpet :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetHpet service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hpet" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetHpet :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetHpet service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "hpet", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetIcbinnPath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetIcbinnPath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "icbinn-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetIcbinnPath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetIcbinnPath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "icbinn-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetImagePath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetImagePath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "image-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetImagePath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetImagePath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "image-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetInitFlaskLabel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetInitFlaskLabel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "init-flask-label" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetInitFlaskLabel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetInitFlaskLabel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "init-flask-label", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetInitrd :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetInitrd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "initrd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetInitrd :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetInitrd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "initrd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetInitrdExtract :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetInitrdExtract service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "initrd-extract" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetInitrdExtract :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetInitrdExtract service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "initrd-extract", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetKeepAlive :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetKeepAlive service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "keep-alive" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetKeepAlive :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetKeepAlive service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "keep-alive", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetKernel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetKernel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "kernel" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetKernel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetKernel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "kernel", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetKernelExtract :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetKernelExtract service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "kernel-extract" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetKernelExtract :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetKernelExtract service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "kernel-extract", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetDisplayHandlerStrict :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetDisplayHandlerStrict service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "display-handler-strict" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetDisplayHandlerStrict :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetDisplayHandlerStrict service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "display-handler-strict", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetImagePathVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetImagePathVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "image_path_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetImagePathVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetImagePathVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "image_path_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetLongFormVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetLongFormVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "long_form_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetLongFormVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetLongFormVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "long_form_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetShortFormVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetShortFormVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "short_form_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetShortFormVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetShortFormVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "short_form_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetTextColorVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetTextColorVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "text_color_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetTextColorVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetTextColorVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "text_color_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetBorderWidthVg :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetBorderWidthVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "border_width_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetBorderWidthVg :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetBorderWidthVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "border_width_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetBorderHeightVg :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetBorderHeightVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "border_height_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetBorderHeightVg :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetBorderHeightVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "border_height_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetVglassEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetVglassEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vglass_enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetVglassEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetVglassEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vglass_enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetMosaicMode :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetMosaicMode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "mosaic_mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetMosaicMode :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetMosaicMode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "mosaic_mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetWindowedX :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetWindowedX service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_x" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetWindowedX :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetWindowedX service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_x", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetWindowedY :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetWindowedY service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_y" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetWindowedY :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetWindowedY service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_y", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetWindowedW :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetWindowedW service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_w" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetWindowedW :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetWindowedW service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_w", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetWindowedH :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetWindowedH service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_h" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetWindowedH :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetWindowedH service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "windowed_h", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPrimaryDomainColor :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetPrimaryDomainColor service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "primary_domain_color" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPrimaryDomainColor :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetPrimaryDomainColor service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "primary_domain_color", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetSecondaryDomainColor :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetSecondaryDomainColor service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "secondary_domain_color" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetSecondaryDomainColor :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetSecondaryDomainColor service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "secondary_domain_color", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetMosaicVmEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetMosaicVmEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "mosaic_vm_enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetMosaicVmEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetMosaicVmEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "mosaic_vm_enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetMac :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetMac service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "mac" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetMeasured :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetMeasured service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "measured" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetMemory :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetMemory service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "memory" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetMemory :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetMemory service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "memory", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetMemoryMin :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetMemoryMin service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "memory-min" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetMemoryMin :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetMemoryMin service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "memory-min", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetMemoryStaticMax :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetMemoryStaticMax service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "memory-static-max" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetMemoryStaticMax :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetMemoryStaticMax service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "memory-static-max", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetMemoryTarget :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetMemoryTarget service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "memory-target" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetName :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetName service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "name" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetName :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetName service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "name", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetNativeExperience :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetNativeExperience service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "native-experience" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetNativeExperience :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetNativeExperience service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "native-experience", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetNestedhvm :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetNestedhvm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "nestedhvm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetNestedhvm :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetNestedhvm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "nestedhvm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetNotify :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetNotify service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "notify" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetNotify :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetNotify service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "notify", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetNx :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetNx service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "nx" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetNx :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetNx service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "nx", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetOemAcpiFeatures :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetOemAcpiFeatures service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "oem-acpi-features" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetOemAcpiFeatures :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetOemAcpiFeatures service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "oem-acpi-features", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetOs :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetOs service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "os" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetOs :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetOs service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "os", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetOvfTransportIso :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetOvfTransportIso service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "ovf-transport-iso" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetOvfTransportIso :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetOvfTransportIso service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "ovf-transport-iso", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPae :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPae service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "pae" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPae :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPae service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "pae", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPassthroughIo :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetPassthroughIo service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "passthrough-io" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPassthroughIo :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetPassthroughIo service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "passthrough-io", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPassthroughMmio :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetPassthroughMmio service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "passthrough-mmio" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPassthroughMmio :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetPassthroughMmio service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "passthrough-mmio", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyAudioAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyAudioAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-audio-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyAudioAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyAudioAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-audio-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyAudioRecording :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyAudioRecording service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-audio-recording" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyAudioRecording :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyAudioRecording service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-audio-recording", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyCdAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyCdAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-cd-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyCdAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyCdAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-cd-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyCdRecording :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyCdRecording service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-cd-recording" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyCdRecording :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyCdRecording service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-cd-recording", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyModifyVmSettings :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyModifyVmSettings service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-modify-vm-settings" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyModifyVmSettings :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyModifyVmSettings service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-modify-vm-settings", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyPrintScreen :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyPrintScreen service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-print-screen" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyPrintScreen :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyPrintScreen service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-print-screen", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyWiredNetworking :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyWiredNetworking service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-wired-networking" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyWiredNetworking :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyWiredNetworking service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-wired-networking", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPolicyWirelessNetworking :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPolicyWirelessNetworking service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-wireless-networking" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPolicyWirelessNetworking :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPolicyWirelessNetworking service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "policy-wireless-networking", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPorticaEnabled :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetPorticaEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "portica-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetPorticaInstalled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPorticaInstalled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "portica-installed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetPreserveOnReboot :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPreserveOnReboot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "preserve-on-reboot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPreserveOnReboot :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPreserveOnReboot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "preserve-on-reboot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPrivateSpace :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetPrivateSpace service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "private-space" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetProvidesDefaultNetworkBackend :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetProvidesDefaultNetworkBackend service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "provides-default-network-backend" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetProvidesDefaultNetworkBackend :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetProvidesDefaultNetworkBackend service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "provides-default-network-backend", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetProvidesGraphicsFallback :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetProvidesGraphicsFallback service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "provides-graphics-fallback" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetProvidesGraphicsFallback :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetProvidesGraphicsFallback service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "provides-graphics-fallback", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetProvidesNetworkBackend :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetProvidesNetworkBackend service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "provides-network-backend" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetProvidesNetworkBackend :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetProvidesNetworkBackend service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "provides-network-backend", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPvAddons :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetPvAddons service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "pv-addons" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPvAddons :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetPvAddons service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "pv-addons", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetPvAddonsVersion :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetPvAddonsVersion service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "pv-addons-version" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetPvAddonsVersion :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetPvAddonsVersion service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "pv-addons-version", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetQemuDmPath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetQemuDmPath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "qemu-dm-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetQemuDmPath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetQemuDmPath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "qemu-dm-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetQemuDmTimeout :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetQemuDmTimeout service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "qemu-dm-timeout" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetQemuDmTimeout :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetQemuDmTimeout service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "qemu-dm-timeout", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetReady :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetReady service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "ready" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetReady :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetReady service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "ready", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRealm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetRealm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "realm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRealm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetRealm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "realm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRestrictDisplayDepth :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetRestrictDisplayDepth service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "restrict-display-depth" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRestrictDisplayDepth :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetRestrictDisplayDepth service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "restrict-display-depth", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRestrictDisplayRes :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetRestrictDisplayRes service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "restrict-display-res" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRestrictDisplayRes :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetRestrictDisplayRes service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "restrict-display-res", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRunInsteadofStart :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetRunInsteadofStart service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-insteadof-start" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRunInsteadofStart :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetRunInsteadofStart service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-insteadof-start", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRunOnAcpiStateChange :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetRunOnAcpiStateChange service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-on-acpi-state-change" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRunOnAcpiStateChange :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetRunOnAcpiStateChange service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-on-acpi-state-change", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRunOnStateChange :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetRunOnStateChange service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-on-state-change" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRunOnStateChange :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetRunOnStateChange service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-on-state-change", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRunPostCreate :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetRunPostCreate service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-post-create" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRunPostCreate :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetRunPostCreate service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-post-create", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRunPreBoot :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetRunPreBoot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-pre-boot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRunPreBoot :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetRunPreBoot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-pre-boot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetRunPreDelete :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetRunPreDelete service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-pre-delete" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetRunPreDelete :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetRunPreDelete service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "run-pre-delete", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetS3Mode :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetS3Mode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "s3-mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetS3Mode :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetS3Mode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "s3-mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetS4Mode :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetS4Mode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "s4-mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetS4Mode :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetS4Mode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "s4-mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetSeamlessId :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetSeamlessId service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "seamless-id" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetSeamlessId :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetSeamlessId service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "seamless-id", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetSeamlessMouseLeft :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetSeamlessMouseLeft service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "seamless-mouse-left" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetSeamlessMouseRight :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetSeamlessMouseRight service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "seamless-mouse-right" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetSeamlessTraffic :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetSeamlessTraffic service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "seamless-traffic" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetSeamlessTraffic :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetSeamlessTraffic service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "seamless-traffic", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetSerial :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetSerial service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "serial" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetSerial :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetSerial service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "serial", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetShowSwitcher :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetShowSwitcher service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "show-switcher" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetShowSwitcher :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetShowSwitcher service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "show-switcher", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetShutdownPriority :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetShutdownPriority service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "shutdown-priority" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetShutdownPriority :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetShutdownPriority service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "shutdown-priority", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetSlot :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetSlot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "slot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetSlot :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetSlot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "slot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetSound :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetSound service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "sound" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetSound :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetSound service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "sound", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetStartFromSuspendImage :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetStartFromSuspendImage service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "start-from-suspend-image" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetStartFromSuspendImage :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetStartFromSuspendImage service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "start-from-suspend-image", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetStartOnBoot :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetStartOnBoot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "start-on-boot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetStartOnBoot :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetStartOnBoot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "start-on-boot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetStartOnBootPriority :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetStartOnBootPriority service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "start-on-boot-priority" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetStartOnBootPriority :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetStartOnBootPriority service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "start-on-boot-priority", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetState :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetStubdom :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetStubdom service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "stubdom" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetStubdom :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetStubdom service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "stubdom", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetStubdomFlaskLabel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetStubdomFlaskLabel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "stubdom-flask-label" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetStubdomFlaskLabel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetStubdomFlaskLabel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "stubdom-flask-label", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetSyncUuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetSyncUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "sync-uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetSyncUuid :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetSyncUuid service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "sync-uuid", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetTimeOffset :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetTimeOffset service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "time-offset" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetTimeOffset :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetTimeOffset service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "time-offset", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetTimerMode :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetTimerMode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "timer-mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetTimerMode :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetTimerMode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "timer-mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetTrackDependencies :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetTrackDependencies service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "track-dependencies" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetTrackDependencies :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetTrackDependencies service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "track-dependencies", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetType :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetType :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetType service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "type", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetUsbAutoPassthrough :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetUsbAutoPassthrough service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-auto-passthrough" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetUsbAutoPassthrough :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetUsbAutoPassthrough service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-auto-passthrough", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetUsbControl :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetUsbControl service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-control" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetUsbControl :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetUsbControl service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-control", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetUsbEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetUsbEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetUsbEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetUsbEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetUsbGrabDevices :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetUsbGrabDevices service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-grab-devices" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetUsbGrabDevices :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetUsbGrabDevices service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "usb-grab-devices", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetUuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmGetVcpus :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetVcpus service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vcpus" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetVcpus :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetVcpus service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vcpus", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetVideoram :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmGetVideoram service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "videoram" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetVideoram :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmSetVideoram service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "videoram", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetViridian :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetViridian service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "viridian" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetViridian :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetViridian service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "viridian", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetVirtType :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetVirtType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "virt-type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetVirtType :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetVirtType service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "virt-type", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetVkbd :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetVkbd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vkbd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetVkbd :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetVkbd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vkbd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetVsnd :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetVsnd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vsnd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetVsnd :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetVsnd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "vsnd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetWiredNetwork :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetWiredNetwork service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "wired-network" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetWiredNetwork :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetWiredNetwork service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "wired-network", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetWirelessControl :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetWirelessControl service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "wireless-control" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetWirelessControl :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetWirelessControl service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "wireless-control", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetWirelessNetwork :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmGetWirelessNetwork service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "wireless-network" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetWirelessNetwork :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmSetWirelessNetwork service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "wireless-network", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmGetXciCpuidSignature :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmGetXciCpuidSignature service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "xci-cpuid-signature" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmSetXciCpuidSignature :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmSetXciCpuidSignature service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm", toVariant "xci-cpuid-signature", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

-- Interface com.citrix.xenclient.xenmgr.vm.auth

comCitrixXenclientXenmgrVmAuthAuth :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientXenmgrVmAuthAuth service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.auth" "auth" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.auth.auth"

comCitrixXenclientXenmgrVmAuthAuthRequired :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmAuthAuthRequired service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.auth" "auth_required" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.auth.auth_required"

-- Interface com.citrix.xenclient.xenmgr.vm.pci

comCitrixXenclientXenmgrVmPciAddPtRule :: ((MonadRpc e m)) => String -> String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrVmPciAddPtRule service_ objPath_ pciclass vendor_id device_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.pci" "add_pt_rule" [ (toVariant $ pciclass), (toVariant $ vendor_id), (toVariant $ device_id) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.pci.add_pt_rule"

comCitrixXenclientXenmgrVmPciAddPtRuleBdf :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmPciAddPtRuleBdf service_ objPath_ bdf = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.pci" "add_pt_rule_bdf" [ (toVariant $ bdf) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.pci.add_pt_rule_bdf"

comCitrixXenclientXenmgrVmPciDeletePtRule :: ((MonadRpc e m)) => String -> String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrVmPciDeletePtRule service_ objPath_ pciclass vendor_id device_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.pci" "delete_pt_rule" [ (toVariant $ pciclass), (toVariant $ vendor_id), (toVariant $ device_id) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.pci.delete_pt_rule"

comCitrixXenclientXenmgrVmPciDeletePtRuleBdf :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmPciDeletePtRuleBdf service_ objPath_ bdf = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.pci" "delete_pt_rule_bdf" [ (toVariant $ bdf) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.pci.delete_pt_rule_bdf"

comCitrixXenclientXenmgrVmPciListPtPciDevices :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrVmPciListPtPciDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.pci" "list_pt_pci_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.pci.list_pt_pci_devices"

comCitrixXenclientXenmgrVmPciListPtRules :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrVmPciListPtRules service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.pci" "list_pt_rules" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.pci.list_pt_rules"

-- Interface com.citrix.xenclient.xenmgr.vm.product

comCitrixXenclientXenmgrVmProductGetOvfEnvXml :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmProductGetOvfEnvXml service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.product" "get_ovf_env_xml" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.product.get_ovf_env_xml"

comCitrixXenclientXenmgrVmProductGetProductProperty :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientXenmgrVmProductGetProductProperty service_ objPath_ property_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.product" "get_product_property" [ (toVariant $ property_id) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.product.get_product_property"

comCitrixXenclientXenmgrVmProductListProductProperties :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientXenmgrVmProductListProductProperties service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.product" "list_product_properties" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.product.list_product_properties"

comCitrixXenclientXenmgrVmProductSetProductProperty :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientXenmgrVmProductSetProductProperty service_ objPath_ property_id value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.xenmgr.vm.product" "set_product_property" [ (toVariant $ property_id), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.xenmgr.vm.product.set_product_property"

-- Interface com.citrix.xenclient.xenmgr.vm.unrestricted

comCitrixXenclientXenmgrVmUnrestrictedGetAcpi :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetAcpi service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "acpi" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetAcpi :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetAcpi service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "acpi", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetAcpiState :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetAcpiState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "acpi-state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetAcpiTable :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetAcpiTable service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "acpi-table" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetAcpiTable :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetAcpiTable service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "acpi-table", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetAmtPt :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetAmtPt service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "amt-pt" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetAmtPt :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetAmtPt service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "amt-pt", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetApic :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetApic service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "apic" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetApic :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetApic service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "apic", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetArgo :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetArgo service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "argo" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetArgo :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetArgo service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "argo", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetAutoS3Wake :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetAutoS3Wake service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "auto-s3-wake" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetAutoS3Wake :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetAutoS3Wake service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "auto-s3-wake", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetAutostartPending :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetAutostartPending service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "autostart-pending" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetBios :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetBios service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "bios" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetBios :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetBios service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "bios", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetBoot :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetBoot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "boot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetBoot :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetBoot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "boot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetBootSentinel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetBootSentinel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "boot-sentinel" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetBootSentinel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetBootSentinel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "boot-sentinel", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetCd :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetCd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetCd :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetCd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetCmdLine :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetCmdLine service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cmd-line" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetCmdLine :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetCmdLine service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cmd-line", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetControlPlatformPowerState :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetControlPlatformPowerState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "control-platform-power-state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetControlPlatformPowerState :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetControlPlatformPowerState service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "control-platform-power-state", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetCoresPerSocket :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetCoresPerSocket service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cores-per-socket" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetCoresPerSocket :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetCoresPerSocket service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cores-per-socket", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetCpuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetCpuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cpuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetCpuid :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetCpuid service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "cpuid", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetCryptoKeyDirs :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetCryptoKeyDirs service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "crypto-key-dirs" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetCryptoKeyDirs :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetCryptoKeyDirs service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "crypto-key-dirs", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetCryptoUser :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetCryptoUser service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "crypto-user" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetCryptoUser :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetCryptoUser service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "crypto-user", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetDependencies :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
comCitrixXenclientXenmgrVmUnrestrictedGetDependencies service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "dependencies" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetDescription :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetDescription service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "description" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetDescription :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetDescription service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "description", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetDisplay :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetDisplay service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "display" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetDisplay :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetDisplay service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "display", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetDomid :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetDomid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "domid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreReadAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreReadAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "domstore-read-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreReadAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreReadAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "domstore-read-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreWriteAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetDomstoreWriteAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "domstore-write-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreWriteAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetDomstoreWriteAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "domstore-write-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetDownloadProgress :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetDownloadProgress service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "download-progress" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetDownloadProgress :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetDownloadProgress service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "download-progress", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetExtraHvm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetExtraHvm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "extra-hvm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetExtraHvm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetExtraHvm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "extra-hvm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetExtraXenvm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetExtraXenvm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "extra-xenvm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetExtraXenvm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetExtraXenvm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "extra-xenvm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetFlaskLabel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetFlaskLabel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "flask-label" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetFlaskLabel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetFlaskLabel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "flask-label", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetGpu :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetGpu service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "gpu" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetGpu :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetGpu service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "gpu", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetGreedyPcibackBind :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetGreedyPcibackBind service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "greedy-pciback-bind" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetGreedyPcibackBind :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetGreedyPcibackBind service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "greedy-pciback-bind", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetHap :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetHap service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hap" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetHap :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetHap service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hap", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetHdtype :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetHdtype service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hdtype" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetHdtype :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetHdtype service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hdtype", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetHibernated :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetHibernated service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hibernated" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInSwitcher :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInSwitcher service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hidden-in-switcher" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInSwitcher :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInSwitcher service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hidden-in-switcher", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInUi :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetHiddenInUi service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hidden-in-ui" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInUi :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetHiddenInUi service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hidden-in-ui", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetHpet :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetHpet service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hpet" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetHpet :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetHpet service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "hpet", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetDisplayHandlerStrict :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetDisplayHandlerStrict service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "display-handler-strict" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetDisplayHandlerStrict :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetDisplayHandlerStrict service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "display-handler-strict", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetStubDomid :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetStubDomid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stub_domid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetImagePathVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetImagePathVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "image_path_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetImagePathVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetImagePathVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "image_path_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetLongFormVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetLongFormVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "long_form_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetLongFormVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetLongFormVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "long_form_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetShortFormVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetShortFormVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "short_form_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetShortFormVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetShortFormVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "short_form_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetTextColorVg :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetTextColorVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "text_color_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetTextColorVg :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetTextColorVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "text_color_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetBorderWidthVg :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetBorderWidthVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "border_width_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetBorderWidthVg :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetBorderWidthVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "border_width_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetBorderHeightVg :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetBorderHeightVg service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "border_height_vg" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetBorderHeightVg :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetBorderHeightVg service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "border_height_vg", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetVglassEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetVglassEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vglass_enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetVglassEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetVglassEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vglass_enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetMosaicMode :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetMosaicMode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "mosaic_mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetMosaicMode :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetMosaicMode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "mosaic_mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetWindowedX :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetWindowedX service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_x" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetWindowedX :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetWindowedX service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_x", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetWindowedY :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetWindowedY service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_y" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetWindowedY :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetWindowedY service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_y", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetWindowedW :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetWindowedW service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_w" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetWindowedW :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetWindowedW service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_w", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetWindowedH :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetWindowedH service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_h" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetWindowedH :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetWindowedH service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "windowed_h", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPrimaryDomainColor :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetPrimaryDomainColor service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "primary_domain_color" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPrimaryDomainColor :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPrimaryDomainColor service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "primary_domain_color", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetSecondaryDomainColor :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetSecondaryDomainColor service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "secondary_domain_color" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetSecondaryDomainColor :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetSecondaryDomainColor service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "secondary_domain_color", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetMosaicVmEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetMosaicVmEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "mosaic_vm_enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetMosaicVmEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetMosaicVmEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "mosaic_vm_enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetIcbinnPath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetIcbinnPath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "icbinn-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetIcbinnPath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetIcbinnPath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "icbinn-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetImagePath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetImagePath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "image-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetImagePath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetImagePath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "image-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetInitFlaskLabel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetInitFlaskLabel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "init-flask-label" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetInitFlaskLabel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetInitFlaskLabel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "init-flask-label", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetInitrd :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetInitrd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "initrd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetInitrd :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetInitrd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "initrd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetInitrdExtract :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetInitrdExtract service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "initrd-extract" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetInitrdExtract :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetInitrdExtract service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "initrd-extract", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetKeepAlive :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetKeepAlive service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "keep-alive" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetKeepAlive :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetKeepAlive service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "keep-alive", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetKernel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetKernel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "kernel" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetKernel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetKernel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "kernel", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetKernelExtract :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetKernelExtract service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "kernel-extract" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetKernelExtract :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetKernelExtract service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "kernel-extract", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetMac :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetMac service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "mac" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetMeasured :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetMeasured service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "measured" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetMemory :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetMemory service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "memory" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetMemory :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetMemory service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "memory", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetMemoryMin :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetMemoryMin service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "memory-min" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetMemoryMin :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetMemoryMin service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "memory-min", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetMemoryStaticMax :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetMemoryStaticMax service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "memory-static-max" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetMemoryStaticMax :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetMemoryStaticMax service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "memory-static-max", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetMemoryTarget :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetMemoryTarget service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "memory-target" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetName :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetName service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "name" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetName :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetName service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "name", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetNativeExperience :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetNativeExperience service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "native-experience" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetNativeExperience :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetNativeExperience service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "native-experience", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetNestedhvm :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetNestedhvm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "nestedhvm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetNestedhvm :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetNestedhvm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "nestedhvm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetNotify :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetNotify service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "notify" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetNotify :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetNotify service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "notify", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetNx :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetNx service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "nx" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetNx :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetNx service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "nx", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetOemAcpiFeatures :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetOemAcpiFeatures service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "oem-acpi-features" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetOemAcpiFeatures :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetOemAcpiFeatures service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "oem-acpi-features", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetOs :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetOs service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "os" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetOs :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetOs service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "os", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetOvfTransportIso :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetOvfTransportIso service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "ovf-transport-iso" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetOvfTransportIso :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetOvfTransportIso service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "ovf-transport-iso", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPae :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPae service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "pae" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPae :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPae service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "pae", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughIo :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughIo service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "passthrough-io" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughIo :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughIo service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "passthrough-io", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughMmio :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetPassthroughMmio service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "passthrough-mmio" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughMmio :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPassthroughMmio service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "passthrough-mmio", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-audio-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-audio-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioRecording :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyAudioRecording service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-audio-recording" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioRecording :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyAudioRecording service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-audio-recording", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdAccess :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdAccess service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-cd-access" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdAccess :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdAccess service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-cd-access", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdRecording :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyCdRecording service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-cd-recording" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdRecording :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyCdRecording service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-cd-recording", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyModifyVmSettings :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyModifyVmSettings service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-modify-vm-settings" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyModifyVmSettings :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyModifyVmSettings service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-modify-vm-settings", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyPrintScreen :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyPrintScreen service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-print-screen" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyPrintScreen :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyPrintScreen service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-print-screen", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWiredNetworking :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWiredNetworking service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-wired-networking" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWiredNetworking :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWiredNetworking service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-wired-networking", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWirelessNetworking :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPolicyWirelessNetworking service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-wireless-networking" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWirelessNetworking :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPolicyWirelessNetworking service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "policy-wireless-networking", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPorticaEnabled :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetPorticaEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "portica-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetPorticaInstalled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPorticaInstalled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "portica-installed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetPreserveOnReboot :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPreserveOnReboot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "preserve-on-reboot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPreserveOnReboot :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPreserveOnReboot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "preserve-on-reboot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPrivateSpace :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetPrivateSpace service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "private-space" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetProvidesDefaultNetworkBackend :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetProvidesDefaultNetworkBackend service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "provides-default-network-backend" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetProvidesDefaultNetworkBackend :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetProvidesDefaultNetworkBackend service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "provides-default-network-backend", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetProvidesGraphicsFallback :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetProvidesGraphicsFallback service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "provides-graphics-fallback" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetProvidesGraphicsFallback :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetProvidesGraphicsFallback service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "provides-graphics-fallback", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetProvidesNetworkBackend :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetProvidesNetworkBackend service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "provides-network-backend" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetProvidesNetworkBackend :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetProvidesNetworkBackend service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "provides-network-backend", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPvAddons :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetPvAddons service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "pv-addons" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPvAddons :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPvAddons service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "pv-addons", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetPvAddonsVersion :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetPvAddonsVersion service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "pv-addons-version" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetPvAddonsVersion :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetPvAddonsVersion service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "pv-addons-version", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmPath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmPath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "qemu-dm-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmPath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmPath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "qemu-dm-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmTimeout :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetQemuDmTimeout service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "qemu-dm-timeout" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmTimeout :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetQemuDmTimeout service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "qemu-dm-timeout", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetReady :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetReady service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "ready" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetReady :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetReady service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "ready", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRealm :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetRealm service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "realm" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRealm :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRealm service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "realm", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayDepth :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayDepth service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "restrict-display-depth" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayDepth :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayDepth service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "restrict-display-depth", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayRes :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetRestrictDisplayRes service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "restrict-display-res" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayRes :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRestrictDisplayRes service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "restrict-display-res", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRunInsteadofStart :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetRunInsteadofStart service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-insteadof-start" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRunInsteadofStart :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRunInsteadofStart service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-insteadof-start", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRunOnAcpiStateChange :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetRunOnAcpiStateChange service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-on-acpi-state-change" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRunOnAcpiStateChange :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRunOnAcpiStateChange service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-on-acpi-state-change", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRunOnStateChange :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetRunOnStateChange service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-on-state-change" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRunOnStateChange :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRunOnStateChange service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-on-state-change", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRunPostCreate :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetRunPostCreate service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-post-create" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRunPostCreate :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRunPostCreate service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-post-create", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRunPreBoot :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetRunPreBoot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-pre-boot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRunPreBoot :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRunPreBoot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-pre-boot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetRunPreDelete :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetRunPreDelete service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-pre-delete" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetRunPreDelete :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetRunPreDelete service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "run-pre-delete", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetS3Mode :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetS3Mode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "s3-mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetS3Mode :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetS3Mode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "s3-mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetS4Mode :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetS4Mode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "s4-mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetS4Mode :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetS4Mode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "s4-mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessId :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessId service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "seamless-id" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessId :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessId service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "seamless-id", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseLeft :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseLeft service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "seamless-mouse-left" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseRight :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessMouseRight service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "seamless-mouse-right" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessTraffic :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetSeamlessTraffic service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "seamless-traffic" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessTraffic :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetSeamlessTraffic service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "seamless-traffic", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetSerial :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetSerial service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "serial" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetSerial :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetSerial service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "serial", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetShowSwitcher :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetShowSwitcher service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "show-switcher" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetShowSwitcher :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetShowSwitcher service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "show-switcher", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetShutdownPriority :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetShutdownPriority service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "shutdown-priority" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetShutdownPriority :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetShutdownPriority service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "shutdown-priority", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetSlot :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetSlot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "slot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetSlot :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetSlot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "slot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetSound :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetSound service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "sound" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetSound :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetSound service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "sound", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetStartFromSuspendImage :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetStartFromSuspendImage service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "start-from-suspend-image" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetStartFromSuspendImage :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetStartFromSuspendImage service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "start-from-suspend-image", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBoot :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBoot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "start-on-boot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBoot :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBoot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "start-on-boot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBootPriority :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetStartOnBootPriority service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "start-on-boot-priority" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBootPriority :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetStartOnBootPriority service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "start-on-boot-priority", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetState :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "state" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetStubdom :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetStubdom service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetStubdom :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetStubdom service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetStubdomCmdline :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetStubdomCmdline service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom-cmdline" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetStubdomCmdline :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetStubdomCmdline service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom-cmdline", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetStubdomFlaskLabel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetStubdomFlaskLabel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom-flask-label" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetStubdomFlaskLabel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetStubdomFlaskLabel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom-flask-label", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetStubdomMemory :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetStubdomMemory service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom-memory" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetStubdomMemory :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetStubdomMemory service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "stubdom-memory", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetSyncUuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetSyncUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "sync-uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetSyncUuid :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetSyncUuid service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "sync-uuid", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetTimeOffset :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetTimeOffset service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "time-offset" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetTimeOffset :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetTimeOffset service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "time-offset", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetTimerMode :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetTimerMode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "timer-mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetTimerMode :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetTimerMode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "timer-mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetTrackDependencies :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetTrackDependencies service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "track-dependencies" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetTrackDependencies :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetTrackDependencies service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "track-dependencies", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetType :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetType :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetType service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "type", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetUsbAutoPassthrough :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetUsbAutoPassthrough service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-auto-passthrough" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetUsbAutoPassthrough :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetUsbAutoPassthrough service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-auto-passthrough", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetUsbControl :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetUsbControl service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-control" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetUsbControl :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetUsbControl service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-control", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetUsbEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetUsbEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetUsbEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetUsbEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetUsbGrabDevices :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetUsbGrabDevices service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-grab-devices" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetUsbGrabDevices :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetUsbGrabDevices service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "usb-grab-devices", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetUuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedGetVcpus :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetVcpus service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vcpus" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetVcpus :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetVcpus service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vcpus", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetVideoram :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientXenmgrVmUnrestrictedGetVideoram service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "videoram" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetVideoram :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetVideoram service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "videoram", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetViridian :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetViridian service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "viridian" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetViridian :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetViridian service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "viridian", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetVirtType :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetVirtType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "virt-type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetVirtType :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetVirtType service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "virt-type", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetVkbd :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetVkbd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vkbd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetVkbd :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetVkbd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vkbd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetVsnd :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetVsnd service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vsnd" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetVsnd :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetVsnd service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "vsnd", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetWiredNetwork :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetWiredNetwork service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "wired-network" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetWiredNetwork :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetWiredNetwork service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "wired-network", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetWirelessControl :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetWirelessControl service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "wireless-control" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetWirelessControl :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetWirelessControl service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "wireless-control", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetWirelessNetwork :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientXenmgrVmUnrestrictedGetWirelessNetwork service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "wireless-network" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetWirelessNetwork :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetWirelessNetwork service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "wireless-network", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientXenmgrVmUnrestrictedGetXciCpuidSignature :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientXenmgrVmUnrestrictedGetXciCpuidSignature service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "xci-cpuid-signature" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientXenmgrVmUnrestrictedSetXciCpuidSignature :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientXenmgrVmUnrestrictedSetXciCpuidSignature service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.xenmgr.vm.unrestricted", toVariant "xci-cpuid-signature", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"
