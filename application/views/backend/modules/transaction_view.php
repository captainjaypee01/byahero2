
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Transactions</h1>
        
    </div>

    <div class = "row">
        <div class = col-md-7>
            <form class="form-inline">
                <input class="form-control mr-md-2" id="txt-search-transaction" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-3" type="submit">Search</button>  
            </form>
        </div>
        <!-- <div class = col-md-5>
            <a href = "<?= base_url()?>admin/tour_create" class="btn btn-info my-3 pull-right" style = "color:white;"> <i class = "fa fa-plus"> </i> Add Tour</a>
        </div> -->
    </div>
    <section>
 
        <div class="table-responsive" id="transaction_table">
        
        </div>
        
        
        <nav aria-label="Page navigation example" id="pagination_link">

        </nav>

        <!-- Modal -->
<div class="modal fade" id="approve-payment-modal" tabindex="-1" role="dialog" aria-labelledby="approve-payment-modal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="frm-package">
                <div class="modal-header">
                    <h5 class="modal-title" id="add-approve-payment-modalLabel">View Transaction Information</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="tour_id" id="tour-id">
                    <div class="container"> 
                        <div class="row">
                            <div class="col">
                                <h5>Uploaded Image</h5>
                                <img id="proofImage" src="<?= base_url()?>img/feedback.jpg" class="card-img-top" alt="...">
                            </div>
                        </div>
                        <div id="div-package-pax">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <!-- <button type="submit" class="btn btn-primary">Save changes</button> -->
                </div>
            </form>
        </div>
    </div>
</div>

</section>
      </div>
    </div>
  </div>