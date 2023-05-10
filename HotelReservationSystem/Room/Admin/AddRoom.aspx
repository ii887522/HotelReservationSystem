<%@ Page Title="Add Room | RTC Hotel" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="HotelReservationSystem.Room.Admin.AddRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script>
    function previewImage() {
      var fileUpload = document.getElementById("RoomImg");
      var imagePreview = document.getElementById("RoomImgPreview");
      if (fileUpload.files && fileUpload.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          imagePreview.src = e.target.result;
        };
        reader.readAsDataURL(fileUpload.files[0]);
      }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="row row-cols-auto">
    <div class="col">
      <asp:LinkButton runat="server" PostBackUrl="RoomList.aspx" CausesValidation="false">
        <span class="bi bi-arrow-left h2"></span>
      </asp:LinkButton>

      <div class="col px-0">
        <h2>Add a New Room</h2>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="card shadow-sm">
      <div class="card-body">
        <!-- Room Type -->
        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Room Type" />
          <span class="text-bold text-danger">*</span>
          <asp:TextBox ID="RoomType" CssClass="form-control" runat="server" CausesValidation="true" />

          <asp:RequiredFieldValidator
            ID="RoomTypeRequiredValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Room type is required"
            ControlToValidate="RoomDescTxt"
            Display="Dynamic"
          />

          <asp:RegularExpressionValidator
            ID="RoomTypeCharacterValidator"
            runat="server"
            CssClass="text-danger"
            ControlToValidate="RoomType"
            ValidationExpression="^.{1,50}$"
            ErrorMessage="Room type cannot be more than 50 characters long."
          />
          <!-- max 50 characters -->
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Room Description" />
          <span class="text-bold text-danger">*</span>
          <asp:TextBox ID="RoomDescTxt" CssClass="form-control" runat="server" CausesValidation="true" />
          <asp:RequiredFieldValidator
            ID="RoomDescRequiredValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Room description is required"
            ControlToValidate="RoomDescTxt"
            Display="Dynamic"
          />

          <asp:RegularExpressionValidator
            ID="RoomDescCharacterValidator"
            CssClass="text-danger"
            runat="server"
            ControlToValidate="RoomDescTxt"
            ValidationExpression="^.{1,500}$"
            ErrorMessage="Room description cannot be more than 500 characters long."
          />
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Number of Rooms" />
          <span class="text-bold text-danger">*</span>
          <asp:TextBox ID="NoRoomsTxt" CssClass="form-control" runat="server" CausesValidation="true" />
          <asp:RequiredFieldValidator
            ID="NoRoomsRequiredValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Number of rooms is required"
            ControlToValidate="NoRoomsTxt"
            Display="Dynamic"
          />

          <asp:RegularExpressionValidator
            ID="NoRoomsFormatValidator"
            CssClass="text-danger"
            runat="server"
            ControlToValidate="NoRoomsTxt"
            ValidationExpression="^(1?[0-9]|20)$" 
            ErrorMessage="Number of rooms must be between 1 and 20"
          />
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Max number of adults" />
          <span class="text-bold text-danger">*</span>
          <asp:TextBox ID="MaxAdultsTxt" CssClass="form-control" runat="server" CausesValidation="true" />
          <asp:RequiredFieldValidator
            ID="MaxAdultsRequiredValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Max number of adults is required"
            ControlToValidate="MaxAdultsTxt"
            Display="Dynamic"
          />

          <asp:RegularExpressionValidator
            ID="MaxAdultsFormatValidator"
            CssClass="text-danger"
            runat="server"
            ControlToValidate="MaxAdultsTxt"
            ValidationExpression="^(1?[0-9]|20)$" 
            ErrorMessage="Max number of adults must be between 1 and 20"
          />
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Max number of adults" />
          <span class="text-bold text-danger">*</span>
          <asp:TextBox ID="MaxChildrenTxt" CssClass="form-control" runat="server" CausesValidation="true" />
          <asp:RequiredFieldValidator
            ID="MaxChildrenRequiredValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Max number of children is required"
            ControlToValidate="MaxChildrenTxt"
            Display="Dynamic"
          />

          <asp:RegularExpressionValidator
            ID="MaxChildrenFormatValidator"
            CssClass="text-danger"
            runat="server"
            ControlToValidate="MaxChildrenTxt"
            ValidationExpression="^(1?[0-9]|20)$" 
            ErrorMessage="Max number of children must be between 1 and 20"
          />
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Room Price (RM)" />
          <span class="text-bold text-danger">*</span>
          <asp:TextBox ID="PriceTxt" CssClass="form-control" runat="server" CausesValidation="true" />
          <asp:RequiredFieldValidator
            ID="PriceRequiredValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Room price is required"
            ControlToValidate="PriceTxt"
            Display="Dynamic"
          />

          <asp:RegularExpressionValidator
            ID="PriceFormatValidator"
            CssClass="text-danger"
            runat="server"
            ControlToValidate="PriceTxt"
            ValidationExpression="^\d+(\.\d{1,2})?$" 
            ErrorMessage="Please enter a valid room price (e.g. 100.00)"
          />

          <asp:RangeValidator
            ID="PriceRangeValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Room price must be between RM50.00 and RM5000.00"
            ControlToValidate="PriceTxt"
            MinimumValue="50"
            MaximumValue="5000"
            Type="Double"
            Display="Dynamic"
          />
        </div>

        <div class="my-3">
          <asp:Label CssClass="form-label" runat="server" Text="Image" />
          <span class="text-bold text-danger">*</span>
          <asp:FileUpload
            ID="RoomImg"
            runat="server"
            onchange="previewImage()"
            CssClass="form-control mt-2"
          />

          <asp:Image
            ID="RoomImgPreview"
            runat="server"
            CssClass="img-thumbnail d-block"
            Width="300"
            Height="300"
            ImageUrl="#"
            CssStyle="display:none;"
          />

          <asp:RequiredFieldValidator
            ID="RoomImgValidator"
            CssClass="text-danger"
            runat="server"
            ErrorMessage="Please select an image file"
            ControlToValidate="RoomImg"
            Display="Dynamic"
          />
        </div>

        <asp:Button
          ID="BtnSubmit"
          runat="server"
          OnClick="BtnSubmit_Click"
          Text="Submit"
        />

        <asp:Button
          ID="BtnReset"
          runat="server"
          Text="Reset"
          OnClick="BtnReset_Click"
        />
      </div>
    </div>
  </div>
</asp:Content>
