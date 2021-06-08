module Rpc.Autogen.NetworkSlaveNotify (
  notifyComCitrixXenclientNetworkslaveNotifyNetworkAdded
  , notifyComCitrixXenclientNetworkslaveNotifyNetworkRemoved
  , notifyComCitrixXenclientNetworkslaveNotifyNetworkslaveUp
  , notifyComCitrixXenclientNetworkslaveNotifyNewBackendVif
) where

import Data.String
import Data.Word
import Data.Int
import Rpc.Core

notifyComCitrixXenclientNetworkslaveNotifyNetworkAdded :: ((MonadRpc e m)) => ObjectPath -> [String] -> m ()
notifyComCitrixXenclientNetworkslaveNotifyNetworkAdded objPath_ network =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkslave.notify",
    signalMemberT = fromString "network_added",
    signalArgs = [
        (toVariant $ network)
    ]
  }

notifyComCitrixXenclientNetworkslaveNotifyNetworkRemoved :: ((MonadRpc e m)) => ObjectPath -> [String] -> m ()
notifyComCitrixXenclientNetworkslaveNotifyNetworkRemoved objPath_ network =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkslave.notify",
    signalMemberT = fromString "network_removed",
    signalArgs = [
        (toVariant $ network)
    ]
  }

notifyComCitrixXenclientNetworkslaveNotifyNetworkslaveUp :: ((MonadRpc e m)) => ObjectPath -> m ()
notifyComCitrixXenclientNetworkslaveNotifyNetworkslaveUp objPath_ =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkslave.notify",
    signalMemberT = fromString "networkslave_up",
    signalArgs = [
    ]
  }

notifyComCitrixXenclientNetworkslaveNotifyNewBackendVif :: ((MonadRpc e m)) => ObjectPath -> [String] -> m ()
notifyComCitrixXenclientNetworkslaveNotifyNewBackendVif objPath_ vif_info =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.networkslave.notify",
    signalMemberT = fromString "new_backend_vif",
    signalArgs = [
        (toVariant $ vif_info)
    ]
  }
