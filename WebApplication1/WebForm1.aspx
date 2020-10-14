<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        #formDiv{
            padding:300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="formDiv">
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="input1">Text</label>
                    <input runat="server" id="dropDownInput" placeholder="placholder text" class="form-control" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="input1">First</label>
                    <input runat="server" id="input1" placeholder="placholder text" class="form-control" />
                </div>

                <div class="form-group col-md-6">
                    <label for="input2">Text</label>
                    <input runat="server" id="input2" placeholder="placholder text" class="form-control" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="input3">Text</label>
                    <input runat="server" id="input3" placeholder="placholder text" class="form-control" />
                </div>

                <div class="form-group col-md-6">
                    <label for="input4">Text</label>
                    <input runat="server" id="input4" placeholder="placholder text" class="form-control" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
