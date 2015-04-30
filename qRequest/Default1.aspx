<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Style/style.css" rel="stylesheet" />
    <%--<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>--%>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" />
	
    <link href="Style/temp.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.11.0.min.js"></script>
    <script src="Scripts/jFormslider.js"></script>

    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script>
    $(document).ready(function(){
 
        var options = {
            width: 1100,
            height: 300,
            movement: 'horizontal',
            next_button: true,
            prev_button: false,
            button_placement: 'bottom',
            submit_button: true,
            submit_class: '',
            next_class: 'btn btn-info',
            prev_class: '',
            error_class: 'error',
            input_error_class: '',
            error_element: 'p',
            error_position: 'tooltip',
            texts: {
                next: 'Go',
                prev: 'prev',
                submit: 'submit'
            },
            speed: 1000,
            submit_handler: function () { },
            slide_on_url: false,
        }
 
        $('#slider').jFormslider(options);

      
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

       

        $("#check_move").click(function (e) {
            debugger;
            var vale = $(this).is(":checked");
            if ($(this).is(":checked")) {
                $('#car_move_detail').show();
            }
            else
            {
                $('#car_move_detail').hide();
            }
        });


      

        $(".closeZip").click(function () {
           
            $('#zipPopUp').hide();
        });

 
    });

    $(function () {
        $("#move_date").datepicker({
            numberOfMonths: 2,
            showButtonPanel: true
        });
    });

    function last_slide() {
       // alert("you are going to reach last slide if this function retuned true");
        $('.btn').text('Cal');
        $('#zipPopUp').hide();
        return true;
    }
    function next_on() {
        $('[ajax-url]').show();
        return true;
    }

    function somefunction() {
        debugger;
        var val1 = $("#zipCodeS1").val();
        if (val1 == "") {
           
        }
        else {

            $('#slider').gotoSlide('slider_1')
            return false;
        }
       
    }

 </script>
</head>
<body>
    
   <div class="main">
       <div class="header">
        <div class="inner-wrapper">
            <a href="#" class="logo">Logo</a>
            <p class="phone"><span>Call Us</span>180-1234-777</p>
            <div class="clear"></div>
        </div>
       </div>
    <div class="slider_part">
        <div class="inner-wrapper">
            <div class="steps">
                <img src="Images/loader1.jpg" />
            </div>
    <form id="slider" runat="server">
        <ul>
            <li  data-callafter="last_slide()">

                <div class="form-group">
                    <p>
                    <label class="sr-only" for="exampleInputEmail2">Where are you moving</label>
                    <input type="text" id="zipCodeS1" class="form-control" data-toggle="tooltip"  data-placement="top" required data-msg="Please enter zip code where are you moving" title="Please enter zip code where are you moving" placeholder="Zip Code" >
                        <a class="f2-zip" id="zip-link">
								<span>Zip Help</span>
							</a>
                        </p>
                      <%--<button type="submit" class="btn btn-info" onclick="return somefunction()" >Calculate</button>--%>
                </div>
            </li>

            <li data-id="slider_1">
                <div class="cvr">
                <div class="form-group">
                    <p>
                    <label class="sr-only" for="exampleInputEmail2">Where are you moving</label>
                    <input type="text" id="zipCodeS1" class="form-control" data-toggle="tooltip" data-placement="top" required data-msg="Please enter zip code where are you moving" title="Please enter zip code where are you moving" placeholder="Zip Code">
                        <a class="f2-zip" id="zip-link1">
								<span>Zip Help</span>
							</a>
                        </p>
                </div>
                <div class="form-group">
                    <p>
                        <label class="sr-only" for="exampleInputEmail2">When are you planning to move</label>
                    <input type="text" class="form-control" id="move_date" required data-msg="Please select a move date" title="Please enter zip code where are you moving" placeholder="Select Date" style="width:58%;" required>
                    </p>
                    
                </div>
                <div class="form-group">
                    <p><label class="sr-only" for="exampleInputEmail2">How big is your move</label>
                   <%-- <asp:DropDownList ID="DropDownList1" runat="server" data-msg="Please select the number of rooms you're moving" required>
                    </asp:DropDownList>--%>

                                    <select id="zip_state" class="zipstate">
				<option value="">- Select State -</option>
				<option value="AL">Alabama</option>
				<option value="AK">Alaska</option>
				
				
            </select>
                    </p>
                    
                </div>
                    <div class="form-group">
                    <p class="spl2">
                       <input type="checkbox" id="check_move" class="form-control" data-toggle="tooltip" data-placement="top" title="Enter valid email">
                        <label class="sr-only" for="exampleInputEmail2">I also need a quote to move my car</label>

                    </p>
                        </div>

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
                    <%--<button type="button" class="btn btn-info" onclick="$('#slider').gotoSlide('slider_2')">Calculate</button>--%>
                </div>
                <div class="img_brdr">

                    <img  height="250px" width="250px" src="Images/index.jpg" />
                </div>
                

            </li>
            <li data-id="slider_2">

                <div class="cvr">
                <div class="form-group">
                    <p class="spl"><label class="sr-only" for="exampleInputEmail2">Full Name:</label>
                    <input type="text" id="em1" class="form-control" data-toggle="tooltip" data-placement="top" title="Enter valid email" placeholder="First" style="float:left; margin-left:45px;">
                    <input type="text" id="em1" class="form-control" data-toggle="tooltip" data-placement="top" title="Enter valid email" placeholder="Last"></p>
                    
                </div>
                <div class="form-group">
                    <p><label class="sr-only" for="exampleInputEmail2">Valid Email:</label>
                    <input type="text" id="em1" class="form-control" data-toggle="tooltip" data-placement="top" title="Enter valid email" placeholder="Last" style="margin-left: 46px; width: 49.5%;"></p>
                    
                </div>
                <div class="form-group">
                    <p> <label class="sr-only" for="exampleInputEmail2">Valid Phone:</label>
                    <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Select Date" style="margin-left: 46px; width: 49.5%;"></p>
                   
                </div>
<button type="button" class="btn btn-info" onclick="$('#slider').gotoSlide('slider_2')">Get my quotes</button>
                    </div>
                <div class="map_bdr">
                    <img height="250px" src="Images/images.jpg" />
                </div>


            </li>
            <li data-id="slider_2"></li>
        </ul>
    </form>
            <div class="clear"></div>
            </div>
        </div>
       <div class="footer">
       <div class="inner-wrapper">
           <h1>How it works?</h1>
           <div class="bx1"><p>image</p>
               <a href="#"><span>1.</span>Enter move details</a>
           </div>
           <div class="bx1"><p>image</p>
               <a href="#"><span>1.</span>Enter move details</a>
           </div>
           <div class="bx1"><p>image</p>
               <a href="#"><span>1.</span>Enter move details</a>
           </div>
           <div class="clear"></div>
       </div>
           
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
