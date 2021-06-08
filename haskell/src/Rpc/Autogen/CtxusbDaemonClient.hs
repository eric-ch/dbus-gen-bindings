module Rpc.Autogen.CtxusbDaemonClient (
  comCitrixXenclientUsbdaemonAssignDevice
  , comCitrixXenclientUsbdaemonGetDeviceInfo
  , comCitrixXenclientUsbdaemonListDevices
  , comCitrixXenclientUsbdaemonNameDevice
  , comCitrixXenclientUsbdaemonNewVm
  , comCitrixXenclientUsbdaemonPolicyGetRule
  , comCitrixXenclientUsbdaemonPolicyGetRules
  , comCitrixXenclientUsbdaemonPolicyList
  , comCitrixXenclientUsbdaemonPolicyRemoveRule
  , comCitrixXenclientUsbdaemonPolicySetRule
  , comCitrixXenclientUsbdaemonPolicySetRuleAdvanced
  , comCitrixXenclientUsbdaemonPolicySetRuleBasic
  , comCitrixXenclientUsbdaemonReloadPolicy
  , comCitrixXenclientUsbdaemonSetSticky
  , comCitrixXenclientUsbdaemonState
  , comCitrixXenclientUsbdaemonUnassignDevice
  , comCitrixXenclientUsbdaemonVmStopped
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

-- Interface com.citrix.xenclient.usbdaemon

comCitrixXenclientUsbdaemonAssignDevice :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> m ()
comCitrixXenclientUsbdaemonAssignDevice service_ objPath_ dev_id vm_uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "assign_device" [ (toVariant $ dev_id), (toVariant $ vm_uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.assign_device"

comCitrixXenclientUsbdaemonGetDeviceInfo :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> m (String, Int32, String, String)
comCitrixXenclientUsbdaemonGetDeviceInfo service_ objPath_ dev_id vm_uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "get_device_info" [ (toVariant $ dev_id), (toVariant $ vm_uuid) ])
  case variants of
    [ out_0, out_1, out_2, out_3 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_2), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_3))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.get_device_info"

comCitrixXenclientUsbdaemonListDevices :: ((MonadRpc e m)) => String -> String -> m ([Int32])
comCitrixXenclientUsbdaemonListDevices service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "list_devices" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.list_devices"

comCitrixXenclientUsbdaemonNameDevice :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> m ()
comCitrixXenclientUsbdaemonNameDevice service_ objPath_ dev_id name = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "name_device" [ (toVariant $ dev_id), (toVariant $ name) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.name_device"

comCitrixXenclientUsbdaemonNewVm :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientUsbdaemonNewVm service_ objPath_ dom_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "new_vm" [ (toVariant $ dom_id) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.new_vm"

comCitrixXenclientUsbdaemonPolicyGetRule :: ((MonadRpc e m)) => String -> String -> Int32 -> m (String, String, String, String, String, (Map.Map String String), (Map.Map String String), String)
comCitrixXenclientUsbdaemonPolicyGetRule service_ objPath_ rule_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "policy_get_rule" [ (toVariant $ rule_id) ])
  case variants of
    [ out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_2), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_3), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_4), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_5), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_6), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_7))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.policy_get_rule"

comCitrixXenclientUsbdaemonPolicyGetRules :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientUsbdaemonPolicyGetRules service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "policy_get_rules" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.policy_get_rules"

comCitrixXenclientUsbdaemonPolicyList :: ((MonadRpc e m)) => String -> String -> m ([Int32])
comCitrixXenclientUsbdaemonPolicyList service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "policy_list" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.policy_list"

comCitrixXenclientUsbdaemonPolicyRemoveRule :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientUsbdaemonPolicyRemoveRule service_ objPath_ rule_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "policy_remove_rule" [ (toVariant $ rule_id) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.policy_remove_rule"

comCitrixXenclientUsbdaemonPolicySetRule :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> String -> String -> String -> String -> (Map.Map String String) -> (Map.Map String String) -> String -> m ()
comCitrixXenclientUsbdaemonPolicySetRule service_ objPath_ rule_id command description vendor_id device_id serial_number sysattrs udev_properties vm_uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "policy_set_rule" [ (toVariant $ rule_id), (toVariant $ command), (toVariant $ description), (toVariant $ vendor_id), (toVariant $ device_id), (toVariant $ serial_number), (toVariant $ sysattrs), (toVariant $ udev_properties), (toVariant $ vm_uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.policy_set_rule"

comCitrixXenclientUsbdaemonPolicySetRuleAdvanced :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> String -> (Map.Map String String) -> (Map.Map String String) -> String -> m ()
comCitrixXenclientUsbdaemonPolicySetRuleAdvanced service_ objPath_ rule_id command description sysattrs udev_properties vm_uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "policy_set_rule_advanced" [ (toVariant $ rule_id), (toVariant $ command), (toVariant $ description), (toVariant $ sysattrs), (toVariant $ udev_properties), (toVariant $ vm_uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.policy_set_rule_advanced"

comCitrixXenclientUsbdaemonPolicySetRuleBasic :: ((MonadRpc e m)) => String -> String -> Int32 -> String -> String -> String -> String -> String -> String -> m ()
comCitrixXenclientUsbdaemonPolicySetRuleBasic service_ objPath_ rule_id command description vendor_id device_id serial_number vm_uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "policy_set_rule_basic" [ (toVariant $ rule_id), (toVariant $ command), (toVariant $ description), (toVariant $ vendor_id), (toVariant $ device_id), (toVariant $ serial_number), (toVariant $ vm_uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.policy_set_rule_basic"

comCitrixXenclientUsbdaemonReloadPolicy :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientUsbdaemonReloadPolicy service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "reload_policy" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.reload_policy"

comCitrixXenclientUsbdaemonSetSticky :: ((MonadRpc e m)) => String -> String -> Int32 -> Int32 -> m ()
comCitrixXenclientUsbdaemonSetSticky service_ objPath_ dev_id sticky = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "set_sticky" [ (toVariant $ dev_id), (toVariant $ sticky) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.set_sticky"

comCitrixXenclientUsbdaemonState :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientUsbdaemonState service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "state" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.state"

comCitrixXenclientUsbdaemonUnassignDevice :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientUsbdaemonUnassignDevice service_ objPath_ dev_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "unassign_device" [ (toVariant $ dev_id) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.unassign_device"

comCitrixXenclientUsbdaemonVmStopped :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientUsbdaemonVmStopped service_ objPath_ dom_id = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.usbdaemon" "vm_stopped" [ (toVariant $ dom_id) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.usbdaemon.vm_stopped"
