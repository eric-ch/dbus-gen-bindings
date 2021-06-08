module Rpc.Autogen.NetworkDaemonClient (
  eNDVM_STATUS_STOPPED
  , eNDVM_STATUS_STARTED
  , comCitrixXenclientNetworkdaemonAddVif
  , comCitrixXenclientNetworkdaemonCreateNetwork
  , comCitrixXenclientNetworkdaemonGetNetworkBackend
  , comCitrixXenclientNetworkdaemonIsInitialized
  , comCitrixXenclientNetworkdaemonIsNetworkingActive
  , comCitrixXenclientNetworkdaemonList
  , comCitrixXenclientNetworkdaemonListBackends
  , comCitrixXenclientNetworkdaemonMoveToNetwork
  , comCitrixXenclientNetworkdaemonNdvmStatus
  , comCitrixXenclientNetworkdaemonShutdown
  , comCitrixXenclientNetworkdaemonVifConnected
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

eNDVM_STATUS_STOPPED :: Word32
eNDVM_STATUS_STOPPED = 0

eNDVM_STATUS_STARTED :: Word32
eNDVM_STATUS_STARTED = 1

-- Interface com.citrix.xenclient.networkdaemon

comCitrixXenclientNetworkdaemonAddVif :: ((MonadRpc e m)) => String -> String -> Word32 -> Word32 -> String -> m ()
comCitrixXenclientNetworkdaemonAddVif service_ objPath_ domid backend_domid mac = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "add_vif" [ (toVariant $ domid), (toVariant $ backend_domid), (toVariant $ mac) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.add_vif"

comCitrixXenclientNetworkdaemonCreateNetwork :: ((MonadRpc e m)) => String -> String -> String -> Int32 -> String -> m (String)
comCitrixXenclientNetworkdaemonCreateNetwork service_ objPath_ network_type id config = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "create_network" [ (toVariant $ network_type), (toVariant $ id), (toVariant $ config) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.create_network"

comCitrixXenclientNetworkdaemonGetNetworkBackend :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientNetworkdaemonGetNetworkBackend service_ objPath_ network = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "get_network_backend" [ (toVariant $ network) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.get_network_backend"

comCitrixXenclientNetworkdaemonIsInitialized :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientNetworkdaemonIsInitialized service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "is_initialized" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.is_initialized"

comCitrixXenclientNetworkdaemonIsNetworkingActive :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientNetworkdaemonIsNetworkingActive service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "is_networking_active" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.is_networking_active"

comCitrixXenclientNetworkdaemonList :: ((MonadRpc e m)) => String -> String -> m ([(Map.Map String String)])
comCitrixXenclientNetworkdaemonList service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "list" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.list"

comCitrixXenclientNetworkdaemonListBackends :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientNetworkdaemonListBackends service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "list_backends" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.list_backends"

comCitrixXenclientNetworkdaemonMoveToNetwork :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientNetworkdaemonMoveToNetwork service_ objPath_ vif network = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "move_to_network" [ (toVariant $ vif), (toVariant $ network) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.move_to_network"

comCitrixXenclientNetworkdaemonNdvmStatus :: ((MonadRpc e m)) => String -> String -> String -> Int32 -> Word32 -> m ()
comCitrixXenclientNetworkdaemonNdvmStatus service_ objPath_ uuid domid status = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "ndvm_status" [ (toVariant $ uuid), (toVariant $ domid), (toVariant $ status) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.ndvm_status"

comCitrixXenclientNetworkdaemonShutdown :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientNetworkdaemonShutdown service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "shutdown" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.shutdown"

comCitrixXenclientNetworkdaemonVifConnected :: ((MonadRpc e m)) => String -> String -> String -> Int32 -> m (Bool)
comCitrixXenclientNetworkdaemonVifConnected service_ objPath_ vif domid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkdaemon" "vif_connected" [ (toVariant $ vif), (toVariant $ domid) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkdaemon.vif_connected"

-- Interface com.citrix.xenclient.networkdaemon.notify
