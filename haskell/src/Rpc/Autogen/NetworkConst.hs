module Rpc.Autogen.NetworkConst (
    eACTIVE_AP_SSID
  , eACTIVE_AP_MODE
  , eACTIVE_AP_FREQUENCY
  , eACTIVE_AP_STRENGTH
  , eACTIVE_AP_HWADDRESS
  , eACTIVE_AP_MAXBITRATE
  , eACTIVE_AP_WPAFLAGS
  , eACTIVE_AP_RSNFLAGS
  , eCONNECTION_TYPE_UNKNOWN
  , eCONNECTION_TYPE_SHARED
  , eCONNECTION_TYPE_BRIDGED
  , eNETWORK_TYPE_UNKNOWN
  , eNETWORK_TYPE_WIRED
  , eNETWORK_TYPE_WIFI
  , eNETWORK_TYPE_MODEM
  , eNETWORK_TYPE_INTERNAL
  , eNETWORK_TYPE_ANY
  , eNETWORK_TYPE_VPN
) where

import Data.String
import Data.Word
import Data.Int

eACTIVE_AP_SSID :: String
eACTIVE_AP_SSID = "ssid"

eACTIVE_AP_MODE :: String
eACTIVE_AP_MODE = "mode"

eACTIVE_AP_FREQUENCY :: String
eACTIVE_AP_FREQUENCY = "frequency"

eACTIVE_AP_STRENGTH :: String
eACTIVE_AP_STRENGTH = "strength"

eACTIVE_AP_HWADDRESS :: String
eACTIVE_AP_HWADDRESS = "hwaddress"

eACTIVE_AP_MAXBITRATE :: String
eACTIVE_AP_MAXBITRATE = "maxbitrate"

eACTIVE_AP_WPAFLAGS :: String
eACTIVE_AP_WPAFLAGS = "wpaflags"

eACTIVE_AP_RSNFLAGS :: String
eACTIVE_AP_RSNFLAGS = "rsnflags"

eCONNECTION_TYPE_UNKNOWN :: String
eCONNECTION_TYPE_UNKNOWN = "unknown"

eCONNECTION_TYPE_SHARED :: String
eCONNECTION_TYPE_SHARED = "shared"

eCONNECTION_TYPE_BRIDGED :: String
eCONNECTION_TYPE_BRIDGED = "bridged"

eNETWORK_TYPE_UNKNOWN :: String
eNETWORK_TYPE_UNKNOWN = "unknown"

eNETWORK_TYPE_WIRED :: String
eNETWORK_TYPE_WIRED = "wired"

eNETWORK_TYPE_WIFI :: String
eNETWORK_TYPE_WIFI = "wifi"

eNETWORK_TYPE_MODEM :: String
eNETWORK_TYPE_MODEM = "modem"

eNETWORK_TYPE_INTERNAL :: String
eNETWORK_TYPE_INTERNAL = "internal"

eNETWORK_TYPE_ANY :: String
eNETWORK_TYPE_ANY = "any"

eNETWORK_TYPE_VPN :: String
eNETWORK_TYPE_VPN = "vpn"

