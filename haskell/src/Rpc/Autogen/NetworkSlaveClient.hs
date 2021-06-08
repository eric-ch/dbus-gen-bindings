module Rpc.Autogen.NetworkSlaveClient (
  eCONFIG_BRIDGE_FILTERING
  , eCONFIG_NM_NETWORKING_ENABLED
  , eCONFIG_NM_WIRELESS_ENABLED
  , eCONFIG_NM_UNMANAGED_DEVICES
  , comCitrixXenclientNetworkslaveBackendVifNotify
  , comCitrixXenclientNetworkslaveCreateInternalNetworks
  , comCitrixXenclientNetworkslaveGetIcavmNetwork
  , comCitrixXenclientNetworkslaveIsInitialized
  , comCitrixXenclientNetworkslaveListNetworks
  , comCitrixXenclientNetworkslaveListVifs
  , comCitrixXenclientNetworkslaveMoveVifToNetwork
  , comCitrixXenclientNetworkslaveNetworkIfaceNotify
  , comCitrixXenclientNetworkslaveNmState
  , comCitrixXenclientNetworkslaveNwConnectivity
  , comCitrixXenclientNetworkslaveRefreshVifs
  , comCitrixXenclientNetworkslaveShutdown
  , comCitrixXenclientNetworkslaveStartNm
  , comCitrixXenclientNetworkslaveVifAdded
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

eCONFIG_BRIDGE_FILTERING :: String
eCONFIG_BRIDGE_FILTERING = "bridge-filtering"

eCONFIG_NM_NETWORKING_ENABLED :: String
eCONFIG_NM_NETWORKING_ENABLED = "networking-enabled"

eCONFIG_NM_WIRELESS_ENABLED :: String
eCONFIG_NM_WIRELESS_ENABLED = "wifi-enabled"

eCONFIG_NM_UNMANAGED_DEVICES :: String
eCONFIG_NM_UNMANAGED_DEVICES = "unmanaged-devices"

-- Interface com.citrix.xenclient.networkslave

comCitrixXenclientNetworkslaveBackendVifNotify :: ((MonadRpc e m)) => String -> String -> String -> Word32 -> Word32 -> m ()
comCitrixXenclientNetworkslaveBackendVifNotify service_ objPath_ vif domid devid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "backend_vif_notify" [ (toVariant $ vif), (toVariant $ domid), (toVariant $ devid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.backend_vif_notify"

comCitrixXenclientNetworkslaveCreateInternalNetworks :: ((MonadRpc e m)) => String -> String -> Word32 -> m ()
comCitrixXenclientNetworkslaveCreateInternalNetworks service_ objPath_ network_number = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "create_internal_networks" [ (toVariant $ network_number) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.create_internal_networks"

comCitrixXenclientNetworkslaveGetIcavmNetwork :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientNetworkslaveGetIcavmNetwork service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "get_icavm_network" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.get_icavm_network"

comCitrixXenclientNetworkslaveIsInitialized :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientNetworkslaveIsInitialized service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "is_initialized" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.is_initialized"

comCitrixXenclientNetworkslaveListNetworks :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientNetworkslaveListNetworks service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "list_networks" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.list_networks"

comCitrixXenclientNetworkslaveListVifs :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientNetworkslaveListVifs service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "list_vifs" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.list_vifs"

comCitrixXenclientNetworkslaveMoveVifToNetwork :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientNetworkslaveMoveVifToNetwork service_ objPath_ vif network = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "move_vif_to_network" [ (toVariant $ vif), (toVariant $ network) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.move_vif_to_network"

comCitrixXenclientNetworkslaveNetworkIfaceNotify :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientNetworkslaveNetworkIfaceNotify service_ objPath_ udev_action interface = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "network_iface_notify" [ (toVariant $ udev_action), (toVariant $ interface) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.network_iface_notify"

comCitrixXenclientNetworkslaveNmState :: ((MonadRpc e m)) => String -> String -> m (Word32)
comCitrixXenclientNetworkslaveNmState service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "nm_state" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.nm_state"

comCitrixXenclientNetworkslaveNwConnectivity :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientNetworkslaveNwConnectivity service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "nw_connectivity" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.nw_connectivity"

comCitrixXenclientNetworkslaveRefreshVifs :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientNetworkslaveRefreshVifs service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "refresh_vifs" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.refresh_vifs"

comCitrixXenclientNetworkslaveShutdown :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientNetworkslaveShutdown service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "shutdown" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.shutdown"

comCitrixXenclientNetworkslaveStartNm :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientNetworkslaveStartNm service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "start_nm" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.start_nm"

comCitrixXenclientNetworkslaveVifAdded :: ((MonadRpc e m)) => String -> String -> String -> m (Bool)
comCitrixXenclientNetworkslaveVifAdded service_ objPath_ vif = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.networkslave" "vif_added" [ (toVariant $ vif) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.networkslave.vif_added"

-- Interface com.citrix.xenclient.networkslave.notify
