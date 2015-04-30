<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
     <%-- <link rel="stylesheet" href="Style/css/normalize.css" />
        <link rel="stylesheet" href="Style/css/main.css" />
        <link rel="stylesheet" href="Style/css/jquery.steps.css" />
        <script src="Style/lib/modernizr-2.6.2.min.js"></script>
        <script src="Style/lib/jquery-1.9.1.min.js"></script>
        <script src="Style/lib/jquery.cookie-1.3.1.js"></script>
        <script src="Style/build/jquery.steps.js"></script>--%>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" />
    <link href="Style/temp.css" rel="stylesheet" />
    <link href="Style/css/normalize.css" rel="stylesheet" />
    <link href="Style/css/main.css" rel="stylesheet" />
    <link href="Style/css/jquery.steps.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link href="Style/bootstrap.min.css" rel="stylesheet" />

    <script src="Scripts/lib/modernizr-2.6.2.min.js"></script>
    <script src="Scripts/lib/jquery-1.9.1.min.js"></script>
    <script src="Scripts/lib/jquery.cookie-1.3.1.js"></script>
    <script src="Scripts/lib/jquery.steps.js"></script>
     <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <%--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css" />
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"> </script>--%>
    <script>


        $(function () {
            $("#wizard").steps({
                headerTag: "h2",
                bodyTag: "section",
                transitionEffect: "slideLeft",
                onStepChanging: function (event, currentIndex, newIndex) {
                    debugger;
                    $('#zipPopUp').hide();
                    $("#txtZipCode").tooltip('show');

                   //return form.valid();
                //return true;
                },
                transitionEffectSpeed: 1000
            });

            $("#move_date").datepicker({
                numberOfMonths: 2,
                showButtonPanel: true
            });

        });


        $(document).ready(function () {


            debugger;
         


            $('#zipPopUp').hide();
            $('#car_move_detail').hide();


            $("#zip-link").click(function (e) {
              
                e.preventDefault();
                $('#zipPopUp').show();
            });

            $("#zip-link1").click(function (e) {
                e.preventDefault();
                $('#zipPopUp').show();
            });


            $(".closeZip").click(function () {

                $('#zipPopUp').hide();
            });


            $("#check_move").click(function (e) {
              
                var vale = $(this).is(":checked");
                if ($(this).is(":checked")) {
                    $('#car_move_detail').show();
                }
                else {
                    $('#car_move_detail').hide();
                }
            });



            $("#wizard").validate({
                rules: {
                    txtZipCode: {required: true }
                   
                },
                messages: {
                    txtZipCode: "Just check the box<h5 class='text-error'>You aren't going to read the EULA</h5>"
                },
                tooltip_options: {
                    txtZipCode: { trigger: 'focus' }
                   
                },
                submitHandler: function (form) {
                    $("#validity_label").html('<div class="alert alert-success">No errors.  Like a boss.</div>');
                },
                invalidHandler: function (form, validator) {
                    $("#validity_label").html('<div class="alert alert-error">There be ' + validator.numberOfInvalids() + ' error' + (validator.numberOfInvalids() > 1 ? 's' : '') + ' here.  OH NOES!!!!!</div>');
                }
            });


        });

            </script>

