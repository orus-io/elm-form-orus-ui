module Form.OUI exposing (text)

import Form
import Form.InputType
import OUI.TextField


text : String -> Form.FieldViewState customError String stackMsg -> OUI.TextField.TextField (Form.Msg stackMsg)
text label state =
    OUI.TextField.new label (state.onInput Form.InputType.Text) (state.state.value |> Maybe.withDefault "")
        |> OUI.TextField.onFocusBlur state.onFocus state.onBlur
        |> OUI.TextField.withFocused state.state.hasFocus
