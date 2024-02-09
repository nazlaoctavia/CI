<?php
error_reporting(0);
	switch ($_GET['p']) {
		case'';
			include 'modular/dashboard.php';
			break;
		case 'dashboard':
			include 'modular/dashboard.php';
			break;
		case 'ubah_password':
			include 'modular/ubah_password.php';
			break;

		case 'persetujuan_kp':
			include 'modular/persetujuan_kp.php';
			break;
		case 'persetujuan_kpterima':
			include 'modular/persetujuan_kpterima.php';
			break;
		case 'persetujuan_kptolak':
			include 'modular/persetujuan_kptolak.php';
			break;

		case 'distribusi_dosbingkp':
			include 'modular/distribusi_dosbingkp.php';
			break;
		case 'dosbing_kp':
			include 'modular/dosbing_kp.php';
			break;
		
		case 'persetujuan_skripsi':
			include 'modular/persetujuan_skripsi.php';
			break;
		case 'persetujuan_skripsiterima':
			include 'modular/persetujuan_skripsiterima.php';
			break;
		case 'persetujuan_skripsitolak':
			include 'modular/persetujuan_skripsitolak.php';
			break;
		
		case 'distribusi_dosbingskripsi':
			include 'modular/distribusi_dosbingskripsi.php';
			break;
		case 'dosbing_skripsi':
			include 'modular/dosbing_skripsi.php';
			break;
			
		case 'cek_kp':
			include 'modular/cek_kp.php';
			break;
		case 'plagiasi_kp':
			include 'modular/plagiasi_kp.php';
			break;
		
		case 'cek_skripsi':
			include 'modular/cek_skripsi.php';
			break;
		case 'plagiasi_skripsi':
			include 'modular/plagiasi_skripsi.php';
			break;

		case 'monitoring_skripsi':
			include 'modular/monitoring_skripsi.php';
			break;
		case 'monitoring_kp':
			include 'modular/monitoring_kp.php';
			break;
		case 'view_data':
			include 'modular/view_data.php';
			break;
		case 'view_data_kp':
			include 'modular/view_data_kp.php';
			break;

		case 'setujui_jadwal':
			include 'modular/setujui_jadwal.php';
			break;
		case 'jadwal_skripsi':
			include 'modular/jadwal_skripsi.php';
			break;
		case 'jadwal_setujui1':
			include 'modular/jadwal_setujui1.php';
			break;

		case 'edit_distribusi':
			include 'modular/edit_distribusi.php';
			break;
	}
?>