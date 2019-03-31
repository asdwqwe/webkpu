<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel='stylesheet' href='<?php echo base_url('css/bootstrap.min.css'); ?>' >
    <link rel="stylesheet" href='<?php echo base_url('css/style1.css');?>'>
    <link rel="icon" href="<?php echo base_url('images/logo-kpu-48.png') ?>" type="image/png" />

    <title>SIMONIKA RA-MAH (Realisasi Anggaran dan Monitoring Hibah)</title>

</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse" role="navigation" id='navbar' style="height:74px;">
        <!-- <div class="container"> -->

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button> -->
                <a class="navbar-brand" href="#"  style="height:100%;color:#fff;">
                <img src="<?php echo base_url('images/logo-kpu-48.png') ?>" alt="">
                    <div id="logo">
                    SIMONIKA RA-MAH
                    <br><span id="side-title">(Realisasi Anggaran dan Monitoring Hibah)</span>
                    </div>
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li style="margin-top: 1%;">
                    <div class="dropdown">
                        <button class="dropbtn"><i class="glyphicon glyphicon-download-alt"></i> Download Materi</button>
                        <div class="dropdown-content">
                        <a target="_blank" href="<?php echo base_url('/materi/1 materi BPK.pdf'); ?>" style="color:#fff;"> Download Materi 1</a>
                        <a target="_blank" href="<?php echo base_url('/materi/3 materi DJP.pptx'); ?>" style="color:#fff;"> Download Materi 2</a>
                        <a target="_blank" href="<?php echo base_url('/materi/4 materi DJPB-edit4.pptx'); ?>" style="color:#fff;"> Download Materi 3</a>
                        <a target="_blank" href="<?php echo base_url('/materi/PRESENTASI keseluruhan.ppt'); ?>" style="color:#fff;"> Download Materi 4</a>
                        <a target="_blank" href="<?php echo base_url('/materi/PRESENTASI PPLN.ppt'); ?>" style="color:#fff;"> Download Materi 5</a>
                        </div>
                    </div>
                    </li>
                    <li style="margin-top: 1%;"><a href="<?php echo site_url('home/login'); ?>" style="color:#fff;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        <!-- </div> -->
        <!-- /.container -->
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-6" id="map">
            </div>
        </div>
        <div class="row" style="margin-bottom:10px;">
            <div class="box" id="data" style="margin-left:5%;margin-right:5%;margin-top:2%;"></div>
        </div>
        <!-- <h4 class="text-center breadcrumb"><a href="<?php echo base_url('/materi'); ?>" >Download Materi</a></h4> -->
        <!-- <a class="btn btn-primary" type="button" href="<?php echo site_url('home/login'); ?>" style="margin-bottom:6px;float:right;"><span class="glyphicon glyphicon-log-in" ></span> Login</a> -->
        <h2 class="text-center breadcrumb">Realisasi Anggaran dan Monitoring Hibah
        <select class="droppbtn" id="tahun">
            <option value="2018">2018</option>
            <option value="2017">2017</option>
        </select>
        RA-MAH
        </h2>
        <div class="row" style="margin-left:5%;margin-right:5%;margin-top:2%;" id="tabelnas">
        <span class="text-center">Last update 13 April 2018 (Sumber data : er-rekon-lk.djpbn.kemenkeu.go.id & spanint.kemenkeu.go.id)</span>
            <table class="table table-bordered table-responsive">
                <thead>
                <th class="text-center">Nilai NPHD 
                <select id="nas">
                <option value="Nasional">Nasional</option>
                    <?php
                        foreach($prov as $p) {
                            echo "<option value='".$p['nama_prov']."'>".$p['nama_prov']."</option>";
                        }
                    ?>
                </select>
                </th>
                <th class="text-center">Total Transfer 2017 <span class='kode-nas'>Nasional</span></th>
                <th class="text-center">Total Transfer 2018 <span class='kode-nas'>Nasional</span></th>
                <th class="text-center">Total Transfer <span class='kode-nas'>Nasional</span></th>
                <th class="text-center">%</th>
                </thead>
                <tr>
                <td class="text-right" id="nphd"><?php echo 'Rp '.number_format($d18['n'], 0, ',', '.'); ?></td>
                <td class="text-right" id="tr17"><?php echo 'Rp '.number_format($d18['t17'], 0, ',', '.'); ?></td>
                <td class="text-right" id="tr18"><?php echo 'Rp '.number_format($d18['t18'], 0, ',', '.'); ?></td>
                <td class="text-right" id="total"><?php echo 'Rp '.number_format($d18['total'], 0, ',', '.'); ?></td>
                <td class="text-center col-md-1" id="persen"><?php echo ''.ceil(($d18['total']/$d18['n'])*100).'%'; ?></td>
                </tr>
            </table>
        </div>
        <div class="row" style="margin-left:5%;margin-right:5%;margin-top:2%;display:none;" id="tabelnas2">
        <span class="text-center">Last update 13 April 2018 (Sumber data : er-rekon-lk.djpbn.kemenkeu.go.id & spanint.kemenkeu.go.id)</span>
            <table class="table table-bordered table-responsive">
                <thead>
                <th class="text-center col-md-2">Nilai NPHD Nasional</th>
                <th class="text-center">SP2HL Pendapatan 2016 Nasional</th>
                <th class="text-center">SP2HL Pendapatan 2017 Nasional</th>
                <th class="text-center">Total SP2HL Pendapatan Nasional</th>
                <th class="text-center col-md-2">(SP2HL Pendapatan / NPHD) %</th>
                <th class="text-center col-md-2">SP4HL 2017</th>
                </thead>
                <tr>
                <td class="text-right" rowspan="3" style="vertical-align: middle;"><?php echo 'Rp '.number_format($d17['n'], 0, ',', '.'); ?></td>
                <td class="text-right"><?php echo 'Rp '.number_format($d17['tp16'], 0, ',', '.'); ?></td>
                <td class="text-right"><?php echo 'Rp '.number_format($d17['tp17'], 0, ',', '.'); ?></td>
                <td class="text-right"><?php echo 'Rp '.number_format($d17['total2'], 0, ',', '.'); ?></td>
                <td class="text-center"><?php echo ''.ceil(($d17['total2']/$d17['n'])*100).'%'; ?></td>
                <td class="text-right" rowspan="3" style="vertical-align: middle;"><?php echo 'Rp '.number_format($d17['tsp4'], 0, ',', '.'); ?></td>
                </tr>
                <tr>
                
                <th class="text-center">SP2HL Belanja 2016 Nasional</th>
                <th class="text-center">SP2HL Belanja 2017 Nasional</th>
                <th class="text-center">Total SP2HL Belanja Nasional</th>
                <th class="text-center">SP2HL (Belanja / Pendapatan) %</th>
                </tr>
                <tr>
                
                <td class="text-right"><?php echo 'Rp '.number_format($d17['t16'], 0, ',', '.'); ?></td>
                <td class="text-right"><?php echo 'Rp '.number_format($d17['t17'], 0, ',', '.'); ?></td>
                <td class="text-right"><?php echo 'Rp '.number_format($d17['total'], 0, ',', '.'); ?></td>
                <td class="text-center"><?php echo ''.ceil(($d17['total']/$d17['total2'])*100).'%'; ?></td>
                </tr>
            </table>
        </div>
    </div>
