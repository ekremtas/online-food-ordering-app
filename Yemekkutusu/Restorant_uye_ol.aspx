<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restorant_uye_ol.aspx.cs" Inherits="Yemekkutusu.Restorant_uye_ol" %>


<!DOCTYPE html>
<html>
    <head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />

    <script type="text/javascript">
    $(function () {
        $("#txtDate").datepicker({
            showOn: "button",
            buttonImage: "takvim.png",
            buttonImageOnly: true,
            dateFormat: "dd.mm.yy",
            monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
            dayNamesMin: ["Pts", "Sl", "Çrş", "Prş", "Cm", "Cts", "Pzr"]
        });
    });
    </script>
    <style>
        body, html {
          height: 100%;
          margin: 0;
        }
        
        .bg {
          /* The image used */
           background-image: url("images/restorantgiris.jpg");
            /* Full height */
            height: 100%;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-attachment:fixed;
            background-size: cover;
            opacity: 1;
        }
        </style>
</head>
<body class="bg">
    <form id="form1" runat="server">

        <div class="container-fluid">
            <div class="navbar-expand-lg">
                <nav class="navbar navbar-light bg-light">
                    <a class="navbar-brand" href="anasayfa.aspx">
                    <img src="images/logo.svg" width="30" height="30" alt="">
                    Yemek Kutusu
                    </a>
       
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                            <a class="nav-item nav-link"  href="anasayfa.aspx">Ana Sayfa<span class="sr-only">(current)</span></a>
                            <a class="nav-item nav-link" href="uye_ol.aspx">Üye Ol</a>
                            <a class="nav-item nav-link active" href="Restorant_uye_ol.aspx">Restorant Üye Ol</a>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="row justify-content-md-center align-items-center mt-2">
                <div class="card col-md-6 mt-4 text-center ">
        
                    <div class="form-group">

                        <div class="align-text-bottom page-header col-md mt-3">
                            <h3>RESTORANT ÜYE OL</h3>
                        </div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant_Adı:</label>
                            <asp:TextBox ID="restorant_ad_TextBox" required runat="server" type="text" class="form-control col" placeholder="Restorant Adınız."></asp:TextBox>
                        </div>
                        <div class="row mt-3 col-md">
                            <label for="exampleFormControlInput1" class="col-md-3" >E-Posta:</label>
                            <asp:TextBox ID="restorant_email_TextBox" required runat="server" type="email" class="form-control col" placeholder="name@example.com"></asp:TextBox>
                        </div>
                        <div class="col-md" ><hr /></div> 
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Şifre:</label>
                            <asp:TextBox ID="restorant_parola_TextBox" required runat="server" type="password" class="form-control col" placeholder="Şifreniz."></asp:TextBox>
                        </div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Şifre Tekrar:</label>
                            <asp:TextBox ID="restorant_parolatekrar_TextBox" required runat="server" type="password" class="form-control col" placeholder=" Şifre Tekrar..."></asp:TextBox>
                            <hr/>
                        </div>
                        <div class="col-md" ><hr /></div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Sahibi Adı:</label>
                            <asp:TextBox ID="Restorant_Sahibi_Adı_TextBox" required runat="server" type="text" class="form-control col" placeholder="Restorand Sahibi Adı."></asp:TextBox>
                        </div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Sahibi Soyadı:</label>
                            <asp:TextBox ID="Restorant_Sahibi_Soyadi_TextBox1" required runat="server" type="text" class="form-control col" placeholder="Restorand Sahibi Soyadı."></asp:TextBox>
                        </div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Sahibi Telefon:</label>
                            <asp:TextBox ID="Restorant_Sahibi_Telefon_TextBox" required runat="server" type="text" class="form-control col" placeholder="Restorant Sahibi Telefonu"></asp:TextBox>
                        </div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Sorumlu Adı:</label>
                            <asp:TextBox ID="Restorant_Sorumlu_Ad_TextBox" required runat="server" type="text" class="form-control col" placeholder="Adınız"></asp:TextBox>
                        </div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Sorumlu Soyadı:</label>
                            <asp:TextBox ID="Restorant_Sorumlu_Soyad_TextBox" required runat="server" type="text" class="form-control col" placeholder="Soyadı"></asp:TextBox>
                        </div>
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Sorumlu Telefonu:</label>
                            <asp:TextBox ID="Restorant_Sorumlu_Telefon_TextBox" required runat="server" Class="form-control col"></asp:TextBox>
                        </div> 
                        <div class="col-md" ><hr /></div> 
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Telefonu:</label>
                            <asp:TextBox ID="Restorant_Telefon_TextBox" required runat="server" Class="form-control col"></asp:TextBox>
                        </div> 
                        <div class="row mt-3 col-lg">
                            <label for="exampleFormControlInput2" class="col-md-3">Restorant Açık Adresi:</label>
                            <asp:TextBox ID="Restorant_Adres_TextBox" required runat="server"  Class="form-control col"></asp:TextBox>
                        </div>

                        <div class="col-md" ><hr /></div> 
                        <div class="row mt-3 col-lg">
                                    <label for="exampleFormControlInput2" class="col-md-3">İl:</label>
                                    <asp:DropDownList ID="DropDownList1" required runat="server" class="btn btn-light dropdown-toggle col" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>

                        </div>
                        <div class="row mt-3 col-lg">
                                    <label for="exampleFormControlInput2" class="col-md-3">İlçe:</label>
                                    <asp:DropDownList ID="DropDownList2" required runat="server" class="btn btn-light dropdown-toggle col" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>

                        </div>
                        <div class="row mt-3 col-lg">
                                    <label for="exampleFormControlInput2" class="col-md-3">Semt:</label>
                                    <asp:DropDownList ID="DropDownList3" required runat="server" class="btn btn-light dropdown-toggle col" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>

                        </div>
                         <div class="col-md" ><hr /></div> 
                        
                        <asp:Button ID="Button1" runat="server" Text="Kayıt ol" type="submit" class="btn btn-primary mb-3" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>

    </form>
     
    <!--Bootstrap add project-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <!-- Bootstrap DatePicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" type="text/css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js" type="text/javascript"></script>
    </body>
</html>
