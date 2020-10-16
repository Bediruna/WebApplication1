<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        /* .form-control {
            background-color: rgba(255, 0, 0, 1);
        }

        }*/
        #cars {
            color: dodgerblue;
        }

            #cars::placeholder {
                color: white !important;
            }

        /*        @media (max-width:600px) {
            #cars::placeholder {
                color: green !important;
            }*/

        #formDiv {
            padding: 300px;
        }

        #success {
            position: fixed;
            height: 47px;
            width: 155px;
            bottom: 18px;
            right: 18px;
        }
    </style>
    <script>
        $(document).ready(function () {

            $("#cars").change(function () {

                if ($("#cars").val() == "saab") {
                    $("#input4Div").hide();
                    $("#input3Div").removeClass("col-md-6").addClass("col-md-12");
                } else {
                    $("#input4Div").show();
                    $("#input3Div").removeClass("col-md-12").addClass("col-md-6");
                }

            });

        });
    </script>
</head>
<body>
    <%--    <form id="form2" runat="server">
        <div id="formDiv">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="test">Hi There</label>
                    <input runat="server" id="Test" placeholder="test" class="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <label for="tester">Hi There</label>
                    <input runat="server" id="tester" placeholder="test" class="form-control" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="tester1">Hi There</label>
                    <input runat="server" id="tester1" placeholder="test" class="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <label for="tester1">Hi There</label>
                    <input runat="server" id="tester2" placeholder="test" class="form-control" />
                </div>
            </div>
        </div>--%>
    <form id="form1" runat="server">
        <div id="formDiv">
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="cars">Choose a car:</label>
                    <select id="cars" name="cars" class="form-control">
                        <option value="volvo">Volvo</option>
                        <option value="saab">Saab</option>
                        <option value="fiat">Fiat</option>
                        <option value="audi">Audi</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="input1">First Name</label>
                    <input runat="server" id="input1" placeholder="placholder text" class="form-control" />
                </div>

                <div class="form-group col-md-6">
                    <label for="input2">Last Name</label>
                    <input runat="server" id="input2" placeholder="placholder text" class="form-control" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6" id="input3Div">
                    <label for="input3">Favorite Car</label>
                    <input runat="server" id="input3" placeholder="placholder text" class="form-control" />
                </div>

                <div class="form-group col-md-6" id="input4Div">
                    <label for="input4">Number of Seats</label>
                    <input runat="server" id="input4" placeholder="placholder text" class="form-control" />
                </div>
            </div>
        </div>
        <div>
            <%--<input type="reset" value="Clear">--%>
           <%-- <button type="button" class="btn btn-outline-primary" id="primary">Primary</button>--%>
            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button>--%>
            <button type="button" class="btn btn-outline-success" id="success">Success</button>
            <%--<button type="button" class="btn btn-outline-danger" id="danger">Danger</button>--%>
        </div>

        <div>

        </div>

    </form>
</body>
</html>