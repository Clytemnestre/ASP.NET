<!-- directives -->
<% @Page Language="C#" %>

<!-- code section -->
<script runat="server">


    protected void celsius2Fahr_Click(object sender, EventArgs e)
    {
        string celsiusStr = tbCelsius.Text;

        int celsius;
        
        try
        {
            celsius = Int32.Parse(celsiusStr);
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + "please enter an integer number" + "');", true);
            return;
        }

        double fahrenheit = celsius * 9 / 5 + 32;

        string fahrenheitStr = fahrenheit.ToString();

        tbFahrenheit.Text = fahrenheitStr;
    }
</script>

<!-- Layout -->
<html>
   <head> 
      <title> Convertor </title> 
   </head>
   
   <body>
      <h3> Celsius to Fahrenheit Converter</h3>
      
      <form runat="server">
        <div>
            <label>Celsius</label><br />
            <asp:TextBox ID="tbCelsius" runat="server"></asp:TextBox>
        </div>
        <div>
            &nbsp
            <asp:Button ID="celsius2Fahr" runat="server" Text="->" OnClick="celsius2Fahr_Click" />
            <asp:Button ID="farh2Celsius" runat="server" Text="<-" />
        </div>
        <div>
            <label>Fahrenheit</label><br />
            <asp:TextBox ID="tbFahrenheit" runat="server"></asp:TextBox>
        </div>      

      </form>
      
   </body>
   
</html>