</head>
 <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <header>
            <div class="inner-wrapper">
                <a href="#" class="logo">Logo</a>
                <p class="call"><span>Call Us:</span>987-1349-777</p>
                <div class="clear"></div>
            </div>
        </header>



        <div class="content">
            <h1>Basic Demo</h1>

            

            <form id="wizard">
                <h2>First Step</h2>
                <section>
                <div class="first-slider">
                    <div class="inner-wrapper">
                        <h3>Moving Price Calculator</h3>
                        <p>Long Distance Movers, Rates Starting as low as $999</p>
                        <div class="first-slider-lft">
                            <p><label>Where are you moving from?</label><input type="text" name="txtZipCode" title="Bootstrap tooltip Demo" required /><a id="zip-link" >Zipcode</a></p>
                            
                        </div>
                            <div class="first-slider-ryt">
                                <img src="Images/images.jpg" /></div>
                        
                        <div class="clear"></div>
                    </div>
                </div>
                    </section>
                
                    
                

                <h2>Second Step</h2>
                <section>
                <div class="first-slider second-slider">
                    <div class="inner-wrapper">
                        <p class="loader1"><img src="Images/loader1.jpg" /></p>
                        <div class="first-slider-lft">
                            <p><label>Where are you moving to?</label><input type="text" placeholder="zipcode" /><a href="#" id="zip-link1" >Zipcode</a></p>
                            <p><label>When is your move?</label><input type="text" id="move_date" placeholder="zipcode" /></p>
                             <p><label>How large is your move?</label><select><option>Sunday</option>
                               <option>Monday</option>
                              </select></p>
                            <p><label></label><input type="checkbox" id="check_move" /><span>I also need a quote to move my car</span></p>

                                  <div style="" id="car_move_detail" class="move_car">
							<select style="width:148px;" class="form-select select-not-selected" name="make" id="make">
								<option value="" class="select-inactive"> Select Make </option>
																<option value="AC" class="select-active">AC</option>
																
																<option value="BITTER" class="select-active">BITTER</option>
																<option value="BIZZARRINI" class="select-active">BIZZARRINI</option>
																<option value="BMW" class="select-active">BMW</option>
																<option value="BUGATTI" class="select-active">BUGATTI</option>
																<option value="BUICK" class="select-active">BUICK</option>
																<option value="CADILLAC" class="select-active">CADILLAC</option>
																<option value="CATERHAM" class="select-active">CATERHAM</option>
													
															
															</select>
							
							<select disabled="disabled" style="width:148px;" class="form-select select-not-selected" name="model" id="model">
								<option value="" class="select-inactive">Select Model</option>
															</select>

							<select disabled="disabled" style="width:80px;" class="form-select select-not-selected" name="year" id="year">
								<option value="" class="select-inactive">Year</option>
															</select>
						</div>
                            
                        </div>
                            <div class="first-slider-ryt">
                                <img src="Images/images.jpg" /></div>
                        
                        <div class="clear"></div>
                    </div>
                </div>
                    </section>

                <h2>Third Step</h2>
                <section>
                    <p>Morbi ornare tellus at elit ultrices id dignissim lorem elementum. Sed eget nisl at justo condimentum dapibus. Fusce eros justo, 
                        pellentesque non euismod ac, rutrum sed quam. Ut non mi tortor. Vestibulum eleifend varius ullamcorper. Aliquam erat volutpat. 
                        Donec diam massa, porta vel dictum sit amet, iaculis ac massa. Sed elementum dui commodo lectus sollicitudin in auctor mauris 
                        venenatis.</p>
                </section>

                <h2>Forth Step</h2>
                <section>
                    <p>Quisque at sem turpis, id sagittis diam. Suspendisse malesuada eros posuere mauris vehicula vulputate. Aliquam sed sem tortor. 
                        Quisque sed felis ut mauris feugiat iaculis nec ac lectus. Sed consequat vestibulum purus, imperdiet varius est pellentesque vitae. 
                        Suspendisse consequat cursus eros, vitae tempus enim euismod non. Nullam ut commodo tortor.</p>
                </section>
           
        </form>
      </div>
     <div class="footer">
         <div class="inner-wrapper">
             <h2>How it works?</h2>
             <div class="bx">
                 <p>Image</p>
                 <p><span>1</span>Enter Your Details</p>
             </div>
             <div class="bx">
                 <p>Image</p>
                 <p><span>2</span> View estimated cost</p>
             </div>
             <div class="bx">
                 <p>Image</p>
                 <p><span>3</span> Get quotes from movers</p>
             </div>
             <div class="clear"></div>
         </div>
     </div>


     <div id="zipPopUp" class="clsZipPopUp">
    <div class="zip-wrapper-to" id="zip">
    	<div class="ziptop-wrapp">
            <div class="title_zip">ZipCode Helper</div>
            <div id="to-ziphelp-close" class="closeZip">
                <img class="close-img" src="/Images/zip-close.png">
            </div>
        </div>
        <div class="DropDown">
            <select id="zip_state" class="zipstate">
				<option value="">- Select State -</option>
				<option value="AL">Alabama</option>
				<option value="AK">Alaska</option>
				<option value="AZ">Arizona</option>
				<option value="AR">Arkansas</option>
				<option value="CA">California</option>
				<option value="CO">Colorado</option>
			
				
            </select>
        </div>
        <div class="DropDown">
            <select disabled="disabled" id="zip_city" class="zipcity">
                <option value="">- Select City -</option>
            </select>
        </div>
    </div>
      
</div>




    </body>
</html>
