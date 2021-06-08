module Rpc.Autogen.XenmgrNotify (
  notifyComCitrixXenclientXenmgrCdAssignmentChanged
  , notifyComCitrixXenclientXenmgrConfigChanged
  , notifyComCitrixXenclientXenmgrLanguageChanged
  , notifyComCitrixXenclientXenmgrNetworkStateChanged
  , notifyComCitrixXenclientXenmgrNotify
  , notifyComCitrixXenclientXenmgrVmConfigChanged
  , notifyComCitrixXenclientXenmgrVmCreated
  , notifyComCitrixXenclientXenmgrVmDeleted
  , notifyComCitrixXenclientXenmgrVmNameChanged
  , notifyComCitrixXenclientXenmgrVmStateChanged
  , notifyComCitrixXenclientXenmgrVmTransferChanged
  , notifyComCitrixXenclientXenmgrDiagGatherRequest
  , notifyComCitrixXenclientXenmgrGuestreqRequestedAttention
) where

import Data.String
import Data.Word
import Data.Int
import Rpc.Core

notifyComCitrixXenclientXenmgrCdAssignmentChanged :: ((MonadRpc e m)) => ObjectPath -> String -> String -> ObjectPath -> m ()
notifyComCitrixXenclientXenmgrCdAssignmentChanged objPath_ dev uuid obj_path =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "cd_assignment_changed",
    signalArgs = [
        (toVariant $ dev)
      , (toVariant $ uuid)
      , (toVariant $ obj_path)
    ]
  }

notifyComCitrixXenclientXenmgrConfigChanged :: ((MonadRpc e m)) => ObjectPath -> m ()
notifyComCitrixXenclientXenmgrConfigChanged objPath_ =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "config_changed",
    signalArgs = [
    ]
  }

notifyComCitrixXenclientXenmgrLanguageChanged :: ((MonadRpc e m)) => ObjectPath -> m ()
notifyComCitrixXenclientXenmgrLanguageChanged objPath_ =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "language_changed",
    signalArgs = [
    ]
  }

notifyComCitrixXenclientXenmgrNetworkStateChanged :: ((MonadRpc e m)) => ObjectPath -> Bool -> m ()
notifyComCitrixXenclientXenmgrNetworkStateChanged objPath_ available =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "network_state_changed",
    signalArgs = [
        (toVariant $ available)
    ]
  }

notifyComCitrixXenclientXenmgrNotify :: ((MonadRpc e m)) => ObjectPath -> String -> String -> m ()
notifyComCitrixXenclientXenmgrNotify objPath_ uuid messsage =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "notify",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ messsage)
    ]
  }

notifyComCitrixXenclientXenmgrVmConfigChanged :: ((MonadRpc e m)) => ObjectPath -> String -> ObjectPath -> m ()
notifyComCitrixXenclientXenmgrVmConfigChanged objPath_ uuid obj_path =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "vm_config_changed",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ obj_path)
    ]
  }

notifyComCitrixXenclientXenmgrVmCreated :: ((MonadRpc e m)) => ObjectPath -> String -> ObjectPath -> m ()
notifyComCitrixXenclientXenmgrVmCreated objPath_ uuid obj_path =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "vm_created",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ obj_path)
    ]
  }

notifyComCitrixXenclientXenmgrVmDeleted :: ((MonadRpc e m)) => ObjectPath -> String -> ObjectPath -> m ()
notifyComCitrixXenclientXenmgrVmDeleted objPath_ uuid obj_path =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "vm_deleted",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ obj_path)
    ]
  }

notifyComCitrixXenclientXenmgrVmNameChanged :: ((MonadRpc e m)) => ObjectPath -> String -> ObjectPath -> m ()
notifyComCitrixXenclientXenmgrVmNameChanged objPath_ uuid obj_path =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "vm_name_changed",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ obj_path)
    ]
  }

notifyComCitrixXenclientXenmgrVmStateChanged :: ((MonadRpc e m)) => ObjectPath -> String -> ObjectPath -> String -> Int32 -> m ()
notifyComCitrixXenclientXenmgrVmStateChanged objPath_ uuid obj_path state acpi_state =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "vm_state_changed",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ obj_path)
      , (toVariant $ state)
      , (toVariant $ acpi_state)
    ]
  }

notifyComCitrixXenclientXenmgrVmTransferChanged :: ((MonadRpc e m)) => ObjectPath -> String -> ObjectPath -> m ()
notifyComCitrixXenclientXenmgrVmTransferChanged objPath_ uuid obj_path =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr",
    signalMemberT = fromString "vm_transfer_changed",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ obj_path)
    ]
  }

notifyComCitrixXenclientXenmgrDiagGatherRequest :: ((MonadRpc e m)) => ObjectPath -> String -> m ()
notifyComCitrixXenclientXenmgrDiagGatherRequest objPath_ mode =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr.diag",
    signalMemberT = fromString "gather_request",
    signalArgs = [
        (toVariant $ mode)
    ]
  }

notifyComCitrixXenclientXenmgrGuestreqRequestedAttention :: ((MonadRpc e m)) => ObjectPath -> String -> ObjectPath -> m ()
notifyComCitrixXenclientXenmgrGuestreqRequestedAttention objPath_ uuid obj_path =
  rpcEmitSignal RpcSignal {
    signalPath = objPath_,
    signalInterfaceT = fromString "com.citrix.xenclient.xenmgr.guestreq",
    signalMemberT = fromString "requested_attention",
    signalArgs = [
        (toVariant $ uuid)
      , (toVariant $ obj_path)
    ]
  }
