module Rpc.Autogen.DbusClient (
  orgFreedesktopDBusIntrospectableIntrospect
  , orgFreedesktopDBusHello
  , orgFreedesktopDBusRequestName
  , orgFreedesktopDBusReleaseName
  , orgFreedesktopDBusStartServiceByName
  , orgFreedesktopDBusUpdateActivationEnvironment
  , orgFreedesktopDBusNameHasOwner
  , orgFreedesktopDBusListNames
  , orgFreedesktopDBusListActivatableNames
  , orgFreedesktopDBusAddMatch
  , orgFreedesktopDBusRemoveMatch
  , orgFreedesktopDBusGetNameOwner
  , orgFreedesktopDBusListQueuedOwners
  , orgFreedesktopDBusGetConnectionUnixUser
  , orgFreedesktopDBusGetConnectionUnixProcessID
  , orgFreedesktopDBusGetConnectionDOMID
  , orgFreedesktopDBusGetAdtAuditSessionData
  , orgFreedesktopDBusGetConnectionSELinuxSecurityContext
  , orgFreedesktopDBusReloadConfig
  , orgFreedesktopDBusGetId
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

-- Interface org.freedesktop.DBus.Introspectable

orgFreedesktopDBusIntrospectableIntrospect :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopDBusIntrospectableIntrospect service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Introspectable" "Introspect" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Introspectable.Introspect"

-- Interface org.freedesktop.DBus

orgFreedesktopDBusHello :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopDBusHello service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "Hello" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Hello"

orgFreedesktopDBusRequestName :: ((MonadRpc e m)) => String -> String -> String -> Word32 -> m (Word32)
orgFreedesktopDBusRequestName service_ objPath_ a1 a2 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "RequestName" [ (toVariant $ a1), (toVariant $ a2) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.RequestName"

orgFreedesktopDBusReleaseName :: ((MonadRpc e m)) => String -> String -> String -> m (Word32)
orgFreedesktopDBusReleaseName service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "ReleaseName" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.ReleaseName"

orgFreedesktopDBusStartServiceByName :: ((MonadRpc e m)) => String -> String -> String -> Word32 -> m (Word32)
orgFreedesktopDBusStartServiceByName service_ objPath_ a1 a2 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "StartServiceByName" [ (toVariant $ a1), (toVariant $ a2) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.StartServiceByName"

orgFreedesktopDBusUpdateActivationEnvironment :: ((MonadRpc e m)) => String -> String -> (Map.Map String String) -> m ()
orgFreedesktopDBusUpdateActivationEnvironment service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "UpdateActivationEnvironment" [ (toVariant $ a1) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.UpdateActivationEnvironment"

orgFreedesktopDBusNameHasOwner :: ((MonadRpc e m)) => String -> String -> String -> m (Bool)
orgFreedesktopDBusNameHasOwner service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "NameHasOwner" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.NameHasOwner"

orgFreedesktopDBusListNames :: ((MonadRpc e m)) => String -> String -> m ([String])
orgFreedesktopDBusListNames service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "ListNames" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.ListNames"

orgFreedesktopDBusListActivatableNames :: ((MonadRpc e m)) => String -> String -> m ([String])
orgFreedesktopDBusListActivatableNames service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "ListActivatableNames" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.ListActivatableNames"

orgFreedesktopDBusAddMatch :: ((MonadRpc e m)) => String -> String -> String -> m ()
orgFreedesktopDBusAddMatch service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "AddMatch" [ (toVariant $ a1) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.AddMatch"

orgFreedesktopDBusRemoveMatch :: ((MonadRpc e m)) => String -> String -> String -> m ()
orgFreedesktopDBusRemoveMatch service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "RemoveMatch" [ (toVariant $ a1) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.RemoveMatch"

orgFreedesktopDBusGetNameOwner :: ((MonadRpc e m)) => String -> String -> String -> m (String)
orgFreedesktopDBusGetNameOwner service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "GetNameOwner" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.GetNameOwner"

orgFreedesktopDBusListQueuedOwners :: ((MonadRpc e m)) => String -> String -> String -> m ([String])
orgFreedesktopDBusListQueuedOwners service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "ListQueuedOwners" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.ListQueuedOwners"

orgFreedesktopDBusGetConnectionUnixUser :: ((MonadRpc e m)) => String -> String -> String -> m (Word32)
orgFreedesktopDBusGetConnectionUnixUser service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "GetConnectionUnixUser" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.GetConnectionUnixUser"

orgFreedesktopDBusGetConnectionUnixProcessID :: ((MonadRpc e m)) => String -> String -> String -> m (Word32)
orgFreedesktopDBusGetConnectionUnixProcessID service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "GetConnectionUnixProcessID" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.GetConnectionUnixProcessID"

orgFreedesktopDBusGetConnectionDOMID :: ((MonadRpc e m)) => String -> String -> String -> m (Int32)
orgFreedesktopDBusGetConnectionDOMID service_ objPath_ sender = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "GetConnectionDOMID" [ (toVariant $ sender) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.GetConnectionDOMID"

orgFreedesktopDBusGetAdtAuditSessionData :: ((MonadRpc e m)) => String -> String -> String -> m (B.ByteString)
orgFreedesktopDBusGetAdtAuditSessionData service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "GetAdtAuditSessionData" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.GetAdtAuditSessionData"

orgFreedesktopDBusGetConnectionSELinuxSecurityContext :: ((MonadRpc e m)) => String -> String -> String -> m (B.ByteString)
orgFreedesktopDBusGetConnectionSELinuxSecurityContext service_ objPath_ a1 = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "GetConnectionSELinuxSecurityContext" [ (toVariant $ a1) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.GetConnectionSELinuxSecurityContext"

orgFreedesktopDBusReloadConfig :: ((MonadRpc e m)) => String -> String -> m ()
orgFreedesktopDBusReloadConfig service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "ReloadConfig" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.ReloadConfig"

orgFreedesktopDBusGetId :: ((MonadRpc e m)) => String -> String -> m (String)
orgFreedesktopDBusGetId service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus" "GetId" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.GetId"
