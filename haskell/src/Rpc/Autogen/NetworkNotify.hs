module Rpc.Autogen.NetworkNotify (
  notifyComCitrixXenclientNetworkNotifyStateChanged
) where

import Data.String
import Data.Word
import Data.Int
import Rpc.Core

notifyComCitrixXenclientNetworkNotifyStateChanged :: ((MonadRpc e m)) => ObjectPath -> Word32 -> m ()
notifyComCitrixXenclientNetworkNotifyStateChanged objPath_ state =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.network.notify",
    signalMemberT = fromString "state_changed",
    signalArgs = [
        (toVariant $ state)
    ]
  }
