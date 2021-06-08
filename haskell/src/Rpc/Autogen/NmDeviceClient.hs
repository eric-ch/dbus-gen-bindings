module Rpc.Autogen.NmDeviceClient (
  eNM_DEVICE_STATE_UNKNOWN
  , eNM_DEVICE_STATE_UNMANAGED
  , eNM_DEVICE_STATE_UNAVAILABLE
  , eNM_DEVICE_STATE_DISCONNECTED
  , eNM_DEVICE_STATE_PREPARE
  , eNM_DEVICE_STATE_CONFIG
  , eNM_DEVICE_STATE_NEED_AUTH
  , eNM_DEVICE_STATE_IP_CONFIG
  , eNM_DEVICE_STATE_IP_CHECK
  , eNM_DEVICE_STATE_SECONDARIES
  , eNM_DEVICE_STATE_ACTIVATED
  , eNM_DEVICE_STATE_DEACTIVATING
  , eNM_DEVICE_STATE_FAILED
  , eNM_DEVICE_TYPE_UNKNOWN
  , eNM_DEVICE_TYPE_ETHERNET
  , eNM_DEVICE_TYPE_WIFI
  , eNM_DEVICE_TYPE_UNUSED1
  , eNM_DEVICE_TYPE_UNUSED2
  , eNM_DEVICE_TYPE_BT
  , eNM_DEVICE_TYPE_OLPC_MESH
  , eNM_DEVICE_TYPE_WIMAX
  , eNM_DEVICE_TYPE_MODEM
  , eNM_DEVICE_TYPE_INFINIBAND
  , eNM_DEVICE_TYPE_BOND
  , eNM_DEVICE_TYPE_VLAN
  , eNM_DEVICE_TYPE_ADSL
  , eNM_DEVICE_TYPE_BRIDGE
  , eNM_DEVICE_STATE_REASON_UNKNOWN
  , eNM_DEVICE_STATE_REASON_NONE
  , eNM_DEVICE_STATE_REASON_NOW_MANAGED
  , eNM_DEVICE_STATE_REASON_NOW_UNMANAGED
  , eNM_DEVICE_STATE_REASON_CONFIG_FAILED
  , eNM_DEVICE_STATE_REASON_CONFIG_UNAVAILABLE
  , eNM_DEVICE_STATE_REASON_CONFIG_EXPIRED
  , eNM_DEVICE_STATE_REASON_NO_SECRETS
  , eNM_DEVICE_STATE_REASON_SUPPLICANT_DISCONNECT
  , eNM_DEVICE_STATE_REASON_SUPPLICANT_CONFIG_FAILED
  , eNM_DEVICE_STATE_REASON_SUPPLICANT_FAILED
  , eNM_DEVICE_STATE_REASON_SUPPLICANT_TIMEOUT
  , eNM_DEVICE_STATE_REASON_PPP_START_FAILED
  , eNM_DEVICE_STATE_REASON_PPP_DISCONNECT
  , eNM_DEVICE_STATE_REASON_PPP_FAILED
  , eNM_DEVICE_STATE_REASON_DHCP_START_FAILED
  , eNM_DEVICE_STATE_REASON_DHCP_ERROR
  , eNM_DEVICE_STATE_REASON_DHCP_FAILED
  , eNM_DEVICE_STATE_REASON_SHARED_START_FAILED
  , eNM_DEVICE_STATE_REASON_SHARED_FAILED
  , eNM_DEVICE_STATE_REASON_AUTOIP_START_FAILED
  , eNM_DEVICE_STATE_REASON_AUTOIP_ERROR
  , eNM_DEVICE_STATE_REASON_AUTOIP_FAILED
  , eNM_DEVICE_STATE_REASON_MODEM_BUSY
  , eNM_DEVICE_STATE_REASON_MODEM_NO_DIAL_TONE
  , eNM_DEVICE_STATE_REASON_MODEM_NO_CARRIER
  , eNM_DEVICE_STATE_REASON_MODEM_DIAL_TIMEOUT
  , eNM_DEVICE_STATE_REASON_MODEM_DIAL_FAILED
  , eNM_DEVICE_STATE_REASON_MODEM_INIT_FAILED
  , eNM_DEVICE_STATE_REASON_GSM_APN_FAILED
  , eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_NOT_SEARCHING
  , eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_DENIED
  , eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_TIMEOUT
  , eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_FAILED
  , eNM_DEVICE_STATE_REASON_GSM_PIN_CHECK_FAILED
  , eNM_DEVICE_STATE_REASON_FIRMWARE_MISSING
  , eNM_DEVICE_STATE_REASON_REMOVED
  , eNM_DEVICE_STATE_REASON_SLEEPING
  , eNM_DEVICE_STATE_REASON_CONNECTION_REMOVED
  , eNM_DEVICE_STATE_REASON_USER_REQUESTED
  , eNM_DEVICE_STATE_REASON_CARRIER
  , eNM_DEVICE_STATE_REASON_CONNECTION_ASSUMED
  , eNM_DEVICE_STATE_REASON_SUPPLICANT_AVAILABLE
  , eNM_DEVICE_STATE_REASON_MODEM_NOT_FOUND
  , eNM_DEVICE_STATE_REASON_BT_FAILED
  , eNM_DEVICE_STATE_REASON_GSM_SIM_NOT_INSERTED
  , eNM_DEVICE_STATE_REASON_GSM_SIM_PIN_REQUIRED
  , eNM_DEVICE_STATE_REASON_GSM_SIM_PUK_REQUIRED
  , eNM_DEVICE_STATE_REASON_GSM_SIM_WRONG
  , eNM_DEVICE_STATE_REASON_INFINIBAND_MODE
  , eNM_DEVICE_STATE_REASON_DEPENDENCY_FAILED
  , eNM_DEVICE_STATE_REASON_BR2684_FAILED
  , eNM_DEVICE_STATE_REASON_MODEM_MANAGER_UNAVAILABLE
  , eNM_DEVICE_STATE_REASON_SSID_NOT_FOUND
  , eNM_DEVICE_STATE_REASON_SECONDARY_CONNECTION_FAILED
  , orgFreedesktopNetworkManagerDeviceReapply
  , orgFreedesktopNetworkManagerDeviceGetAppliedConnection
  , orgFreedesktopNetworkManagerDeviceDisconnect
  , orgFreedesktopNetworkManagerDeviceDelete
  , orgFreedesktopNetworkManagerDeviceGetUdi
  , orgFreedesktopNetworkManagerDeviceGetInterface
  , orgFreedesktopNetworkManagerDeviceGetIpInterface
  , orgFreedesktopNetworkManagerDeviceGetDriver
  , orgFreedesktopNetworkManagerDeviceGetDriverVersion
  , orgFreedesktopNetworkManagerDeviceGetFirmwareVersion
  , orgFreedesktopNetworkManagerDeviceGetCapabilities
  , orgFreedesktopNetworkManagerDeviceGetIp4Address
  , orgFreedesktopNetworkManagerDeviceGetState
  , orgFreedesktopNetworkManagerDeviceGetActiveConnection
  , orgFreedesktopNetworkManagerDeviceGetIp4Config
  , orgFreedesktopNetworkManagerDeviceGetDhcp4Config
  , orgFreedesktopNetworkManagerDeviceGetIp6Config
  , orgFreedesktopNetworkManagerDeviceGetDhcp6Config
  , orgFreedesktopNetworkManagerDeviceGetManaged
  , orgFreedesktopNetworkManagerDeviceSetManaged
  , orgFreedesktopNetworkManagerDeviceGetAutoconnect
  , orgFreedesktopNetworkManagerDeviceSetAutoconnect
  , orgFreedesktopNetworkManagerDeviceGetFirmwareMissing
  , orgFreedesktopNetworkManagerDeviceGetNmPluginMissing
  , orgFreedesktopNetworkManagerDeviceGetDeviceType
  , orgFreedesktopNetworkManagerDeviceGetAvailableConnections
  , orgFreedesktopNetworkManagerDeviceGetPhysicalPortId
  , orgFreedesktopNetworkManagerDeviceGetMtu
  , orgFreedesktopNetworkManagerDeviceGetMetered
  , orgFreedesktopNetworkManagerDeviceGetLldpNeighbors
  , orgFreedesktopNetworkManagerDeviceGetReal
  , orgFreedesktopNetworkManagerDeviceGetIp4Connectivity
  , orgFreedesktopNetworkManagerDeviceGetIp6Connectivity
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

eNM_DEVICE_STATE_UNKNOWN :: Word32
eNM_DEVICE_STATE_UNKNOWN = 0

eNM_DEVICE_STATE_UNMANAGED :: Word32
eNM_DEVICE_STATE_UNMANAGED = 10

eNM_DEVICE_STATE_UNAVAILABLE :: Word32
eNM_DEVICE_STATE_UNAVAILABLE = 20

eNM_DEVICE_STATE_DISCONNECTED :: Word32
eNM_DEVICE_STATE_DISCONNECTED = 30

eNM_DEVICE_STATE_PREPARE :: Word32
eNM_DEVICE_STATE_PREPARE = 40

eNM_DEVICE_STATE_CONFIG :: Word32
eNM_DEVICE_STATE_CONFIG = 50

eNM_DEVICE_STATE_NEED_AUTH :: Word32
eNM_DEVICE_STATE_NEED_AUTH = 60

eNM_DEVICE_STATE_IP_CONFIG :: Word32
eNM_DEVICE_STATE_IP_CONFIG = 70

eNM_DEVICE_STATE_IP_CHECK :: Word32
eNM_DEVICE_STATE_IP_CHECK = 80

eNM_DEVICE_STATE_SECONDARIES :: Word32
eNM_DEVICE_STATE_SECONDARIES = 90

eNM_DEVICE_STATE_ACTIVATED :: Word32
eNM_DEVICE_STATE_ACTIVATED = 100

eNM_DEVICE_STATE_DEACTIVATING :: Word32
eNM_DEVICE_STATE_DEACTIVATING = 110

eNM_DEVICE_STATE_FAILED :: Word32
eNM_DEVICE_STATE_FAILED = 120

eNM_DEVICE_TYPE_UNKNOWN :: Word32
eNM_DEVICE_TYPE_UNKNOWN = 0

eNM_DEVICE_TYPE_ETHERNET :: Word32
eNM_DEVICE_TYPE_ETHERNET = 1

eNM_DEVICE_TYPE_WIFI :: Word32
eNM_DEVICE_TYPE_WIFI = 2

eNM_DEVICE_TYPE_UNUSED1 :: Word32
eNM_DEVICE_TYPE_UNUSED1 = 3

eNM_DEVICE_TYPE_UNUSED2 :: Word32
eNM_DEVICE_TYPE_UNUSED2 = 4

eNM_DEVICE_TYPE_BT :: Word32
eNM_DEVICE_TYPE_BT = 5

eNM_DEVICE_TYPE_OLPC_MESH :: Word32
eNM_DEVICE_TYPE_OLPC_MESH = 6

eNM_DEVICE_TYPE_WIMAX :: Word32
eNM_DEVICE_TYPE_WIMAX = 7

eNM_DEVICE_TYPE_MODEM :: Word32
eNM_DEVICE_TYPE_MODEM = 8

eNM_DEVICE_TYPE_INFINIBAND :: Word32
eNM_DEVICE_TYPE_INFINIBAND = 9

eNM_DEVICE_TYPE_BOND :: Word32
eNM_DEVICE_TYPE_BOND = 10

eNM_DEVICE_TYPE_VLAN :: Word32
eNM_DEVICE_TYPE_VLAN = 11

eNM_DEVICE_TYPE_ADSL :: Word32
eNM_DEVICE_TYPE_ADSL = 12

eNM_DEVICE_TYPE_BRIDGE :: Word32
eNM_DEVICE_TYPE_BRIDGE = 13

eNM_DEVICE_STATE_REASON_UNKNOWN :: Word32
eNM_DEVICE_STATE_REASON_UNKNOWN = 0

eNM_DEVICE_STATE_REASON_NONE :: Word32
eNM_DEVICE_STATE_REASON_NONE = 1

eNM_DEVICE_STATE_REASON_NOW_MANAGED :: Word32
eNM_DEVICE_STATE_REASON_NOW_MANAGED = 2

eNM_DEVICE_STATE_REASON_NOW_UNMANAGED :: Word32
eNM_DEVICE_STATE_REASON_NOW_UNMANAGED = 3

eNM_DEVICE_STATE_REASON_CONFIG_FAILED :: Word32
eNM_DEVICE_STATE_REASON_CONFIG_FAILED = 4

eNM_DEVICE_STATE_REASON_CONFIG_UNAVAILABLE :: Word32
eNM_DEVICE_STATE_REASON_CONFIG_UNAVAILABLE = 5

eNM_DEVICE_STATE_REASON_CONFIG_EXPIRED :: Word32
eNM_DEVICE_STATE_REASON_CONFIG_EXPIRED = 6

eNM_DEVICE_STATE_REASON_NO_SECRETS :: Word32
eNM_DEVICE_STATE_REASON_NO_SECRETS = 7

eNM_DEVICE_STATE_REASON_SUPPLICANT_DISCONNECT :: Word32
eNM_DEVICE_STATE_REASON_SUPPLICANT_DISCONNECT = 8

eNM_DEVICE_STATE_REASON_SUPPLICANT_CONFIG_FAILED :: Word32
eNM_DEVICE_STATE_REASON_SUPPLICANT_CONFIG_FAILED = 9

eNM_DEVICE_STATE_REASON_SUPPLICANT_FAILED :: Word32
eNM_DEVICE_STATE_REASON_SUPPLICANT_FAILED = 10

eNM_DEVICE_STATE_REASON_SUPPLICANT_TIMEOUT :: Word32
eNM_DEVICE_STATE_REASON_SUPPLICANT_TIMEOUT = 11

eNM_DEVICE_STATE_REASON_PPP_START_FAILED :: Word32
eNM_DEVICE_STATE_REASON_PPP_START_FAILED = 12

eNM_DEVICE_STATE_REASON_PPP_DISCONNECT :: Word32
eNM_DEVICE_STATE_REASON_PPP_DISCONNECT = 13

eNM_DEVICE_STATE_REASON_PPP_FAILED :: Word32
eNM_DEVICE_STATE_REASON_PPP_FAILED = 14

eNM_DEVICE_STATE_REASON_DHCP_START_FAILED :: Word32
eNM_DEVICE_STATE_REASON_DHCP_START_FAILED = 15

eNM_DEVICE_STATE_REASON_DHCP_ERROR :: Word32
eNM_DEVICE_STATE_REASON_DHCP_ERROR = 16

eNM_DEVICE_STATE_REASON_DHCP_FAILED :: Word32
eNM_DEVICE_STATE_REASON_DHCP_FAILED = 17

eNM_DEVICE_STATE_REASON_SHARED_START_FAILED :: Word32
eNM_DEVICE_STATE_REASON_SHARED_START_FAILED = 18

eNM_DEVICE_STATE_REASON_SHARED_FAILED :: Word32
eNM_DEVICE_STATE_REASON_SHARED_FAILED = 19

eNM_DEVICE_STATE_REASON_AUTOIP_START_FAILED :: Word32
eNM_DEVICE_STATE_REASON_AUTOIP_START_FAILED = 20

eNM_DEVICE_STATE_REASON_AUTOIP_ERROR :: Word32
eNM_DEVICE_STATE_REASON_AUTOIP_ERROR = 21

eNM_DEVICE_STATE_REASON_AUTOIP_FAILED :: Word32
eNM_DEVICE_STATE_REASON_AUTOIP_FAILED = 22

eNM_DEVICE_STATE_REASON_MODEM_BUSY :: Word32
eNM_DEVICE_STATE_REASON_MODEM_BUSY = 23

eNM_DEVICE_STATE_REASON_MODEM_NO_DIAL_TONE :: Word32
eNM_DEVICE_STATE_REASON_MODEM_NO_DIAL_TONE = 24

eNM_DEVICE_STATE_REASON_MODEM_NO_CARRIER :: Word32
eNM_DEVICE_STATE_REASON_MODEM_NO_CARRIER = 25

eNM_DEVICE_STATE_REASON_MODEM_DIAL_TIMEOUT :: Word32
eNM_DEVICE_STATE_REASON_MODEM_DIAL_TIMEOUT = 26

eNM_DEVICE_STATE_REASON_MODEM_DIAL_FAILED :: Word32
eNM_DEVICE_STATE_REASON_MODEM_DIAL_FAILED = 27

eNM_DEVICE_STATE_REASON_MODEM_INIT_FAILED :: Word32
eNM_DEVICE_STATE_REASON_MODEM_INIT_FAILED = 28

eNM_DEVICE_STATE_REASON_GSM_APN_FAILED :: Word32
eNM_DEVICE_STATE_REASON_GSM_APN_FAILED = 29

eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_NOT_SEARCHING :: Word32
eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_NOT_SEARCHING = 30

eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_DENIED :: Word32
eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_DENIED = 31

eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_TIMEOUT :: Word32
eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_TIMEOUT = 32

eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_FAILED :: Word32
eNM_DEVICE_STATE_REASON_GSM_REGISTRATION_FAILED = 33

eNM_DEVICE_STATE_REASON_GSM_PIN_CHECK_FAILED :: Word32
eNM_DEVICE_STATE_REASON_GSM_PIN_CHECK_FAILED = 34

eNM_DEVICE_STATE_REASON_FIRMWARE_MISSING :: Word32
eNM_DEVICE_STATE_REASON_FIRMWARE_MISSING = 35

eNM_DEVICE_STATE_REASON_REMOVED :: Word32
eNM_DEVICE_STATE_REASON_REMOVED = 36

eNM_DEVICE_STATE_REASON_SLEEPING :: Word32
eNM_DEVICE_STATE_REASON_SLEEPING = 37

eNM_DEVICE_STATE_REASON_CONNECTION_REMOVED :: Word32
eNM_DEVICE_STATE_REASON_CONNECTION_REMOVED = 38

eNM_DEVICE_STATE_REASON_USER_REQUESTED :: Word32
eNM_DEVICE_STATE_REASON_USER_REQUESTED = 39

eNM_DEVICE_STATE_REASON_CARRIER :: Word32
eNM_DEVICE_STATE_REASON_CARRIER = 40

eNM_DEVICE_STATE_REASON_CONNECTION_ASSUMED :: Word32
eNM_DEVICE_STATE_REASON_CONNECTION_ASSUMED = 41

eNM_DEVICE_STATE_REASON_SUPPLICANT_AVAILABLE :: Word32
eNM_DEVICE_STATE_REASON_SUPPLICANT_AVAILABLE = 42

eNM_DEVICE_STATE_REASON_MODEM_NOT_FOUND :: Word32
eNM_DEVICE_STATE_REASON_MODEM_NOT_FOUND = 43

eNM_DEVICE_STATE_REASON_BT_FAILED :: Word32
eNM_DEVICE_STATE_REASON_BT_FAILED = 44

eNM_DEVICE_STATE_REASON_GSM_SIM_NOT_INSERTED :: Word32
eNM_DEVICE_STATE_REASON_GSM_SIM_NOT_INSERTED = 45

eNM_DEVICE_STATE_REASON_GSM_SIM_PIN_REQUIRED :: Word32
eNM_DEVICE_STATE_REASON_GSM_SIM_PIN_REQUIRED = 46

eNM_DEVICE_STATE_REASON_GSM_SIM_PUK_REQUIRED :: Word32
eNM_DEVICE_STATE_REASON_GSM_SIM_PUK_REQUIRED = 47

eNM_DEVICE_STATE_REASON_GSM_SIM_WRONG :: Word32
eNM_DEVICE_STATE_REASON_GSM_SIM_WRONG = 48

eNM_DEVICE_STATE_REASON_INFINIBAND_MODE :: Word32
eNM_DEVICE_STATE_REASON_INFINIBAND_MODE = 49

eNM_DEVICE_STATE_REASON_DEPENDENCY_FAILED :: Word32
eNM_DEVICE_STATE_REASON_DEPENDENCY_FAILED = 50

eNM_DEVICE_STATE_REASON_BR2684_FAILED :: Word32
eNM_DEVICE_STATE_REASON_BR2684_FAILED = 51

eNM_DEVICE_STATE_REASON_MODEM_MANAGER_UNAVAILABLE :: Word32
eNM_DEVICE_STATE_REASON_MODEM_MANAGER_UNAVAILABLE = 52

eNM_DEVICE_STATE_REASON_SSID_NOT_FOUND :: Word32
eNM_DEVICE_STATE_REASON_SSID_NOT_FOUND = 53

eNM_DEVICE_STATE_REASON_SECONDARY_CONNECTION_FAILED :: Word32
eNM_DEVICE_STATE_REASON_SECONDARY_CONNECTION_FAILED = 54

-- Interface org.freedesktop.NetworkManager.Device

orgFreedesktopNetworkManagerDeviceReapply :: ((MonadRpc e m)) => String -> String -> (Map.Map String (Map.Map String Variant)) -> Word64 -> Word32 -> m ()
orgFreedesktopNetworkManagerDeviceReapply service_ objPath_ connection version_id flags = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager.Device" "Reapply" [ (toVariant $ connection), (toVariant $ version_id), (toVariant $ flags) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Device.Reapply"

orgFreedesktopNetworkManagerDeviceGetAppliedConnection :: ((MonadRpc e m)) => String -> String -> Word32 -> m ((Map.Map String (Map.Map String Variant)), Word64)
orgFreedesktopNetworkManagerDeviceGetAppliedConnection service_ objPath_ flags = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager.Device" "GetAppliedConnection" [ (toVariant $ flags) ])
  case variants of
    [ out_0, out_1 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Device.GetAppliedConnection"

orgFreedesktopNetworkManagerDeviceDisconnect :: ((MonadRpc e m)) => String -> String -> m ()
orgFreedesktopNetworkManagerDeviceDisconnect service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager.Device" "Disconnect" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Device.Disconnect"

orgFreedesktopNetworkManagerDeviceDelete :: ((MonadRpc e m)) => String -> String -> m ()
orgFreedesktopNetworkManagerDeviceDelete service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.NetworkManager.Device" "Delete" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.NetworkManager.Device.Delete"

orgFreedesktopNetworkManagerDeviceGetUdi :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceGetUdi service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Udi" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetInterface :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceGetInterface service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Interface" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetIpInterface :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceGetIpInterface service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "IpInterface" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetDriver :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceGetDriver service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Driver" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetDriverVersion :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceGetDriverVersion service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "DriverVersion" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetFirmwareVersion :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceGetFirmwareVersion service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "FirmwareVersion" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetCapabilities :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetCapabilities service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Capabilities" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetIp4Address :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetIp4Address service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Ip4Address" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetState :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetState service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "State" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetActiveConnection :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerDeviceGetActiveConnection service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "ActiveConnection" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetIp4Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerDeviceGetIp4Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Ip4Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetDhcp4Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerDeviceGetDhcp4Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Dhcp4Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetIp6Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerDeviceGetIp6Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Ip6Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetDhcp6Config :: ((MonadRpc e m)) => String -> String -> m (ObjectPath)
orgFreedesktopNetworkManagerDeviceGetDhcp6Config service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Dhcp6Config" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetManaged :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerDeviceGetManaged service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Managed" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceSetManaged :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerDeviceSetManaged service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Managed", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

orgFreedesktopNetworkManagerDeviceGetAutoconnect :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerDeviceGetAutoconnect service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Autoconnect" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceSetAutoconnect :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
orgFreedesktopNetworkManagerDeviceSetAutoconnect service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Autoconnect", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

orgFreedesktopNetworkManagerDeviceGetFirmwareMissing :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerDeviceGetFirmwareMissing service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "FirmwareMissing" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetNmPluginMissing :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerDeviceGetNmPluginMissing service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "NmPluginMissing" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetDeviceType :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetDeviceType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "DeviceType" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetAvailableConnections :: ((MonadRpc e m)) => String -> String -> m ([ObjectPath])
orgFreedesktopNetworkManagerDeviceGetAvailableConnections service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "AvailableConnections" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetPhysicalPortId :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopNetworkManagerDeviceGetPhysicalPortId service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "PhysicalPortId" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetMtu :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetMtu service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Mtu" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetMetered :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetMetered service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Metered" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetLldpNeighbors :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String Variant)])
orgFreedesktopNetworkManagerDeviceGetLldpNeighbors service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "LldpNeighbors" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetReal :: ((MonadRpc e m)) => String -> String -> m (Bool)
orgFreedesktopNetworkManagerDeviceGetReal service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Real" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetIp4Connectivity :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetIp4Connectivity service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Ip4Connectivity" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

orgFreedesktopNetworkManagerDeviceGetIp6Connectivity :: ((MonadRpc e m)) => String -> String -> m (Word32)
orgFreedesktopNetworkManagerDeviceGetIp6Connectivity service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "org.freedesktop.NetworkManager.Device", toVariant "Ip6Connectivity" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")
