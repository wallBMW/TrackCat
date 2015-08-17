$.rails.allowAction = (element) ->
  message = element.data('confirm')
  return true unless message
  $link = element.clone()
    .removeAttr('class')
    .removeAttr('data-confirm')
    .addClass('btn').addClass('btn-danger')
    .html("I know what I'm doing.")

  modal_html = """
               <div class="modal fade" id="myModal" aria-labelledby="myModalLabel" role="dialog" aria-hidden="true">
                 <div class="modal-dialog">
                   <div class="modal-content">
                     <div class="modal-header">
                       <a class="close" data-dismiss="modal">×</a>
                       <h3>#{message}</h3>
                     </div>
                     <div class="modal-body">
                       <p>This is <strong>permanent</strong>.</p>
                     </div>
                     <div class="modal-footer">
                       <a data-dismiss="modal" class="btn">Cancel</a>
                     </div>
                   </div>
                 </div>
               </div>
               """
  $modal_html = $(modal_html)
  $modal_html.find('.modal-footer').append($link)
  $modal_html.modal()
  return false
