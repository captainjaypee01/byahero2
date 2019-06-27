
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Transactions</h1>
        
    </div>

    <div class = "row">
        <div class = col-md-7>
            <form class="form-inline">
                <input class="form-control mr-md-2" id="txt-search-tour" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-3" type="submit">Search</button>  
            </form>
        </div>
        <!-- <div class = col-md-5>
            <a href = "<?= base_url()?>admin/tour_create" class="btn btn-info my-3 pull-right" style = "color:white;"> <i class = "fa fa-plus"> </i> Add Tour</a>
        </div> -->
    </div>
    <section>

    <div class="table-responsive">
            <table class = "table table-striped table-sm"> 
                <thead> 
                    <tr> 
                        <th>Customer Name</th>   
                        <th>Package Name</th>   
                        <th>Date </th>
                        <th>Contact Number</th> 
                        <th>Email Address</th> 
                        <th>Activity</th> 
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td> Maria Clara</td>
                        <td> Mactan Island Hopping (Exclusive)</td>
                        <td> 06/10/19</td>
                        <td> 09148531521</td>
                        <td> mclara@mail.com</td>
                        <td> Approve payment</td>
                        <td> <button class = "btn btn-primary btn-sm" data-toggle="modal" data-target="#approve-payment-modal"> <i class = "fa fa-eye" style = "color:white;"> </i>  </button>
                             <a class = "btn btn-success btn-sm"> <i class = "fa fa-check" style = "color:white;"> </i>  </a>
                                
                        </td>
                    </tr>

                    <tr>
                        <td> Maria Clara</td>
                        <td> Mactan Island Hopping (Exclusive)</td>
                        <td> 06/10/19</td>
                        <td> 09148531521</td>
                        <td> mclara@mail.com</td>
                        <td> Past due payment</td>
                        <td> <button class = "btn btn-primary btn-sm" data-toggle="modal" data-target="#approve-payment-modal"> <i class = "fa fa-eye" style = "color:white;"> </i>  </button>
                             <a class = "btn btn-danger btn-sm"> <i class = "fa fa-times fa-lg" style = "color:white;"> </i>  </a>
                                
                        </td>
                    <tr>
                        <td> Maria Clara</td>
                        <td> Mactan Island Hopping (Exclusive)</td>
                        <td> 06/10/19</td>
                        <td> 09148531521</td>
                        <td> mclara@mail.com</td>
                        <td> Send review link</td>
                        <td> <button class = "btn btn-primary btn-sm" data-toggle="modal" data-target="#approve-payment-modal"> <i class = "fa fa-eye" style = "color:white;"> </i>  </button>
                             <a class = "btn btn-warning btn-sm"> <i class = "fa fa-bell" style = "color:white;"> </i>  </a>
                                
                        </td>
                    </tr>

                    <tr>
                        <td> Maria Clara</td>
                        <td> Mactan Island Hopping (Exclusive)</td>
                        <td> 06/10/19</td>
                        <td> 09148531521</td>
                        <td> mclara@mail.com</td>
                        <td> Done</td>
                        <td> <button class = "btn btn-primary btn-sm" data-toggle="modal" data-target="#approve-payment-modal"> <i class = "fa fa-eye" style = "color:white;"> </i>  </button>
                             <!-- <a class = "btn btn-warning btn-sm"> <i class = "fa fa-bell" style = "color:white;"> </i>  </a> -->
                                
                        </td>
                    </tr>

                <tbody>

            </table>
        
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
                                <div class="mb-3">
                                    <div class="form-group">
                                        <label for="">Package Name</label>
                                        <p> Mactan Island Hopping (Exclusive) </p>
                                    </div>
                                </div> 
                                <div class="mb-3">
                                    <div class="form-group">
                                        <label for="description">Tour</label>
                                        <p> Cebu Tour </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <h5>Uploaded Image</h5>
                                <img src="<?= base_url()?>img/feedback.jpg" class="card-img-top" alt="...">
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