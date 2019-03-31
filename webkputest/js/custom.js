$(document).ready(function () {
	/* var dir_site = "/kpu2/index.php";
	var dir_site2 = "/kp2";
	var cur_dir = window.location.href;
	if(document.location.hostname=="tes-kpu.rf.gd") {
		var myurl = document.location.protocol + "//" + document.location.hostname + "/index.php";
	}else {
		var myurl = document.location.protocol + "//" + document.location.hostname + "" + dir_site;
	}
	console.log(myurl + "/admin/getsatker/");
	cur_dir = cur_dir.split('/'); */
	
	$("#field-satker").on('change', function() {
		var d =$(this).val();
		$.ajax({
			type: "GET",
			url: myurl + "/admin/getsatker/"+d,
			cache: false,
			success: function (dd) {
				dd=jQuery.parseJSON(dd);
				$("#field-id_satker").val(dd.kode_satker).change();
				$("#field-pemda").val(dd.pemda).change();
			}
		});
	});
	$("#field-nama_satker").on('change', function() {
		if(this.options[this.selectedIndex]) {
			var d =this.options[this.selectedIndex].getAttribute('data-id')
			//alert(d);
			$.ajax({
				type: "GET",
				url: myurl + "/admin/getsatker/"+d,
				cache: false,
				success: function (dd) {
					//console.log(dd);
					dd=jQuery.parseJSON(dd);
					$("#field-kode_satker").val(dd.kode_satker).change();
					$("#field-pem_hibah").val(dd.pemda).change();
				}
			});
		}
	});
	if($("#field-nama_satker").length>0) {
		var kodesatker = $("#field-kode_satker").val();
		console.log(kodesatker);
		if($("#d_nm_satker").length>0 && $("#d_nm_satker").text()!= 'ADMIN') {
			var z = $("#d_nm_satker").text();
			$("#field-nama_satker").val(z);
			$("#field-nama_satker").change();
			$('#field-nama_satker option:not(:selected)').prop('disabled', true);
		}else {
			//
			
			
			if(z!="") {
				$.ajax({
					type: "GET",
					url: myurl + "/admin/getsatkerbykode/"+kodesatker,
					cache: false,
					success: function (dd) {
						console.log(dd);
						dd=jQuery.parseJSON(dd);
						$("#field-nama_satker").val(dd.nama_satker).change();
						$("#field-pem_hibah").val(dd.pemda).change();
					}
				});
			}else {
				$("#field-nama_satker").trigger('change');
			}
			
		}
	}

	if($("#show_data").length>0) {
		$('#show_data').DataTable( {
			"dom": 'Blfrtip',
			//"pageLength": 3,
			"scrollX": true,
			"columnDefs": [ {
				"visible": false
			} ],
			"buttons": [
				'copy', 'csv', 'excel', 'print'
			],
			"language": 
			{
				"sProcessing":   "Sedang memproses...",
				"sLengthMenu":   "Tampilkan _MENU_ entri",
				"sZeroRecords":  "Tidak ditemukan data yang sesuai",
				"sInfo":         "Menampilkan _START_ sampai _END_ dari _TOTAL_ entri",
				"sInfoEmpty":    "Menampilkan 0 sampai 0 dari 0 entri",
				"sInfoFiltered": "(disaring dari _MAX_ entri keseluruhan)",
				"sInfoPostFix":  "",
				"sSearch":       "Cari:",
				"sUrl":          "",
				"oPaginate": {
					"sFirst":    "Pertama",
					"sPrevious": "Sebelumnya",
					"sNext":     "Selanjutnya",
					"sLast":     "Terakhir"
				}
			}
		});
	}
	opt = {
		byRow: true,
		property: 'height',
		target: null,
		remove: false
	}
	$('.equal').matchHeight(opt);
	//
	//
	/*
	if($("#nc_1_field_box").length>0) {
		$("#na_2_field_box").hide();
		$("#nb_2_field_box").hide();
		$("#nc_2_field_box").hide();
		$("#nd_2_field_box").hide();
		$("#na_3_field_box").hide();
		$("#nb_3_field_box").hide();
		$("#nc_3_field_box").hide();
		$("#nd_3_field_box").hide();
		$("#na_4_field_box").hide();
		$("#nb_4_field_box").hide();
		$("#nc_4_field_box").hide();
		$("#nd_4_field_box").hide();
		$("#nd_1_field_box").after("<div id='dv_bt2' class='form-field-box even'><button id='sh_nd'>Tambah</button></div>");
		$("#nd_2_field_box").after("<div id='dv_bt3' class='form-field-box even'><button id='sh_nd2'>Tambah</button></div>");
		$("#nd_3_field_box").after("<div id='dv_bt4' class='form-field-box even'><button id='sh_nd3'>Tambah</button></div>");
		$("#dv_bt3").hide();
		$("#dv_bt4").hide();
	}
	$(".form-div").on('click','#sh_nd',function() {
		$("#na_2_field_box").show();
		$("#nb_2_field_box").show();
		$("#nc_2_field_box").show();
		$("#nd_2_field_box").show();
		$("#dv_bt3").show();
		$("#sh_nd").remove();
	});
	$(".form-div").on('click','#sh_nd2',function() {
		$("#na_3_field_box").show();
		$("#nb_3_field_box").show();
		$("#nc_3_field_box").show();
		$("#nd_3_field_box").show();
		$("#dv_bt4").show();
		$("#sh_nd2").remove();
	});
	$(".form-div").on('click','#sh_nd3',function() {
		$("#na_4_field_box").show();
		$("#nb_4_field_box").show();
		$("#nc_4_field_box").show();
		$("#nd_4_field_box").show();
		$("#sh_nd3").remove();
	});
	*/
	//
	$("#nilai_nphd_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#nd_1_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#tdjppr_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#nbank_field_box").after("<div id='' class='form-field-box even'><b>TRANSFER DARI PEMDA</b></div>");
	$("#tr_all_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#sp2hl16_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#sp2hl17_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#real18_all_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#realopr_field_box").after("<div id='' class='form-field-box even'></div>");
	$("#pem_hibah_field_box").after("<div id='' class='form-field-box even'><b>File Dokumen Yang di Upload</b></div>");
	//
	if($("#tr_1_field_box").length>0) {
		$("#tr_2_field_box").hide();
		$("#tr_3_field_box").hide();
		$("#tr_4_field_box").hide();
		$("#tr_1_field_box").after("<div id='dv_btz1' class='form-field-box even'><button id='sh_tr'>Tambah</button></div>");
		$("#tr_2_field_box").after("<div id='dv_btz2' class='form-field-box odd'><button id='sh_tr2'>Tambah</button></div>");
		$("#tr_3_field_box").after("<div id='dv_btz3' class='form-field-box even'><button id='sh_tr3'>Tambah</button></div>");
		$("#dv_btz2").hide();
		$("#dv_btz3").hide();
	}
	$(".form-div").on('click','#sh_tr',function() {
		$("#tr_2_field_box").show();
		$("#dv_btz1").remove();
		$("#dv_btz2").show();
	});
	$(".form-div").on('click','#sh_tr2',function() {
		$("#tr_3_field_box").show();
		$("#dv_btz2").remove();
		$("#dv_btz3").show();
	});
	$(".form-div").on('click','#sh_tr3',function() {
		$("#tr_4_field_box").show();
		$("#dv_btz3").remove();
	});
	if($("#real18_1_field_box").length>0) {
		$("#real18_2_field_box").hide();
		$("#real18_3_field_box").hide();
		$("#real18_4_field_box").hide();
		$("#real18_5_field_box").hide();
		$("#real18_6_field_box").hide();
		$("#real18_7_field_box").hide();
		$("#real18_8_field_box").hide();
		$("#real18_1_field_box").after("<div id='hr18-1' class='form-field-box even'><button id='sr1'>Tambah</button></div>");
		$("#real18_2_field_box").after("<div id='hr18-2' class='form-field-box odd'><button id='sr2'>Tambah</button></div>");
		$("#real18_3_field_box").after("<div id='hr18-3' class='form-field-box odd'><button id='sr3'>Tambah</button></div>");
		$("#real18_4_field_box").after("<div id='hr18-4' class='form-field-box odd'><button id='sr4'>Tambah</button></div>");
		$("#real18_5_field_box").after("<div id='hr18-5' class='form-field-box odd'><button id='sr5'>Tambah</button></div>");
		$("#real18_6_field_box").after("<div id='hr18-6' class='form-field-box odd'><button id='sr6'>Tambah</button></div>");
		$("#real18_7_field_box").after("<div id='hr18-7' class='form-field-box odd'><button id='sr7'>Tambah</button></div>");
		$("#hr18-2").hide();
		$("#hr18-3").hide();
		$("#hr18-4").hide();
		$("#hr18-5").hide();
		$("#hr18-6").hide();
		$("#hr18-7").hide();
	}
	$(".form-div").on('click','#sr1',function() {
		$("#real18_2_field_box").show();
		$("#hr18-1").remove();
		$("#hr18-2").show();
	});
	$(".form-div").on('click','#sr2',function() {
		$("#real18_3_field_box").show();
		$("#hr18-2").remove();
		$("#hr18-3").show();
	});
	$(".form-div").on('click','#sr3',function() {
		$("#real18_4_field_box").show();
		$("#hr18-3").remove();
		$("#hr18-4").show();
	});
	$(".form-div").on('click','#sr4',function() {
		$("#real18_5_field_box").show();
		$("#hr18-4").remove();
		$("#hr18-5").show();
	});
	$(".form-div").on('click','#sr5',function() {
		$("#real18_6_field_box").show();
		$("#hr18-5").remove();
		$("#hr18-6").show();
	});
	$(".form-div").on('click','#sr6',function() {
		$("#real18_7_field_box").show();
		$("#hr18-6").remove();
		$("#hr18-7").show();
	});
	$(".form-div").on('click','#sr7',function() {
		$("#real18_8_field_box").show();
		$("#hr18-7").remove();
	});
	$("#field-real18_1,#field-real18_2,#field-real18_3,#field-real18_4,#field-real18_5,#field-real18_6,#field-real18_7,#field-real18_8").on('keyup',function(){
		f1 = parseFloat($("#field-real18_1").val() || 0);
		f2 = parseFloat($("#field-real18_2").val() || 0);
		f3 = parseFloat($("#field-real18_3").val() || 0);
		f4 = parseFloat($("#field-real18_4").val() || 0);
		f5 = parseFloat($("#field-real18_5").val() || 0);
		f6 = parseFloat($("#field-real18_6").val() || 0);
		f7 = parseFloat($("#field-real18_7").val() || 0);
		f8 = parseFloat($("#field-real18_8").val() || 0);
		$("#field-real18_all").val(f1+f2+f3+f4+f5+f6+f7+f8).change();
	});
	$("#field-tr_1,#field-tr_2,#field-tr_3,#field-tr_4").on('keyup',function(){
		f1 = parseFloat($("#field-tr_1").val() || 0);
		f2 = parseFloat($("#field-tr_2").val() || 0);
		f3 = parseFloat($("#field-tr_3").val() || 0);
		f4 = parseFloat($("#field-tr_4").val() || 0);
		$("#field-tr_all").val(f1+f2+f3+f4).change();
	});
	$("#field-transfer4,#field-transfer5").on('keyup',function(){
		f1 = parseFloat($("#field-transfer4").val() || 0);
		f2 = parseFloat($("#field-transfer5").val() || 0);
		$("#field-transferjml2").val(f1+f2).change();
	});
	$("#field-transferjml1,#field-transferjml2").change(function(){
		f1 = parseFloat($("#field-transferjml1").val() || 0);
		f2 = parseFloat($("#field-transferjml2").val() || 0);
		$("#field-transfertotal").val(f1+f2);
	});
	$("#field-tr18_1,#field-tr18_2").on('keyup',function(){
		f1 = parseFloat($("#field-tr18_1").val() || 0);
		f2 = parseFloat($("#field-tr18_2").val() || 0);
		$("#field-tr18_all").val(f1+f2);
	});

	if($('.dataZ').length>0) {
		$('.dataZ').floatThead({position: 'absolute',top:80});
	}
	$("tfoot tr th").each(function(i){
		w = $(this).width();
		//console.log(w);
		$(this).css({width:w+11});
	});
	// $("thead tr th").each(function(i){
	// 	w = $(this).width();
	// 	//console.log(w);
	// 	$(this).css({width:w+11});
	// });
	$(window).scroll(function(){
		//th = $("thead").visible();
		$.doTimeout( 'scroll', 250, function(){
			if($(window).scrollTop() + $(window).height() == $(document).height()) {
				$("tfoot").css({display:"",bottom:"",position:""});
			}else {
				$("tfoot").css({display:"block",bottom:"0px",position:"fixed"});
			}
			// t = $(window).scrollTop();
			// console.log(t);
			// if(t==0) {
			// 	$("thead").css({display:"",top:"",position:""});
			// }else {
			// 	$("thead").css({display:"block",top:"80px",position:"fixed"});
			// }
		 });
	 });
});