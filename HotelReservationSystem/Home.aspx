<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Get Started part-->
    <div class="text-center" style="background-color:#82DFC3; padding-top:100px; padding-bottom:100px;">
        <p class="monofont" style="font-weight:bold;">test</p>
        <br />
        <button type="button" class="btn btn-success">Get Started</button>
    </div>
    <!-- image with lorem ipsum-->
    <div class="row">
        <div class="col-4"><!--image--></div>
        <div class="col-8" style="background-color:rgb(232, 233, 215); padding-top:50px; padding-bottom:50px;">
            <h2>Lorem ipsum dolar sit amet</h2>
            <p>Lorem ipsum dolar sit amet, hahahahahaha</p>
        </div>
    </div>
    <!-- Our featured rooms -->
    <h2>Our Featured Rooms</h2>
    <div class="card-group">
        <div class="card text-center">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card text-center">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card text-center">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card text-center">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
    </div>
</asp:Content>