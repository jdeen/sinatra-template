$.listen "parsley:field:error", (fieldInstance) ->
  arrErrorMsg = ParsleyUI.getErrorsMessages(fieldInstance)
  errorMsg = arrErrorMsg.join(";")
  fieldInstance.$element.popover("destroy").popover(
    container: "body"
    placement: "right"
    content: errorMsg
  ).popover "show"
  return

$.listen "parsley:field:success", (fieldInstance) ->
  fieldInstance.$element.popover "destroy"
  return

