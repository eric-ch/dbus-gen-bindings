module Rpc.Autogen.NetworkDomainNotify (
  notifyComCitrixXenclientNetworkdomainNotifyBackendStateChanged
) where

import Data.String
import Data.Word
import Data.Int
import Rpc.Core

notifyComCitrixXenclientNetworkdomainNotifyBackendStateChanged :: ((MonadRpc e m)) => ObjectPath -> Word32 -> m ()
notifyComCitrixXenclientNetworkdomainNotifyBackendStateChanged objPath_ status =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkdomain.notify",
    signalMemberT = fromString "backend_state_changed",
    signalArgs = [
        (toVariant $ status)
    ]
  }
