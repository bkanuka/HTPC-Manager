#include $webdir + "/header.tpl"#

<div class="container">
    <div class="content maincontent">
        <h1 class="page-header page-title">
            <a href="http://$getVar('squeezebox_host', ''):$getVar('squeezebox_port', '')" target="_blank">$getVar('squeezebox_name', 'Squeezebox')</a>
            <select id="players" class="pull-right"></select>
        </h1>
        <div class="well hide" id="nowplaying">
            <div class="row">
                <div class="span2">
                    <div class="thumbnail"></div>
                </div>
                <div class="span9">
                    <div class="btn-toolbar pull-right">
                        <div class="btn-group">
                            <button class="btn" id="volume">&nbsp;</button>
                            <button class="btn" data-player-control="VolDown"><i class="icon-volume-down"></i></button>
                            <button class="btn" data-player-control="VolUp"><i class="icon-volume-up"></i></button>
                        </div>
                        <div class="btn-group">
                            <button class="btn" data-player-control="Power"><i class="icon-off"></i></button>
                        </div>
                    </div>
                    <h2 id="player-item-title"></h2>
                    <h2><small id="player-item-time"></small></h2>
                    <div class="progress" id="player-progressbar">
                        <div class="bar active"></div>
                    </div>
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <button class="btn" data-player-control="MoveLeft"><i class="icon-backward"></i></button>
                            <button class="btn" data-player-control="PlayPause"><i class="icon-pause"></i></button>
                            <button class="btn" data-player-control="MoveRight"><i class="icon-forward"></i></button>
                        </div>
                        <div class="btn-group">
                            <button class="btn" data-player-control="Shuffle" title="Shuffle"><i class="icon-align-right"></i></button>
                            <button class="btn" data-player-control="Repeat" title="Repeat"><i class="icon-repeat"></i></button>
                        </div>
                        <div class="btn-group">
                            <button class="btn" data-player-control="ClearPlaylist" title="Clear Playlist"><i class="icon-remove"></i></button>
                            <button class="btn" data-player-control="SavePlaylist" title="Save Playlist"><i class="icon-file"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#playlist" data-toggle="tab">Playlist</a></li>
            <li><a href="#artists" data-toggle="tab">Artists</a></li>
            <li><a href="#albums" data-toggle="tab">Albums</a></li>
            <li><a href="#stations" data-toggle="tab">Radio</a></li>
            <li class="hide"><a href="#songs" data-toggle="tab">Songs</a></li>
            <li><a href="#playlists" data-toggle="tab">Playlists</a></li>
        </ul>
        <div class="tab-content">
            <div id="playlist" class="tab-pane active">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="width:15px">&nbsp;</th>
                            <th>Track</th>
                            <th>Artist</th>
                            <th>Album</th>
                            <th class="right">Duration</th>
                        </tr>
                    </thead>
                    <tbody id="playlist_table"></tbody>
                </table>
            </div>
            <div id="artists" class="tab-pane sidebar-nav"></div>
            <div id="albums" class="tab-pane sidebar-nav"></div>
            <div id="stations" class="tab-pane sidebar-nav"></div>
            <div id="songs" class="tab-pane">
                <div class="btn-group pull-right">
                    <button class="btn btn-mini" data-player-control="PlayNow" title="Play Now"><i class="icon-play"></i></button>
                    <button class="btn btn-mini" data-player-control="AddPlaylist" title="Add to Playlist"><i class="icon-plus"></i></button>
                </div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Track</th>
                            <th>Artist</th>
                            <th>Album</th>
                            <th class="right">Duration</th>
                        </tr>
                    </thead>
                    <tbody id="song_table"></tbody>
                </table>
            </div>
            <div id="playlists" class="tab-pane sidebar-nav"></div>
        </div>
    </div>
</div>

#include $webdir + "/footer.tpl"#
