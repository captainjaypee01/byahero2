<style>
body { -webkit-font-smoothing: antialiased; text-rendering: optimizeLegibility; font-family: 'Noto Sans', sans-serif; letter-spacing: 0px; font-size: 14px; color: #2e3139; font-weight: 400; line-height: 26px; }
h1, h2, h3, h4, h5, h6 { letter-spacing: 0px; font-weight: 400; color: #FE9900; margin: 0px 0px 15px 0px; font-family: 'Noto Sans', sans-serif; }
h1 { font-size: 42px; line-height: 50px; }
h2 { font-size: 36px; line-height: 42px; }
h3 { font-size: 20px; line-height: 32px; }
h4 { font-size: 18px; line-height: 32px; }
h5 { font-size: 14px; line-height: 20px; }
h6 { font-size: 12px; line-height: 18px; }
p { margin: 0 0 20px; line-height: 1.8; }
p:last-child { margin: 0px; }
ul, ol { }
a { text-decoration: none; color: #2e3139; -webkit-transition: all 0.3s; -moz-transition: all 0.3s; transition: all 0.3s; }
a:focus, a:hover { text-decoration: none; color: #FE9900; }
.content{padding-top:80px; padding-bottom:80px};


/*------------------------
Radio & Checkbox CSS
-------------------------*/
.form-control { border-radius: 4px; font-size: 14px; font-weight: 500; width: 100%; height: 70px; padding: 14px 18px; line-height: 1.42857143; border: 1px solid #dfe2e7; background-color: #dfe2e7; text-transform: capitalize; letter-spacing: 0px; margin-bottom: 16px; -webkit-box-shadow: inset 0 0px 0px rgba(0, 0, 0, .075); box-shadow: inset 0 0px 0px rgba(0, 0, 0, .075); -webkit-appearance: none; }

input[type=radio].with-font, input[type=checkbox].with-font { border: 0; clip: rect(0 0 0 0); height: 1px; margin: -1px; overflow: hidden; padding: 0; position: absolute; width: 1px; }
input[type=radio].with-font~label:before, input[type=checkbox].with-font~label:before { font-family: FontAwesome; display: inline-block; content: "\f1db"; letter-spacing: 10px; font-size: 1.2em; color: #dfe2e7; width: 1.4em; }
input[type=radio].with-font:checked~label:before, input[type=checkbox].with-font:checked~label:before { content: "\f00c"; font-size: 1.2em; color: #FE9900; letter-spacing: 5px; }
input[type=checkbox].with-font~label:before { content: "\f096"; }
input[type=checkbox].with-font:checked~label:before { content: "\f046"; color: #FE9900; }
input[type=radio].with-font:focus~label:before, input[type=checkbox].with-font:focus~label:before, input[type=radio].with-font:focus~label, input[type=checkbox].with-font:focus~label { }

.box { background-color: #fff; border-radius: 8px; border: 2px solid #e9ebef; padding: 50px; margin-bottom: 40px; }
.box-title { margin-bottom: 30px; text-transform: uppercase; font-size: 16px; font-weight: 700; color: #FE9900; letter-spacing: 2px; }
.plan-selection { border-bottom: 2px solid #e9ebef; padding-bottom: 25px; margin-bottom: 35px; }
.plan-selection:last-child { border-bottom: 0px; margin-bottom: 0px; padding-bottom: 0px; }
.plan-data { position: relative; }
.plan-data label { font-size: 20px; margin-bottom: 15px; font-weight: 400; }
.plan-text { padding-left: 35px; }
.plan-price { position: absolute; right: 0px; color: black; font-size: 20px; font-weight: 700; letter-spacing: -1px; line-height: 1.5; bottom: 43px; }
.term-price { bottom: 18px; }
.secure-price { bottom: 68px; }
.summary-block { border-bottom: 2px solid #d7d9de; }
.summary-block:last-child { border-bottom: 0px; }
.summary-content { padding: 28px 0px; }
.summary-price { color: #094bde; font-size: 20px; font-weight: 400; letter-spacing: -1px; margin-bottom: 0px; display: inline-block; float: right; }
.summary-small-text { font-weight: 700; font-size: 12px; color: #8f929a; }
.summary-text { margin-bottom: -10px; }
.summary-title { font-weight: 700; font-size: 14px; color: #1c1e22; }
.summary-head { display: inline-block; width: 120px; }

.widget { margin-bottom: 30px; background-color: #e9ebef; padding: 50px; border-radius: 6px; }
.widget:last-child { border-bottom: 0px; }
.widget-title { color: #094bde; font-size: 16px; font-weight: 700; text-transform: uppercase; margin-bottom: 25px; letter-spacing: 1px; display: table; line-height: 1; }


</style>

<div class="content">
    <form id="frm-booking">
        <div class="container">
            <div class="row mb-3">
                <div class="col-sm-6">
                    <a class="btn btn-sm btn-info" href="<?= $this->session->prev_url ?>">Go back</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                    <div class="box">
                        <h3 class="box-title">Package Tour Checkout </h3>
                        <div class="plan-selection">
                            <div class="plan-data">
                                <label for="question1"><?= $package->name?></label>
                                <p class="plan-text"> <b>Total Pax: </b>
                                <?= $package_pax->pax?> <br>
                                <b>  Hightlights: </b>
                                <?= $package->description?> </p> 
                            </div>
                        </div>
                      
                    </div>
                   
                    <button class="btn btn-lg btn-block" type="submit" style="background-color: #FE9900;"><B style="color:white">CONFIRM BOOKING</B></button>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-12">
                  
                    <div class="widget">
                        <h4 class="widget-title">Payment Summary</h4>
                        <div class="summary-block">
                            <div class="summary-content">
                                <div class="summary-head"><h5 class="summary-title"><?= $user->first_name . ' ' . $user->last_name ?></h5></div>
                                <div class="summary-price"> 
                                </div>
                            </div>
                        </div>
                        <div class="summary-block">
                            <div class="summary-content">
                                <div class="summary-head"><h5 class="summary-title"><?= $package->name?></h5></div>
                                <div class="summary-price">
                                    <p class="summary-text">Php. <?= $package_pax->amount?> </p>
                                </div>
                            </div>
                        </div>
                        <div class="summary-block">
                            <div class="summary-content">
                                <div class="summary-head"><h5 class="summary-title"><?= $package_pax->pax?> pax</h5></div>
                                <div class="summary-price">
                                    <p class="summary-text">Php. <?= $package_pax->amount * $package_pax->pax?> </p>
                                </div>
                            </div>
                        </div>
                        <div class="summary-block">
                            <div class="summary-content">
                               <div class="summary-head"> <h5 class="summary-title">Total</h5></div>
                                <div class="summary-price">
                                    <p class="summary-text">Php. <?= $package_pax->amount * $package_pax->pax?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                    </div>
                </div> 
            </div>
        </div>
    </form>
</div>