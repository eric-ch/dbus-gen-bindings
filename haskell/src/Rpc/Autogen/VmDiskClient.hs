module Rpc.Autogen.VmDiskClient (
  comCitrixXenclientVmdiskAttachPhy
  , comCitrixXenclientVmdiskAttachVhd
  , comCitrixXenclientVmdiskDelete
  , comCitrixXenclientVmdiskGenerateCryptoKey
  , comCitrixXenclientVmdiskGenerateCryptoKeyIn
  , comCitrixXenclientVmdiskMount
  , comCitrixXenclientVmdiskUmount
  , comCitrixXenclientVmdiskGetBackendName
  , comCitrixXenclientVmdiskSetBackendName
  , comCitrixXenclientVmdiskGetBackendUuid
  , comCitrixXenclientVmdiskSetBackendUuid
  , comCitrixXenclientVmdiskGetDevtype
  , comCitrixXenclientVmdiskSetDevtype
  , comCitrixXenclientVmdiskGetEnabled
  , comCitrixXenclientVmdiskSetEnabled
  , comCitrixXenclientVmdiskGetEncryptionKeySet
  , comCitrixXenclientVmdiskGetManagedDisktype
  , comCitrixXenclientVmdiskSetManagedDisktype
  , comCitrixXenclientVmdiskGetMode
  , comCitrixXenclientVmdiskSetMode
  , comCitrixXenclientVmdiskGetPhysPath
  , comCitrixXenclientVmdiskSetPhysPath
  , comCitrixXenclientVmdiskGetPhysType
  , comCitrixXenclientVmdiskSetPhysType
  , comCitrixXenclientVmdiskGetShared
  , comCitrixXenclientVmdiskSetShared
  , comCitrixXenclientVmdiskGetSnapshot
  , comCitrixXenclientVmdiskSetSnapshot
  , comCitrixXenclientVmdiskGetUtilizationBytes
  , comCitrixXenclientVmdiskGetVirtPath
  , comCitrixXenclientVmdiskSetVirtPath
  , comCitrixXenclientVmdiskGetVirtualSizeMb
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

-- Interface com.citrix.xenclient.vmdisk

comCitrixXenclientVmdiskAttachPhy :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskAttachPhy service_ objPath_ phy_path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmdisk" "attach_phy" [ (toVariant $ phy_path) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmdisk.attach_phy"

comCitrixXenclientVmdiskAttachVhd :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskAttachVhd service_ objPath_ vhd_path = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmdisk" "attach_vhd" [ (toVariant $ vhd_path) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmdisk.attach_vhd"

comCitrixXenclientVmdiskDelete :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientVmdiskDelete service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmdisk" "delete" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmdisk.delete"

comCitrixXenclientVmdiskGenerateCryptoKey :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientVmdiskGenerateCryptoKey service_ objPath_ keysize = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmdisk" "generate_crypto_key" [ (toVariant $ keysize) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmdisk.generate_crypto_key"

comCitrixXenclientVmdiskGenerateCryptoKeyIn :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> m ()
comCitrixXenclientVmdiskGenerateCryptoKeyIn service_ objPath_ keysize dirpath = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmdisk" "generate_crypto_key_in" [ (toVariant $ keysize), (toVariant $ dirpath) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmdisk.generate_crypto_key_in"

comCitrixXenclientVmdiskMount :: ((MonadRpc e m)) => String -> String -> String -> Bool -> m ()
comCitrixXenclientVmdiskMount service_ objPath_ dirpath readonly = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmdisk" "mount" [ (toVariant $ dirpath), (toVariant $ readonly) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmdisk.mount"

comCitrixXenclientVmdiskUmount :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientVmdiskUmount service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.vmdisk" "umount" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.vmdisk.umount"

comCitrixXenclientVmdiskGetBackendName :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetBackendName service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "backend-name" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetBackendName :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetBackendName service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "backend-name", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetBackendUuid :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetBackendUuid service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "backend-uuid" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetBackendUuid :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetBackendUuid service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "backend-uuid", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetDevtype :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetDevtype service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "devtype" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetDevtype :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetDevtype service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "devtype", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetEnabled :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientVmdiskGetEnabled service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "enabled" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetEnabled :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientVmdiskSetEnabled service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "enabled", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetEncryptionKeySet :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientVmdiskGetEncryptionKeySet service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "encryption-key-set" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskGetManagedDisktype :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetManagedDisktype service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "managed-disktype" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetManagedDisktype :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetManagedDisktype service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "managed-disktype", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetMode :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetMode service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "mode" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetMode :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetMode service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "mode", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetPhysPath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetPhysPath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "phys-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetPhysPath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetPhysPath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "phys-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetPhysType :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetPhysType service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "phys-type" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetPhysType :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetPhysType service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "phys-type", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetShared :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientVmdiskGetShared service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "shared" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetShared :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientVmdiskSetShared service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "shared", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetSnapshot :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetSnapshot service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "snapshot" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetSnapshot :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetSnapshot service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "snapshot", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetUtilizationBytes :: ((MonadRpc e m)) => String -> String -> m (Int64)
comCitrixXenclientVmdiskGetUtilizationBytes service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "utilization-bytes" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskGetVirtPath :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientVmdiskGetVirtPath service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "virt-path" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientVmdiskSetVirtPath :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientVmdiskSetVirtPath service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "virt-path", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"

comCitrixXenclientVmdiskGetVirtualSizeMb :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientVmdiskGetVirtualSizeMb service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.vmdisk", toVariant "virtual-size-mb" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")
