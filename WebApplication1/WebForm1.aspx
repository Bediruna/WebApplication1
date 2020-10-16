<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
    #formDiv {
        padding: 200px;
    }

    #success {
        height: 47px;
        width: 155px;
        float: right;
    }

    @media (max-width:768px) {
        #formDiv {
            padding: 50px;
        }

        #success {
            width: 100%;
        }
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
    <form id="form1" runat="server">
        <div id="formDiv">
            <asp:Panel runat="server" ID="FirstPagePanel">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="cars">Choose a car:</label>
                        <select runat="server" id="CarsSelect" name="cars" class="form-control">
                            <option value="">placholder text</option>
                            <option value="volvo">Volvo</option>
                            <option value="saab">Saab</option>
                            <option value="fiat">Fiat</option>
                            <option value="audi">Audi</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="FirstNameInput">First Name</label>
                        <input runat="server" id="FirstNameInput" placeholder="placholder text" class="form-control" />
                    </div>

                    <div class="form-group col-md-6">
                        <label for="LastNameInput">Last Name</label>
                        <input runat="server" id="LastNameInput" placeholder="placholder text" class="form-control" />
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6" id="input3Div">
                        <label for="FavoriteCarInput">Favorite Car</label>
                        <input runat="server" id="FavoriteCarInput" placeholder="placholder text" class="form-control" />
                    </div>

                    <div class="form-group col-md-6" id="input4Div">
                        <label for="NumberOfSeatsInput">Number of Seats</label>
                        <select runat="server" id="NumberOfSeatsSelect" class="form-control">
                            <option value="">placholder text</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </div>
                </div>
                <asp:Button CssClass="btn btn-outline-success" ID="Success" runat="server" OnClick="Success_Click" Text="Success" />
                <asp:Label runat="server" ID="ErrorLabel" Visible="false"/>
            </asp:Panel>
            <asp:Panel runat="server" ID="SecondPagePanel" Visible="false">
                <h1>Success!</h1>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
