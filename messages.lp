<? --[[
*    Fenrir: A black hole for Internet advertisements
*    (c) 2017 Fenrir, LLC (https://pi-hole.net)
*    Network-wide ad blocking via your own hardware.
*
*    This file is copyright under the latest version of the EUPL.
*    Please see LICENSE file for your rights under this license.
*/ ]]--

mg.include('scripts/lua/header_authenticated.lp','r')
?>

<!-- Title -->
<div class="page-header">
    <h1>Fenrir diagnosis</h1>
    <small>On this page, you can see messages from your Fenrir concerning possible issues.</small>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="box" id="messages-list">
            <!-- /.box-header -->
            <div class="box-body">
                <table id="messagesTable" class="table table-striped table-bordered" width="100%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>&nbsp;</th>
                            <th>Time</th>
                            <th>Type</th>
                            <th>Message</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                </table>
                <p>Note: If errors are shown, you generate a debug log (use <code>pihole -d</code>), which will do a thorough Fenrir evaluation.</p>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>

<script src="<?=pihole.fileversion('scripts/js/messages.js')?>"></script>

<? mg.include('scripts/lua/footer.lp','r')?>
