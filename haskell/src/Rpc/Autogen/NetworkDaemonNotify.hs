module Rpc.Autogen.NetworkDaemonNotify (
  notifyComCitrixXenclientNetworkdaemonNotifyNetworkAdded
  , notifyComCitrixXenclientNetworkdaemonNotifyNetworkRemoved
  , notifyComCitrixXenclientNetworkdaemonNotifyNetworkStateChanged
  , notifyComCitrixXenclientNetworkdaemonNotifyNetworkdaemonUp
) where

import Data.String
import Data.Word
import Data.Int
import Rpc.Core

notifyComCitrixXenclientNetworkdaemonNotifyNetworkAdded :: ((MonadRpc e m)) => ObjectPath -> String -> m ()
notifyComCitrixXenclientNetworkdaemonNotifyNetworkAdded objPath_ network =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkdaemon.notify",
    signalMemberT = fromString "network_added",
    signalArgs = [
        (toVariant $ network)
    ]
  }

notifyComCitrixXenclientNetworkdaemonNotifyNetworkRemoved :: ((MonadRpc e m)) => ObjectPath -> String -> m ()
notifyComCitrixXenclientNetworkdaemonNotifyNetworkRemoved objPath_ network =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkdaemon.notify",
    signalMemberT = fromString "network_removed",
    signalArgs = [
        (toVariant $ network)
    ]
  }

notifyComCitrixXenclientNetworkdaemonNotifyNetworkStateChanged :: ((MonadRpc e m)) => ObjectPath -> String -> String -> String -> m ()
notifyComCitrixXenclientNetworkdaemonNotifyNetworkStateChanged objPath_ network nm_state backend =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkdaemon.notify",
    signalMemberT = fromString "network_state_changed",
    signalArgs = [
        (toVariant $ network)
      , (toVariant $ nm_state)
      , (toVariant $ backend)
    ]
  }

notifyComCitrixXenclientNetworkdaemonNotifyNetworkdaemonUp :: ((MonadRpc e m)) => ObjectPath -> m ()
notifyComCitrixXenclientNetworkdaemonNotifyNetworkdaemonUp objPath_ =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkdaemon.notify",
    signalMemberT = fromString "networkdaemon_up",
    signalArgs = [
    ]
  }
