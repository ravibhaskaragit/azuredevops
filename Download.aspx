<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="SitefinityWebApp.Download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var max_time = 5;
        var cinterval;
 
        function countdown_timer() {
            // decrease timer
            max_time--;
            document.getElementById('countdown').innerHTML = max_time;

            if (max_time == 0) {
                clearInterval(cinterval);

                window.location.replace(document.getElementById('downloadNow').getAttribute("href"));
            }
        }
        // 1,000 means 1 second.
        cinterval = setInterval('countdown_timer()', 1000);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Your download will start in <span id="countdown">5</span> seconds, <asp:HyperLink ID="downloadNow" runat="server" Text="Download Now" ClientIDMode="Static" /></p>

            Click <a href="/">here</a> to return to the dashboard
        </div>
    </form>
</body>
</html>
