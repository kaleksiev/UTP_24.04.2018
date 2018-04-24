<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="pages_news_News" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">News
                   
                    <small><%=DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss") %></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Blog Home Two</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="row">
                    <div class="col-md-1 text-center">
                        <p>
                            <i class="fa fa-camera fa-4x"></i>
                        </p>
                        <p><%# Eval("CreateDate") %></p>
                    </div>
                    <div class="col-md-5">
                        <a href="NewsArticle.aspx">
                            <img class="img-responsive img-hover" src='<%# Eval("Image") %>' alt="" runat="server" />
                        </a>
                    </div>
                    <div class="col-md-6">
                        <h3>
                            <a href="NewsArticle.aspx"><%# Eval("Title") %></a>
                        </h3>
                        <p>
                            by <a href="#"><%# Eval("Author") %></a>
                        </p>
                        <p><%# ParagraphIfData(Eval("Content").ToString()) + "..." %></p>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="Button1_Click" CommandArgument='<%# Eval("ID") %>' runat="server" Text="Read More" />

                    </div>
                </div>
                <!-- /.row -->

                <hr />
            </ItemTemplate>
        </asp:ListView>

        <asp:DataPager ID="DP_News" runat="server" PagedControlID="ListView1" PageSize="3">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="false" PreviousPageText="Предишна" ShowFirstPageButton="true" FirstPageText="Първа" ButtonCssClass="previous" />
                <asp:NumericPagerField ButtonType="Link" ButtonCount="10" NumericButtonCssClass="pagination" />
                <asp:NextPreviousPagerField ButtonType="Link" ShowPreviousPageButton="false" NextPageText="Следваща" ShowLastPageButton="true" LastPageText="Последна" ButtonCssClass="next" />
            </Fields>
        </asp:DataPager>

        <!-- Blog Post Row -->
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([Title], [Author], [Content], [CreateDate], [Image]) VALUES (@Title, @Author, @Content, @CreateDate, @Image)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [Title] = @Title, [Author] = @Author, [Content] = @Content, [CreateDate] = @CreateDate, [Image] = @Image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                <asp:Parameter Name="Author" Type="String"></asp:Parameter>
                <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                <asp:Parameter Name="CreateDate" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="Image" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                <asp:Parameter Name="Author" Type="String"></asp:Parameter>
                <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                <asp:Parameter Name="CreateDate" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="Image" Type="String"></asp:Parameter>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>





        <hr />
    </div>
    <!-- /.container -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <my:Footer ID="Footer" runat="server" />
</asp:Content>

