<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html lang="en-us" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        .backgroundimage {
            background: url(Content/Images/fall_image.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        /*input:invalid {
            border-color: red;
        }*/
        .invalidInput{
            border-color: red;
        }
        ::placeholder {
            color: rgba(180,180,180,.5) !important;
        }

        :-ms-input-placeholder {
        }

        ::-ms-input-placholder {
        }

        #formDiv {
            margin: 114px;
            padding: 50px;
            height: auto;
            padding-bottom: 60px;
            background-image: none;
            background-color: rgba(255,255,255,.9);
            box-shadow: 0px 3px 3px rgba(0,0,0,0.15);
        }

        @media (max-width:768px) {
            #formDiv {
                margin: 0px;
                padding: 30px;
                padding-bottom: 100%;
                height: auto;
                background-image: none;
                background-color: rgba(255,255,255,.9);
                box-shadow: 0px 3px 3px rgba(0,0,0,0.15);
            }


            #Success {
                width: 100%;
            }

            #Back {
                width: 100%;
                margin-bottom: 10px;
            }
        }

        .btn-primary:hover {
            color: #fff;
            background-color: #218838;
            border-color: #1e7e34;
        }

        .btn-primary {
            height: 47px;
            width: 155px;
            float: right;
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-secondary:hover {
            color: #fff;
            background-color: #545b62;
            border-color: #4e555b;
        }

        .btn-secondary {
            height: 47px;
            width: 155px;
            float: left;
            background-color: #6c757d;
            border-color: #6c757d;
        }

        select:invalid {
            color: rgba(180,180,180,.5);
        }

        option {
            color: rgba(0, 0, 0, 0.5);
        }

        #MyHeader {
            text-align: center;
        }
        .invalid-tooltip {
            left: 5px;
        }
    </style>
    <script>
        $(document).ready(function () {

            const selectJQ = $("#CarsSelect");
            const inp4JQ = $("#input4Div");
            const inp3JQ = $("#input3Div");

            selectJQ.change(function () {

                if (selectJQ.val() === "saab") {
                    inp4JQ.hide();
                    inp3JQ.removeClass("col-md-6").addClass("col-md-12");
                } else {
                    inp4JQ.show();
                    inp3JQ.removeClass("col-md-12").addClass("col-md-6");
                }

            });

            var forms = $(".needs-validation").get();
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                
                form.addEventListener("submit", function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add("was-validated");
                }, false);
            });

            $(":input[required], select[required]").blur(function () {

            });

            $("#CarsSelect").blur(function () {
                if (selectJQ.val() === "volvo" | selectJQ.val() === "saab" | selectJQ.val() === "fiat" | selectJQ.val() === "audi") {
                    $("#CarsSelect").removeClass("is-invalid");
                    $("#CarsSelect").addClass("is-valid");

                }
                else {
                    $("#CarsSelect").addClass("is-invalid");
                    ("#CarsSelect").removeClass("is-valid");
                }
            });
        });
    </script>
</head>
<body class="backgroundimage">
    <form id="form1" runat="server" class="needs-validation" novalidate>
        <div id="formDiv">
            <asp:Panel runat="server" ID="FirstPagePanel">
                <h1 id="MyHeader">Please start your engines</h1>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="CarsSelect">
                            Choose a Make
                        </label>
                        <select class ="custom-select" required="required" runat="server" id="CarsSelect">
                            <option value="" disabled="disabled" selected="selected" hidden="hidden">placholder text</option>
                            <option value="volvo">Volvo</option>
                            <option value="saab">Saab</option>
                            <option value="fiat">Fiat</option>
                            <option value="audi">Audi</option>
                        </select>
                        <div class ="invalid-feedback">
                            Please select a valid make
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="FirstNameInput">First Name</label>
                        <input required="required" runat="server" id="FirstNameInput" placeholder="placholder text" class="form-control" minlength="5" maxlength="25"/>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="MiddlweNameInput">Middle Name</label>
                        <input runat="server" id="MiddleNameInput" placeholder="placholder text" class="form-control" minlength="5" maxlength="25"/>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="LastNameInput">Last Name</label>
                        <input required="required" runat="server" id="LastNameInput" placeholder="placholder text" class="form-control" minlength="5" maxlength="25"/>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6" id="input3Div">
                        <label for="FavoriteCarInput">Favorite Car</label>
                        <input required="required" runat="server" id="FavoriteCarInput" placeholder="placholder text" class="form-control" minlength="5" maxlength="25"/>
                    </div>

                    <div class="form-group col-md-6" id="input4Div">
                        <label for="NumberOfSeatsInput">Number of Seats</label>
                        <select class="custom-select" required="required" runat="server" id="NumberOfSeatsInput">
                            <option value="" disabled="disabled" selected="selected" hidden="hidden">placholder text</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </div>
                </div>
                <asp:Button CssClass="btn btn-secondary" ID="Back" runat="server" OnClick="Back_Click" Text="Back" />
                <asp:Button CssClass="btn btn-primary" ID="Success" runat="server" OnClick="Success_Click" Text="Next" />
                <asp:Label runat="server" ID="ErrorLabel" Visible="false" />
            </asp:Panel>
            <asp:Panel runat="server" ID="SecondPagePanel" Visible="false">
                <h1>Success!</h1>
            </asp:Panel>
        </div>
    </form>
</body>
</html>