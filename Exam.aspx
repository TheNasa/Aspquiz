<%@ Page Title="Exam" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: 20px;
            color: #FF6600;
        }
        .auto-style1 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="560" align="center">
                                       
                    <tr>
                       <td class="style2">Available Tests</td> 
                    </tr>        
                    <tr>
                        <td width="100%" class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td width="100%">
                        
                         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" DataKeyField="ExamID">
                             <ItemTemplate>
                                
                                 <asp:Label ID="ExamIDLabel" runat="server" Text='' Visible="False" />
                                 <br />
                                
                                 <asp:Label ID="SubjectLabel" runat="server" Text='' Visible="False" />
                                 <br />
                              
                                 <asp:Label ID="DescriptionLabel" runat="server" Text='' Visible="False" />
<br />
                                  <ItemTemplate>
                                    <asp:HyperLink
                                            ID="HyperLink1" runat="server" NavigateUrl='<%# "Start.aspx?testid=" + Eval("ExamID") %>'
                                            Text='<%# Eval("Subject") %>'></asp:HyperLink><br />
                                    &nbsp;<asp:Label
                                        ID="Label1" runat="server" CssClass="generaltext" Text='<%# Eval("Description") %>'></asp:Label>&nbsp;<br />
                                    <br />
                                </ItemTemplate>
                                 <br />
                             </ItemTemplate>
                            </asp:DataList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" SelectCommand="SELECT * FROM [Exam]"></asp:SqlDataSource>

                         <%--<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                                DataKeyField="ExamID">
                                <ItemTemplate>
                                    Subject:
                                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                    <br />
                                    Description:&nbsp;<asp:Label
                                        ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
                                    ExamID:
                                    <asp:Label ID="ExamIDLabel" runat="server" Text='<%# Eval("ExamID") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>--%>
                           
                        </td>
                    </tr>                                         
                    <tr>
                        <td width="100%">&nbsp;</td>
                    </tr>                      
                   
                    <tr>
                        <td width="100%">
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                                SelectCommand="SELECT Exam.Subject, StudentExam.DateTimeComplete, StudentExam.Score FROM StudentExam INNER JOIN Exam ON StudentExam.ExamID = Exam.ExamID WHERE (StudentExam.Username = @Username) ORDER BY StudentExam.DateTimeComplete">
                                <SelectParameters>
                                    <asp:SessionParameter Name="Username" SessionField="Username" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>                                         
                    <tr>
                        <td width="100%">&nbsp;</td>
                    </tr>                                       
                            
                </table>
</asp:Content>

