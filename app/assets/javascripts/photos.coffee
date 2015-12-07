# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'show.bs.modal', '#imageModal', (e) ->
    imgSrc = e.relatedTarget.src.replace('_m.jpg', '.jpg')
    imgTitle = e.relatedTarget.alt
    $('#imageModal #imageModalLabel').html imgTitle
    $('#imageModal #imagepreview').attr 'src', imgSrc
    # here asign the image to the modal when the user click the enlarge link
    return
  return