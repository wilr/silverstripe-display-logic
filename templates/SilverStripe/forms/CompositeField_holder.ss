<div id="$HolderID" class="form-group sexy-sexy field<% if $extraClass %> $extraClass<% end_if %>" data-display-logic-masters="$DisplayLogicMasters" data-display-logic-eval="$DisplayLogic" data-display-logic-animation="$DisplayLogicAnimation">
    <% if $Title %>
        <label for="$ID" id="title-$ID" class="form__field-label">$Title</label>
    <% end_if %>
    <$Tag id="$ID" <% include SilverStripe/Forms/AriaAttributes %>
        class="form__fieldgroup form__field-holder
            <% if not $Title %> form__field-holder--no-label<% end_if %>
            <% if $Zebra %> form__fieldgroup-zebra<% end_if %>"
    >
        $Field
        <%-- TODO: change $MessageType to match Bootstraps alert types, e.g. alert-info, alert-danger etc --%>
        <% if $Message %><p class="alert $MessageType" role="alert" id="message-$ID">$Message</p><% end_if %>
        <% if $Description %><p class="form__field-description" id="describes-$ID">$Description</p><% end_if %>
    </$Tag>
    <% if $RightTitle %><p class="form__field-extra-label" id="extra-label-$ID">$RightTitle</p><% end_if %>
</div>
