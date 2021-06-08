module Rpc.Autogen.XenmgrHostNotify (
  notifyComCitrixXenclientXenmgrHostLicenseChanged
  , notifyComCitrixXenclientXenmgrHostDisplayhandlerGpuChanged
  , notifyComCitrixXenclientXenmgrHostStateChanged
  , notifyComCitrixXenclientXenmgrHostStorageSpaceLow
) where

import Data.String
import Data.Word
import Data.Int
import Rpc.Core

notifyComCitrixXenclientXenmgrHostLicenseChanged :: ((MonadRpc e m)) => ObjectPath -> m ()
notifyComCitrixXenclientXenmgrHostLicenseChanged objPath_ =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr.host",
    signalMemberT = fromString "license_changed",
    signalArgs = [
    ]
  }

notifyComCitrixXenclientXenmgrHostDisplayhandlerGpuChanged :: ((MonadRpc e m)) => ObjectPath -> m ()
notifyComCitrixXenclientXenmgrHostDisplayhandlerGpuChanged objPath_ =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr.host",
    signalMemberT = fromString "displayhandler_gpu_changed",
    signalArgs = [
    ]
  }

notifyComCitrixXenclientXenmgrHostStateChanged :: ((MonadRpc e m)) => ObjectPath -> String -> m ()
notifyComCitrixXenclientXenmgrHostStateChanged objPath_ state =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr.host",
    signalMemberT = fromString "state_changed",
    signalArgs = [
        (toVariant $ state)
    ]
  }

notifyComCitrixXenclientXenmgrHostStorageSpaceLow :: ((MonadRpc e m)) => ObjectPath -> Int32 -> m ()
notifyComCitrixXenclientXenmgrHostStorageSpaceLow objPath_ percent_free =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr.host",
    signalMemberT = fromString "storage_space_low",
    signalArgs = [
        (toVariant $ percent_free)
    ]
  }
