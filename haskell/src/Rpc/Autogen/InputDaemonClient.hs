module Rpc.Autogen.InputDaemonClient (
  comCitrixXenclientInputGetKbLayouts
  , comCitrixXenclientInputGetCurrentKbLayout
  , comCitrixXenclientInputSetCurrentKbLayout
  , comCitrixXenclientInputGetFocusDomid
  , comCitrixXenclientInputSwitchFocus
  , comCitrixXenclientInputGetMouseSpeed
  , comCitrixXenclientInputSetMouseSpeed
  , comCitrixXenclientInputTouchpadGet
  , comCitrixXenclientInputTouchpadSet
  , comCitrixXenclientInputUpdateIdleTimer
  , comCitrixXenclientInputGetSeamlessMousing
  , comCitrixXenclientInputSetSeamlessMousing
  , comCitrixXenclientInputReloadConfigFromDisk
  , comCitrixXenclientInputAuthBegin
  , comCitrixXenclientInputAuthClearStatus
  , comCitrixXenclientInputAuthCollectPassword
  , comCitrixXenclientInputAuthCreateHash
  , comCitrixXenclientInputAuthGetContext
  , comCitrixXenclientInputAuthGetStatus
  , comCitrixXenclientInputAuthRemoteLogin
  , comCitrixXenclientInputAuthRemoteStatus
  , comCitrixXenclientInputAuthRmPlatformUser
  , comCitrixXenclientInputAuthSetContext
  , comCitrixXenclientInputAuthSetContextFlags
  , comCitrixXenclientInputAuthTitle
  , comCitrixXenclientInputDivertKeyboardFocus
  , comCitrixXenclientInputDivertMouseFocus
  , comCitrixXenclientInputFocusMode
  , comCitrixXenclientInputGetAuthOnBoot
  , comCitrixXenclientInputGetIdleTime
  , comCitrixXenclientInputGetLastInputTime
  , comCitrixXenclientInputGetLidState
  , comCitrixXenclientInputGetPlatformUser
  , comCitrixXenclientInputGetRemoteUserHash
  , comCitrixXenclientInputGetUserKeydir
  , comCitrixXenclientInputLock
  , comCitrixXenclientInputLockTimeoutGet
  , comCitrixXenclientInputLockTimeoutSet
  , comCitrixXenclientInputSetAuthOnBoot
  , comCitrixXenclientInputSetSlot
  , comCitrixXenclientInputStopKeyboardDivert
  , comCitrixXenclientInputStopMouseDivert
  , comCitrixXenclientInputTouch
  , comCitrixXenclientInputUpdateSeamlessMouseSettings
  , comCitrixXenclientInputGetNumlockRestoreOnSwitch
  , comCitrixXenclientInputSetNumlockRestoreOnSwitch
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

-- Interface com.citrix.xenclient.input

comCitrixXenclientInputGetKbLayouts :: ((MonadRpc e m)) => String -> String -> m ([String])
comCitrixXenclientInputGetKbLayouts service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_kb_layouts" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_kb_layouts"

comCitrixXenclientInputGetCurrentKbLayout :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientInputGetCurrentKbLayout service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_current_kb_layout" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_current_kb_layout"

comCitrixXenclientInputSetCurrentKbLayout :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientInputSetCurrentKbLayout service_ objPath_ layout = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "set_current_kb_layout" [ (toVariant $ layout) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.set_current_kb_layout"

comCitrixXenclientInputGetFocusDomid :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientInputGetFocusDomid service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_focus_domid" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_focus_domid"

comCitrixXenclientInputSwitchFocus :: ((MonadRpc e m)) => String -> String -> Int32 -> Bool -> m (Bool)
comCitrixXenclientInputSwitchFocus service_ objPath_ domid force = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "switch_focus" [ (toVariant $ domid), (toVariant $ force) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.switch_focus"

comCitrixXenclientInputGetMouseSpeed :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientInputGetMouseSpeed service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_mouse_speed" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_mouse_speed"

comCitrixXenclientInputSetMouseSpeed :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientInputSetMouseSpeed service_ objPath_ mouse_speed = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "set_mouse_speed" [ (toVariant $ mouse_speed) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.set_mouse_speed"

comCitrixXenclientInputTouchpadGet :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientInputTouchpadGet service_ objPath_ prop = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "touchpad_get" [ (toVariant $ prop) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.touchpad_get"

comCitrixXenclientInputTouchpadSet :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientInputTouchpadSet service_ objPath_ prop value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "touchpad_set" [ (toVariant $ prop), (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.touchpad_set"

comCitrixXenclientInputUpdateIdleTimer :: ((MonadRpc e m)) => String -> String -> String -> Int32 -> m ()
comCitrixXenclientInputUpdateIdleTimer service_ objPath_ timer_name timeout_value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "update_idle_timer" [ (toVariant $ timer_name), (toVariant $ timeout_value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.update_idle_timer"

comCitrixXenclientInputGetSeamlessMousing :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientInputGetSeamlessMousing service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_seamless_mousing" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_seamless_mousing"

comCitrixXenclientInputSetSeamlessMousing :: ((MonadRpc e m)) => String -> String -> Bool -> m (Bool)
comCitrixXenclientInputSetSeamlessMousing service_ objPath_ enabled = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "set_seamless_mousing" [ (toVariant $ enabled) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.set_seamless_mousing"

comCitrixXenclientInputReloadConfigFromDisk :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientInputReloadConfigFromDisk service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "reload_config_from_disk" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.reload_config_from_disk"

comCitrixXenclientInputAuthBegin :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientInputAuthBegin service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_begin" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_begin"

comCitrixXenclientInputAuthClearStatus :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientInputAuthClearStatus service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_clear_status" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_clear_status"

comCitrixXenclientInputAuthCollectPassword :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientInputAuthCollectPassword service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_collect_password" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_collect_password"

comCitrixXenclientInputAuthCreateHash :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientInputAuthCreateHash service_ objPath_ fname password = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_create_hash" [ (toVariant $ fname), (toVariant $ password) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_create_hash"

comCitrixXenclientInputAuthGetContext :: ((MonadRpc e m)) => String -> String -> m (String, String, Int32)
comCitrixXenclientInputAuthGetContext service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_get_context" [ ])
  case variants of
    [ out_0, out_1, out_2 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_2))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_get_context"

comCitrixXenclientInputAuthGetStatus :: ((MonadRpc e m)) => String -> String -> Bool -> m (String, Int32)
comCitrixXenclientInputAuthGetStatus service_ objPath_ clear = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_get_status" [ (toVariant $ clear) ])
  case variants of
    [ out_0, out_1 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_get_status"

comCitrixXenclientInputAuthRemoteLogin :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientInputAuthRemoteLogin service_ objPath_ username password = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_remote_login" [ (toVariant $ username), (toVariant $ password) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_remote_login"

comCitrixXenclientInputAuthRemoteStatus :: ((MonadRpc e m)) => String -> String -> Bool -> Int32 -> String -> String -> String -> Word32 -> m ()
comCitrixXenclientInputAuthRemoteStatus service_ objPath_ auto_started status id username recovery_key_file ctx_flags = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_remote_status" [ (toVariant $ auto_started), (toVariant $ status), (toVariant $ id), (toVariant $ username), (toVariant $ recovery_key_file), (toVariant $ ctx_flags) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_remote_status"

comCitrixXenclientInputAuthRmPlatformUser :: ((MonadRpc e m)) => String -> String -> m (Bool, String)
comCitrixXenclientInputAuthRmPlatformUser service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_rm_platform_user" [ ])
  case variants of
    [ out_0, out_1 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_rm_platform_user"

comCitrixXenclientInputAuthSetContext :: ((MonadRpc e m)) => String -> String -> String -> String -> m ()
comCitrixXenclientInputAuthSetContext service_ objPath_ user title = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_set_context" [ (toVariant $ user), (toVariant $ title) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_set_context"

comCitrixXenclientInputAuthSetContextFlags :: ((MonadRpc e m)) => String -> String -> String -> String -> Int32 -> m ()
comCitrixXenclientInputAuthSetContextFlags service_ objPath_ user title flags = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_set_context_flags" [ (toVariant $ user), (toVariant $ title), (toVariant $ flags) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_set_context_flags"

comCitrixXenclientInputAuthTitle :: ((MonadRpc e m)) => String -> String -> m (String)
comCitrixXenclientInputAuthTitle service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "auth_title" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.auth_title"

comCitrixXenclientInputDivertKeyboardFocus :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientInputDivertKeyboardFocus service_ objPath_ uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "divert_keyboard_focus" [ (toVariant $ uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.divert_keyboard_focus"

comCitrixXenclientInputDivertMouseFocus :: ((MonadRpc e m)) => String -> String -> String -> Word32 -> Word32 -> Word32 -> Word32 -> Word32 -> Word32 -> Word32 -> Word32 -> m ()
comCitrixXenclientInputDivertMouseFocus service_ objPath_ uuid sframe_x1 sframe_y1 sframe_x2 sframe_y2 dframe_x1 dframe_y1 dframe_x2 dframe_y2 = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "divert_mouse_focus" [ (toVariant $ uuid), (toVariant $ sframe_x1), (toVariant $ sframe_y1), (toVariant $ sframe_x2), (toVariant $ sframe_y2), (toVariant $ dframe_x1), (toVariant $ dframe_y1), (toVariant $ dframe_x2), (toVariant $ dframe_y2) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.divert_mouse_focus"

comCitrixXenclientInputFocusMode :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientInputFocusMode service_ objPath_ mode = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "focus_mode" [ (toVariant $ mode) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.focus_mode"

comCitrixXenclientInputGetAuthOnBoot :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientInputGetAuthOnBoot service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_auth_on_boot" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_auth_on_boot"

comCitrixXenclientInputGetIdleTime :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientInputGetIdleTime service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_idle_time" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_idle_time"

comCitrixXenclientInputGetLastInputTime :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientInputGetLastInputTime service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_last_input_time" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_last_input_time"

comCitrixXenclientInputGetLidState :: ((MonadRpc e m)) => String -> String -> m (Word32)
comCitrixXenclientInputGetLidState service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_lid_state" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_lid_state"

comCitrixXenclientInputGetPlatformUser :: ((MonadRpc e m)) => String -> String -> m (String, Int32)
comCitrixXenclientInputGetPlatformUser service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_platform_user" [ ])
  case variants of
    [ out_0, out_1 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0), (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_1))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_platform_user"

comCitrixXenclientInputGetRemoteUserHash :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientInputGetRemoteUserHash service_ objPath_ userid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_remote_user_hash" [ (toVariant $ userid) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_remote_user_hash"

comCitrixXenclientInputGetUserKeydir :: ((MonadRpc e m)) => String -> String -> String -> m (String)
comCitrixXenclientInputGetUserKeydir service_ objPath_ user = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "get_user_keydir" [ (toVariant $ user) ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.get_user_keydir"

comCitrixXenclientInputLock :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientInputLock service_ objPath_ can_switch_out = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "lock" [ (toVariant $ can_switch_out) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.lock"

comCitrixXenclientInputLockTimeoutGet :: ((MonadRpc e m)) => String -> String -> m (Int32)
comCitrixXenclientInputLockTimeoutGet service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "lock_timeout_get" [ ])
  case variants of
    [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0))
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.lock_timeout_get"

comCitrixXenclientInputLockTimeoutSet :: ((MonadRpc e m)) => String -> String -> Int32 -> m ()
comCitrixXenclientInputLockTimeoutSet service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "lock_timeout_set" [ (toVariant $ value) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.lock_timeout_set"

comCitrixXenclientInputSetAuthOnBoot :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientInputSetAuthOnBoot service_ objPath_ auth = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "set_auth_on_boot" [ (toVariant $ auth) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.set_auth_on_boot"

comCitrixXenclientInputSetSlot :: ((MonadRpc e m)) => String -> String -> Int32 -> Int32 -> m ()
comCitrixXenclientInputSetSlot service_ objPath_ domid slot = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "set_slot" [ (toVariant $ domid), (toVariant $ slot) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.set_slot"

comCitrixXenclientInputStopKeyboardDivert :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientInputStopKeyboardDivert service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "stop_keyboard_divert" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.stop_keyboard_divert"

comCitrixXenclientInputStopMouseDivert :: ((MonadRpc e m)) => String -> String -> m ()
comCitrixXenclientInputStopMouseDivert service_ objPath_ = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "stop_mouse_divert" [ ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.stop_mouse_divert"

comCitrixXenclientInputTouch :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientInputTouch service_ objPath_ uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "touch" [ (toVariant $ uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.touch"

comCitrixXenclientInputUpdateSeamlessMouseSettings :: ((MonadRpc e m)) => String -> String -> String -> m ()
comCitrixXenclientInputUpdateSeamlessMouseSettings service_ objPath_ dom_uuid = do
  variants <- rpcCall (mkcall service_ objPath_ "com.citrix.xenclient.input" "update_seamless_mouse_settings" [ (toVariant $ dom_uuid) ])
  case variants of
    [ ] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! com.citrix.xenclient.input.update_seamless_mouse_settings"

comCitrixXenclientInputGetNumlockRestoreOnSwitch :: ((MonadRpc e m)) => String -> String -> m (Bool)
comCitrixXenclientInputGetNumlockRestoreOnSwitch service_ objPath_ = (
  do
    variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Get" [ toVariant "com.citrix.xenclient.input", toVariant "numlock-restore-on-switch" ])
    case variants of
      [ out_0 ] -> return ((((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ (((\mv_ -> let Just v_ = mv_ in v_) . fromVariant) $ out_0)))
      _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Get")

comCitrixXenclientInputSetNumlockRestoreOnSwitch :: ((MonadRpc e m)) => String -> String -> Bool -> m ()
comCitrixXenclientInputSetNumlockRestoreOnSwitch service_ objPath_ value = do
  variants <- rpcCall (mkcall service_ objPath_ "org.freedesktop.DBus.Properties" "Set" [ toVariant "com.citrix.xenclient.input", toVariant "numlock-restore-on-switch", (toVariant $ (toVariant $ value)) ])
  case variants of
    [] -> return ()
    _ -> error "RPC call returned unexpected number of arguments! org.freedesktop.DBus.Properties.Set"
