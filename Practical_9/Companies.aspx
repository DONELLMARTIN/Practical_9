<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Companies.aspx.cs"
    Inherits="Practical9.Companies" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Summary</title>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h1>Company Summary</h1>

            <!-- PLACEMENT RECORDS -->
            <div class="section">

                <h2>Student Placement Records</h2>

                <asp:Repeater ID="rptPlacements"
                    runat="server">

                    <HeaderTemplate>
                        <table class="placement-table">
                            <tr>
                                <th>Placement ID</th>
                                <th>Student ID</th>
                                <th>Student Name</th>
                                <th>Company</th>
                                <th>Job Role</th>
                                <th>Package (LPA)</th>
                            </tr>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("PlacementId") %>
                            </td>

                            <td>
                                <%# Eval("StudentId") %>
                            </td>

                            <td>
                                <%# Eval("StudentName") %>
                            </td>

                            <td>
                                <%# Eval("CompanyName") %>
                            </td>

                            <td>
                                <%# Eval("JobRole") %>
                            </td>

                            <td>
                                <%# Eval("PackageLPA", "{0:F2}") %>
                            </td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>

                </asp:Repeater>

            </div>

            <div class="section">

                <h2>Company Details</h2>

                <div class="company-list">

                    <asp:DataList ID="dlCompanies"
                        runat="server"
                        RepeatDirection="Horizontal"
                        RepeatLayout="Flow">

                        <ItemTemplate>

                            <div class="company-card">

                                <h3>
                                    <%# Eval("CompanyName") %>
                                </h3>

                                <p>
                                    <b>Job Role:</b>
                                    <%# Eval("JobRole") %>
                                </p>

                                <p>
                                    <b>Package (LPA):</b>
                                    <%# Eval("PackageLPA", "{0:F2}") %>
                                </p>

                            </div>

                        </ItemTemplate>

                    </asp:DataList>

                </div>

            </div>

            <asp:Label ID="lblMessage"
                runat="server"
                CssClass="message">
            </asp:Label>

            <br />

            <asp:HyperLink ID="lnkBack"
                runat="server"
                NavigateUrl="~/Default.aspx"
                CssClass="back-link"
                Text="Back to Placement Dashboard" />

        </div>

    </form>
</body>
</html>