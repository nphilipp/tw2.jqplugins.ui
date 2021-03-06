% if 'value' in w.attrs and w.attrs['value']:
<div>
<style type="text/css">
    .tw2-jquery-faded {color:#AAA;}
    .tw2-jquery-focused {color:#000;}
</style>
<script type="text/javascript">
$(document).ready( function () {
    var selector = "#${w.selector}";
    $(selector).focus( function () {
        if ( $(selector).val()=="${w.attrs['value']}" ) {
            $(selector).val("");
        }
        $(selector).addClass("tw2-jquery-focused");
        $(selector).removeClass("tw2-jquery-faded");
    });
    $(selector).blur( function () {
        if ( $(selector).val()=="" ) {
            $(selector).val( "${w.attrs['value']}" );
            $(selector).addClass("tw2-jquery-faded");
            $(selector).removeClass("tw2-jquery-focused");
        }
    });
    $(selector).addClass("tw2-jquery-faded");
});
</script>
</div>
% endif
