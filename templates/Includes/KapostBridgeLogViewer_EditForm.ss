<form $FormAttributes data-layout-type="border">
    <div class="cms-edit-form center" data-layout-type="border">
        <div class="cms-content-fields center cms-panel-padded" data-layout-type="border">
            <% if $Message %>
                <p id="{$FormName}_error" class="message $MessageType">$Message</p>
            <% else %>
                <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
            <% end_if %>
            
            <fieldset>
                <% if $Legend %><legend>$Legend</legend><% end_if %>
                <% loop $Fields %>
                    $FieldHolder
                <% end_loop %>
                <div class="clear"><!-- --></div>
            </fieldset>
        </div>
        
        <div class="cms-content-actions cms-content-controls south">
            <% if $Actions %>
                <div class="Actions">
                    <% loop $Actions %>
                        $Field
                    <% end_loop %>
                    <% if $Controller.LinkPreview %>
                        <a href="$Controller.LinkPreview" target="_cmsPreview" class="cms-preview-toggle-link ss-ui-button" data-icon="preview">
                            <% _t('LeftAndMain.PreviewButton', 'Preview') %> &raquo;
                        </a>
                    <% end_if %>
                    
                    <% include LeftAndMain_ViewModeSelector SelectID="preview-mode-dropdown-in-content" %>
                </div>
            <% end_if %>
        </div>
    </div>
    
    $Controller.LogsPanel
</form>