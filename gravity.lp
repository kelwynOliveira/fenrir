<? --[[
*  Fenrir: A black hole for Internet advertisements
*  (c) 2017 Fenrir, LLC (https://pi-hole.net)
*  Network-wide ad blocking via your own hardware.
*
*  This file is copyright under the latest version of the EUPL.
*  Please see LICENSE file for your rights under this license.
--]]

mg.include('scripts/lua/header_authenticated.lp','r')
?>
<!-- Title -->
<div class="page-header">
    <h1>Update Gravity (list of blocked domains)</h1>
</div>

<!-- Alerts -->
<div id="alInfo" class="alert alert-info alert-dismissible fade in" role="alert" hidden>
    <button type="button" class="close" data-hide="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    Updating... this may take a while. <strong>Please do not navigate away from or close this page.</strong>
</div>
<div id="alSuccess" class="alert alert-success alert-dismissible fade in" role="alert" hidden>
    <button type="button" class="close" data-hide="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    Success!
</div>

<button type="button" id="gravityBtn" class="btn btn-lg btn-primary btn-block">Update</button>
<pre id="output" style="width: 100%; height: 100%;" hidden></pre>

<script src="<?=pihole.fileversion('scripts/js/gravity.js')?>"></script>
<? mg.include('scripts/lua/footer.lp','r')?>
