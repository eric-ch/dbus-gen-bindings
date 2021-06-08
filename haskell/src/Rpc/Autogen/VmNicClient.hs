module Rpc.Autogen.VmNicClient (
  comCitrixXenclientVmnicDelete
  , comCitrixXenclientVmnicGetBackendName
  , comCitrixXenclientVmnicSetBackendName
  , comCitrixXenclientVmnicGetBackendUuid
  , comCitrixXenclientVmnicSetBackendUuid
  , comCitrixXenclientVmnicGetEnabled
  , comCitrixXenclientVmnicSetEnabled
  , comCitrixXenclientVmnicGetMac
  , comCitrixXenclientVmnicSetMac
  , comCitrixXenclientVmnicGetMacActual
  , comCitrixXenclientVmnicGetModel
  , comCitrixXenclientVmnicSetModel
  , comCitrixXenclientVmnicGetNetwork
  , comCitrixXenclientVmnicSetNetwork
  , comCitrixXenclientVmnicGetWirelessDriver
  , comCitrixXenclientVmnicSetWirelessDriver
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

-- Interface com.citrix.xenclient.vmnic

comCitrixXenclientVmnicDelete :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientVmnicDelete service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmnic" "delete" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmnic.delete"

comCitrixXenclientVmnicGetBackendName :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmnicGetBackendName service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "backend-name" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicSetBackendName :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmnicSetBackendName service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmnic", toVariant "backend-name", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmnicGetBackendUuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmnicGetBackendUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "backend-uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicSetBackendUuid :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmnicSetBackendUuid service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmnic", toVariant "backend-uuid", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmnicGetEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientVmnicGetEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicSetEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientVmnicSetEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmnic", toVariant "enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmnicGetMac :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmnicGetMac service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "mac" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicSetMac :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmnicSetMac service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmnic", toVariant "mac", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmnicGetMacActual :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmnicGetMacActual service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "mac-actual" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicGetModel :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmnicGetModel service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "model" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicSetModel :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmnicSetModel service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmnic", toVariant "model", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmnicGetNetwork :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmnicGetNetwork service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "network" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicSetNetwork :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmnicSetNetwork service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmnic", toVariant "network", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmnicGetWirelessDriver :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientVmnicGetWirelessDriver service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmnic", toVariant "wireless-driver" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmnicSetWirelessDriver :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientVmnicSetWirelessDriver service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmnic", toVariant "wireless-driver", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"
