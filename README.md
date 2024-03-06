## Proses Pengerjaan Level Baru Tutorial 4
Avelia Diva Zahra, 2006596176 <br><br>

Langkah pertama adalah membuat scene baru, di sini saya membuat scene bernama "Level 2". Selanjutnya, ada beberapa node yang saya gunakan ulang dari level satu. Beberapa node tersebut meliputi player, lose area, win area (roket).<br>
Setelah melakukan copy, saya membuat tilemap. Langkah-langkah pembuatannya juga persis dengan tilemap pada latihan. Yang saya ubah hanyalah texture yang dipakai (saya menggunakan texture planet) dan penempatannya di level. <br>
Setelah tilemap sudah jadi, saya berlanjut menempatkan lose area (saat jatuh) dan win area (roket, objektif). Seperti yang sudah dijelaskan sebelumnya, node dari level satu digunakan ulang. Namun, ada sedikit perbedaan. Di win area, signal di level 2 akan mengarahkan pemain ke win screen, sementara signal di level 1 akan mengarahkan pemain ke level 2. Alien akan hilang saat menyentuh roket untuk memberi kesan "sudah masuk ke roket". <br>
Selanjutnya, spawner yang digunakan di level 2 saya copy dari level 1. Saya mengubah obstacle-nya. Di level 2, obstacle yang digunakan adalah "Saw", node rigid body yang cara kerja dan implementasinya mirip PinkFish, namun disesuaikan untuk lingkungan level 2, seperti dirubahnya texture dan bentuk CollisionShape2D.<br>
Obstacle baru juga diimplementasikan di level 2, yaitu "SawHalf" yang harus dilompati oleh pemain. Obstacle ini tertrigger apabila pemain menyentuhnya. Saya mengimplementasikannya menggunakan sprite dan Area2D.<br>
Setelah semua fitur utama selesai, langkah selanjutnya adalah improvisasi. Saya menambahkan sound effect di aksi-aksi tertentu. Seperti melompat, obstacle jatuh ke tanah, dan jatuh ke pemain. Saya menggunakan AudioStreamPlayer2D. Selanjutnya, saya merapikan game over screen dengan menambahkan tombol restart, mengganti latar, serta menambahkan musik. Lalu saya merapikan win screen dengan mengganti latar serta menambahkan musik. Background music juga ditambahkan untuk level 1 dan 2. Selain itu, saya juga menambahkan background image di masing-masing level.

#### Credits
Image : https://www.freepik.com/ <br>
Audio : https://pixabay.com/
