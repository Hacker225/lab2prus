<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lab2.aspx.cs" Inherits="lab2" %>

&nbsp;

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <script type="text/javascript">
    function moveNumbers(num) {
        var txt = document.getElementById("TextBox1").value;
        txt = txt + num;
        document.getElementById("TextBox1").value = txt;
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 60px">
            <asp:Label ID="Label1" runat="server" Text="Input the value again"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server"  Text="1" Width="40px" BackColor="#0066ff" OnClientClick= "moveNumbers(1)" />
        <asp:Button ID="Button2" runat="server"  Text="2" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(2)" />
        <asp:Button ID="Button3" runat="server"  Text="3" Width="40px" BackColor="#0066ff"  OnClientClick="moveNumbers(3)" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonAdd" runat="server"  Text="+" Width="40px" BackColor="#0066ff" OnClick="ButtonAdd_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <br />
          <asp:Button ID="Button4" runat="server"  Text="4" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(4)" />
          <asp:Button ID="Button5" runat="server"  Text="5" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(5)" />
          <asp:Button ID="Button6" runat="server"  Text="6" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(6)" />
             &nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonMin" runat="server" Text="-" Width="40px" BackColor="#0066ff" OnClick="ButtonMin_Click" />
              &nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button7" runat="server"  Text="7" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(7)" />
            <asp:Button ID="Button8" runat="server"  Text="8" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(8)" />
            <asp:Button ID="Button9" runat="server"  Text="9" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(9)" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonMul" runat="server" Text="*" Width="40px" BackColor="#0066ff" OnClick="ButtonMul_Click" />
            <br />
            <asp:Button ID="ButtonZ" runat="server" Text="0" Width="40px" BackColor="#0066ff" OnClientClick="moveNumbers(0)" />
            <asp:Button ID="ButtonDel" runat="server" Text="del" Width="40px" BackColor="#0066ff" OnClick="ButtonDel_Click" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDiv" runat="server" Text="/" Width="40px" BackColor="#0066ff" OnClick="ButtonDiv_Click" />
            <br />
            <br />
            
            <asp:Button ID="ButtonResult" runat="server" Text="=" Width="190px" BackColor="YellowGreen" OnClick="ButtonResult_Click"/>

        
            
            

    
    </div>
        
    </form>
</body>
</html>
