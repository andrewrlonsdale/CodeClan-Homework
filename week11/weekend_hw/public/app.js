var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    height: '500',
    width: '1100',
    videoId: 'dQw4w9WgXcQ', 
    showinfo:1,
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}

function onPlayerReady(event) {
  event.target.playVideo();
  event.target.setVolume(100);
}

var done = false;
function onPlayerStateChange(event) {
  if (event.data == YT.PlayerState.PLAYING && !done) {
    done = true;
    event.target.nextVideo();
  }
}
function stopVideo() {
  player.stopVideo();
}



// SC.initialize({
//   client_id: 'YOUR_CLIENT_ID'
// });

// // var track_url = 'http://soundcloud.com/forss/flickermood';
// // SC.oEmbed(track_url, { auto_play: true }).then(function(oEmbed) {
//   //   console.log('oEmbed response: ', oEmbed);
//   // });

//   $(document).ready(function() {
//     SC.get('/tracks/293', function(track) {
//       SC.oEmbed(track.permalink_url, document.getElementById('player'));
//     });
//   });
  
//   $(document).ready(function() {
//    SC.stream('/tracks/293', function(sound) {

//     });
//   });


//   $(document).ready(function() {
//     SC.get('/tracks', { genres: 'metal' }, function(tracks) {
//       $(tracks).each(function(index, track) {
//         $('#results').append($('<li></li>').html(track.title + ' - ' + track.genre));
//       });
//     });
//   });

  

