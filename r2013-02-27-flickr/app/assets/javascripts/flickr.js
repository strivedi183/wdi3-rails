$(function(){

  $('#flickr').click(search_flickr);
  $('#btn-clear').click(clear_images);
});

var timer = 0;
var index;
var item;
var page = 1;


function search_flickr()
{
  var search = $('#search').val();
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=7a082f8a790ae0e78f71224031b3358b&text=' + search + '&per_page=5&page=' + page + '&format=json&jsoncallback=?', results);
}

function results(data)
{
  var sec = parseFloat($('#duration').val())
  var msec = 1000 * sec;
  index = 0;
  timer = setInterval(get_images, msec);
  items = data.photos.photo;
}

function get_images()
{
  item = items[index];
  var width = parseInt($('#width').val());
  var height = parseInt($('#height').val());
  var image_url = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
  var image = $('<div>');
  image.addClass('image_box');
  image.css({'width':width, 'height':height, 'background-image':'url('+image_url+')'})
  $('#images').prepend(image);
  index++;
  $('#photo_number').text('Photo number is '+index);
  if (index == items.length)
  {
    clearInterval(timer);
    index = 0;
    $('#page_number').text('The page number is '+page);
    page++;
    search_flickr();
  }
}

function clear_images()
{
  var clear = $('#images .clear');
  $('#images').empty().append(clear);
}
