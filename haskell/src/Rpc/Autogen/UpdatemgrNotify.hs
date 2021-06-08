module Rpc.Autogen.UpdatemgrNotify (
  notifyComCitrixXenclientUpdatemgrUpdateDownloadProgress
  , notifyComCitrixXenclientUpdatemgrUpdateStateChange
) where

import Data.String
import Data.Word
import Data.Int
import Rpc.Core

notifyComCitrixXenclientUpdatemgrUpdateDownloadProgress :: ((MonadRpc e m)) => ObjectPath -> Double -> Double -> m ()
notifyComCitrixXenclientUpdatemgrUpdateDownloadProgress objPath_ percent_complete speed =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.updatemgr",
    signalMemberT = fromString "update_download_progress",
    signalArgs = [
        (toVariant $ percent_complete)
      , (toVariant $ speed)
    ]
  }

notifyComCitrixXenclientUpdatemgrUpdateStateChange :: ((MonadRpc e m)) => ObjectPath -> String -> m ()
notifyComCitrixXenclientUpdatemgrUpdateStateChange objPath_ state =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.updatemgr",
    signalMemberT = fromString "update_state_change",
    signalArgs = [
        (toVariant $ state)
    ]
  }
