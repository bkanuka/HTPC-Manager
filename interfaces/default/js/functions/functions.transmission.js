function getTorrents(){
  $.ajax({
    'url': WEBDIR + 'transmission/queue',
    'success': function(response){
      if (response.arguments && response.result == 'success') {
        $('#torrent-queue').html('');
        $.each(response.arguments.torrents, function(index, torrent){
          tr = $('<tr>');

          var progressBar = $('<div>');
          progressBar.addClass('bar');
          progressBar.css('width', (torrent.percentDone*100) + '%');

          var  progress = $('<div>');
          progress.addClass('progress');
          if (torrent.percentDone >= 1) {
            progress.addClass('progress-success');
          }
          progress.append(progressBar);


          tr.append(
            $('<td>').text(torrent.id),
            $('<td>').text(torrent.name),
            $('<td>').text(torrent.eta + ' seconds'),
            $('<td>').addClass('span3').html(progress)
          );
          $('#torrent-queue').append(tr);
        });
        $('.spinner').hide();
      }
    }
  });
}

function getStatus(){
  $.ajax({
    'url': WEBDIR + 'transmission/stats',
    'success': function(response){
      if (response.arguments && response.result == 'success') {
        uploadSpeed = Math.round(response.arguments.uploadSpeed/1024)
        downloadSpeed = Math.round(response.arguments.downloadSpeed/1024)

       $('#queue_upload').text(uploadSpeed + ' kb/s');
       $('#queue_download').text(downloadSpeed + ' kb/s');
      }
    }
  });
}