</body>
<!-- <footer class="container-fluid">
    <div class="text-center py-0">
    RAF versi 1.3
    </div>
</footer> -->
<footer class="site-footer site-bg-dark" style="">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 mt-5">
            <div class="row">
              <div class="col-md-12 ">
                <h4 class="site-heading-2"><p> 
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | RAF versi 1.3
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </h4>
              </div>
       </div> 
          <!-- <div class="card-footer col-md-12 text-center mt-2">
            as
          </div> -->
        </div>
      </div>
    </footer>
<script src="<?php echo base_url('js/jquery.min.js'); ?>"></script>
<script>
    var map;
    function initMap(tahun=2018) {
        //console.log("ok");
        var siteurl = "<?php echo site_url(); ?>";
        var baseurl = "<?php echo base_url(); ?>";
        var tengah = {lat: -1.3893, lng: 116.9213};
        map = new google.maps.Map(document.getElementById('map'), { zoom: 5, center: tengah,
styles:[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#ffcc00"
      }
    ]
  },
  {
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "administrative.neighborhood",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#ffeda1"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
] });
        var image = baseurl+'/images/building-15.svg';
        $.getJSON(siteurl+"/peta/getdata/"+tahun, function(json1) {
            //console.log("ok2");
            $.each(json1, function(key, data) {
                //console.log("ok3");
                if(data.koordinat!="") {
                    var s = data.koordinat.split(',');
                    var latLng = new google.maps.LatLng(s[0], s[1]);
                    var img = image;
                    //console.log(data.kode_satker);
                    //console.log(img);
                    var marker = new google.maps.Marker({
                    position: latLng,icon:img
                    });

                    marker.setMap(map);
                    var isi = "<span>"+data.nama_satker+"</span>";
                    createInfoWindow(marker,isi,data.kode_satker,tahun);
                }
                
            });
        });
        
        var infoWindow = new google.maps.InfoWindow();
        function createInfoWindow(marker, popupContent,kode_satker,tahun) {
            google.maps.event.addListener(marker, 'click', function () {
                infoWindow.setContent(popupContent);
                infoWindow.open(map, this);
                $.ajax({
                    type: "GET",
                    url: siteurl + "/peta/getdetail/"+kode_satker+"/"+tahun,
                    cache: false,
                    success: function (html) {
                        //console.log("okajax");
                        $("#data").html(html);
                        $("html, body").animate({ scrollTop: $(document).height() }, 1000);
                    }
                });
            });
        }
        return map;
    }
    $(document).ready(function () {
        var siteurl = "<?php echo site_url(); ?>";
        var baseurl = "<?php echo base_url(); ?>";
        $("#tahun").change(function(){
            var tahun = $(this).val();
            initMap(tahun);
            tabelnas(tahun);
        });
        $("#nas").change(function(){
            var nama = $(this).val();
            $(".kode-nas").each(function() {
                $(this).html(nama);
            });
            if(nama=="Nasional") {
                window.location.reload(true);
            }else {
                $.ajax({
                    type: "POST",
                    url: siteurl + "/peta/datanas",
                    data: "prov="+nama,
                    cache: false,
                    success: function (html) {
                        data = $.parseJSON(html);
                        //console.log(data);
                        $("#nphd").html(rp(data.nphd));
                        $("#tr17").html(rp(data.tr17));
                        $("#tr18").html(rp(data.tr18));
                        $("#total").html(rp(data.total));
                        $("#persen").html(Math.ceil((data.total/data.nphd)*100)+" %");
                        //console.log(ceil((data.total/data.nphd)*100));
                        detailnas(nama);
                        if(data.koord.koordinat!=="") {
                            var koord = data.koord.koordinat;
                            // console.log(koord);
                            // console.log(map);
                            var z = koord.split(',');
                            var latLng = new google.maps.LatLng(z[0], z[1]);
                            map.panTo(latLng);
                            map.setZoom(8);
                        }
                    }
                });
            }
            
        });
        function detailnas(prov) {
            console.log("asd");
            $.ajax({
                type: "POST",
                url: siteurl + "/peta/detailnas",
                data: "prov="+prov,
                cache: false,
                success: function (html) {
                    $("#data").html(html);
                    $("html, body").animate({ scrollTop: $('#data').offset().top }, 1000);
                }
            });
        }
        function tabelnas(tahun) {
            if(tahun==2018) {
                $("#tabelnas").show();
                $("#tabelnas2").hide();
            }else {
                $("#tabelnas2").show();
                $("#tabelnas").hide();
            }
        }
        function rp(nStr)
        {
            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + '.' + '$2');
            }
            return "Rp "+x1 + x2;
        }
    });
