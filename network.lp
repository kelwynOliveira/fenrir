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

<div class="row">
    <div class="col-md-12">
        <div class="box" id="network-details">
            <div class="box-header with-border">
                <h3 class="box-title">Network overview</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table id="network-entries" class="table table-striped table-bordered" width="100%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>IP address (hostname)</th>
                            <th>Hardware address</th>
                            <th>Interface</th>
                            <th>First seen</th>
                            <th>Last Query</th>
                            <th>Number of queries</th>
                            <th>Uses Fenrir</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>IP address (hostname)</th>
                            <th>Hardware address</th>
                            <th>Interface</th>
                            <th>First seen</th>
                            <th>Last Query</th>
                            <th>Number of queries</th>
                            <th>Uses Fenrir</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>
                <label>Background color: Last query from this device seen ...</label>
                <table width="100%">
                    <tr class="text-center">
                        <td class="network-recent" width="15%">just now</td>
                        <td class="network-gradient" width="30%">... to ...</td>
                        <td class="network-old" width="15%">24 hours ago</td>
                        <td class="network-older" width="20%">&gt; 24 hours ago</td>
                        <td class="network-never" width="20%">Device does not use Fenrir</td>
                    </tr>
                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>
<!-- /.row -->

<script src="<?=pihole.fileversion('scripts/js/ip-address-sorting.js')?>"></script>
<script src="<?=pihole.fileversion('scripts/js/network.js')?>"></script>

<? mg.include('scripts/lua/footer.lp','r')?>
