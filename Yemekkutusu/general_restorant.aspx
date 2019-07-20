<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="general_restorant.aspx.cs" Inherits="Yemekkutusu.general_restorant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container-fluid">
            <div class="navbar-expand-md">
                 <nav class="navbar navbar-light bg-light">
                    <a class="navbar-brand" href="anasayfa.aspx">
                    <img src="images/logo.svg" width="30" height="30" alt="">
                    Yemek Kutusu
                    </a>
       
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon" ></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                            <a class="nav-item nav-link active" href="anasayfa.aspx">Ana Sayfa <span class="sr-only">(current)</span></a>
                            <a class="nav-item nav-link" href="uye_ol.aspx">Üye Ol</a>
                            
                            <a class="nav-item nav-link" href="Restorant_uye_ol.aspx">Restorant Üye Ol</a>
                            
                        </div>
                        <div class="navbar-right">
                            <asp:Button ID="Button1" runat="server" class="btn btn-danger" OnClick="Button1_Click" Text="logOut" />
                        </div>
                    </div>
                </nav>
            </div>
            <div class="row justify-content-md-center align-items-center mt-2">
                <div class="card col-md-auto mt-4 text-center ">
                   <h1>REstorant İç sayfası</h1>
                </div>
            </div>
        </div>

    </form>
      <!--Bootstrap add project-->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
</body>
</html>
