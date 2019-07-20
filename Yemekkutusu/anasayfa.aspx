<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="Yemekkutusu.anasayfa" %>


<!DOCTYPE html>
<head runat="server">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
    
    
    <style>
        body, html {
          height: 100%;
          margin: 0;
        }
        
        .bg {
          /* The image used */
          background-image: url("images/a.jpg");
          
          /* Full height */
          height: 100%; 
        
          /* Center and scale the image nicely */
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;
          opacity: 1;
        }
        </style>



</head>
<body class="bg">
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
                    </div>
                </nav>
            </div>
            <div class="row justify-content-md-center align-items-center mt-2">
                <div class="card col-md-auto mt-4 text-center ">
                    <div class="card-body">
                        <label for="exampleInputEmail1">Kullanıcı Mail Adresi</label>
                        <asp:TextBox ID="email_TextBox" runat="server" type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email" OnTextChanged="email_TextBox_TextChanged"></asp:TextBox>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        <hr />
                        <label for="exampleInputPassword1">Parola</label>
                        <asp:TextBox ID="parola_TextBox" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="alert alert-danger" role="alert">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </div>
                    <hr/>
                    
                    <asp:Button ID="girisyap_button" runat="server" Text="Giriş Yap"  type="submit" class="btn btn-primary mb-3" OnClick="girisyap_button_Click"/>
                    
                    <button type="submit" class="btn btn-danger mb-3">Parolamı Unuttum !</button>
                    
                    <small id="emailHelp" class="form-text text-muted mb-3">Henüz Üye Değil misin ?</small>

                    <asp:Button ID="uyeol_button" runat="server" Text="Üye Ol" class="btn btn-success mb-3" type="submit" OnClick="uyeol_button_Click"/>
                </div>
            </div>
        </div>



        <!--Bootstrap add project-->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </form>
</body>