</script>
<!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmolh0KEmXHs6-zhaJGP-mMPG6JUcanUc&callback=initMap&language=id"> </script> -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmolh0KEmXHs6-zhaJGP-mMPG6JUcanUc&callback=initMap&language=id&center=-0.6067213091588196,122.32555423628864&zoom=4&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0x1d2c4d&style=element:labels%7Cvisibility:off&style=element:labels.text.fill%7Ccolor:0x8ec3b9&style=element:labels.text.stroke%7Ccolor:0x1a3646&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0x4b6878&style=feature:administrative.land_parcel%7Cvisibility:off&style=feature:administrative.land_parcel%7Celement:labels.text.fill%7Ccolor:0x64779e&style=feature:administrative.neighborhood%7Cvisibility:off&style=feature:administrative.province%7Celement:geometry.stroke%7Ccolor:0x4b6878&style=feature:landscape.man_made%7Celement:geometry.stroke%7Ccolor:0x334e87&style=feature:landscape.natural%7Celement:geometry%7Ccolor:0x023e58&style=feature:poi%7Celement:geometry%7Ccolor:0x283d6a&style=feature:poi%7Celement:labels.text.fill%7Ccolor:0x6f9ba5&style=feature:poi%7Celement:labels.text.stroke%7Ccolor:0x1d2c4d&style=feature:poi.park%7Celement:geometry.fill%7Ccolor:0x023e58&style=feature:poi.park%7Celement:labels.text.fill%7Ccolor:0x3C7680&style=feature:road%7Celement:geometry%7Ccolor:0x304a7d&style=feature:road%7Celement:labels.text.fill%7Ccolor:0x98a5be&style=feature:road%7Celement:labels.text.stroke%7Ccolor:0x1d2c4d&style=feature:road.highway%7Celement:geometry%7Ccolor:0x2c6675&style=feature:road.highway%7Celement:geometry.stroke%7Ccolor:0x255763&style=feature:road.highway%7Celement:labels.text.fill%7Ccolor:0xb0d5ce&style=feature:road.highway%7Celement:labels.text.stroke%7Ccolor:0x023e58&style=feature:transit%7Celement:labels.text.fill%7Ccolor:0x98a5be&style=feature:transit%7Celement:labels.text.stroke%7Ccolor:0x1d2c4d&style=feature:transit.line%7Celement:geometry.fill%7Ccolor:0x283d6a&style=feature:transit.station%7Celement:geometry%7Ccolor:0x3a4762&style=feature:water%7Celement:geometry%7Ccolor:0x0e1626&style=feature:water%7Celement:labels.text.fill%7Ccolor:0x4e6d70&size=480x360"></script>
</html>