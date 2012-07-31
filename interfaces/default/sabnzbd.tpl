#include $webdir + "/header.tpl"#

<div class="container">
    <div class="content maincontent">
        <h1 class="page-header page-title">
            <a href="http:\/\/$getVar('sabnzbd_host', ''):$getVar('sabnzbd_port', '')" target="_blank">$getVar('sabnzbd_name', 'SABnzbd')</a>
            <small>
                <strong>Speed:</strong> <span id="queue_speed"></span>
                <strong>Status:</strong> <span id="queue_state"></span>
            </small>
        </h1>
        <form name="add_nzb_form" id="add_nzb_form" method="post" class="well form-inline" action="">
            <input class="span5" id="nzb_url" name="nzb_url" type="text" placeholder="Paste NZB url" />
            <select class="span2" name="nzb_category" id="nzb_category"></select>
            <button class="btn btn-success" id="add_nzb_button"><i class="icon-plus icon-white"></i> Add NZB</button>
            <button class="btn" id="nzb_pause_button"><i class="icon-pause"></i> Pause</button>
            <input type="text" class="span1" id="nzb_get_speed" placeholder="Kb/s" value="" />
            <button class="btn" id="nzb_set_speed"><i class="icon-cog"></i> Set speed</button>
        </form>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#active" data-toggle="tab">Active</a></li>
            <li><a href="#history" data-toggle="tab">History</a></li>
            <li><a href="#warnings" data-toggle="tab">Warnings</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="active">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>File</th>
                        <th>Category</th>
                        <th>Progress</th>
                        <th>Remaining</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody id="active_table_body"></tbody>
                </table>
            </div>
            <div id="history" class="tab-pane">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>File</th>
                        <th>Status</th>
                        <th>Size</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody id="history_table_body"></tbody>
                </table>
            </div>
            <div id="warnings" class="tab-pane">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Warnings</th>
                    </tr>
                    </thead>
                    <tbody id="warning_table_body"></tbody>
                </table>
            </div>
        </div>
    </div>
</div>

#include $webdir + "/footer.tpl"#
