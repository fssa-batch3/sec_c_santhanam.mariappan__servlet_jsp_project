<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>upload arts</title>
    <link rel="stylesheet" href="assets/css/upload.css">
</head>
<body>

    <!-- header section -->
    
    <header>

        <img src="../asset/images/new_logo plain.png" width="100px" alt="">

    </header>

    <!-- upload art -->

    <main>
        <div class="upload">
            <div class="upload__bubbles">
                <div class="upload__cloud-explode">
                    <div class="upload__finish">
                        <svg role="img" aria-label="Checkmark in circle" class="upload__check" viewBox="0 0 128 128" width="128" height="128">
                            <g fill="none" stroke="hsl(30,100%,50%)" stroke-width="4" stroke-linecap="round" stroke-linejoin="round">
                                <circle class="upload__check-ring" r="62" cx="64" cy="64" stroke-dasharray="389.56 389.56" stroke-dashoffset="389.56" transform="rotate(-90,64,64)"/>
                                <polyline class="upload__check-line" points="40,64 56,80 88,48" stroke-dasharray="68 68" stroke-dashoffset="68"/>
                            </g>
                        </svg>
                        <p class="upload__feedback"> Your ArtFile has been uploaded successfully!</p>
                      <button class="upload__button" type="button" data-reset onclick="upload()"></button>
                    </div>
                </div>
                <div class="upload__cloud-left"></div>
                <div class="upload__cloud-middle" data-circle></div>
                <div class="upload__cloud-right"></div>
            </div>
            <div aria-hidden="false">
                <div class="upload__progress" data-progress></div>
                <button class="upload__button" type="button" data-upload>Upload</button>
            </div>
        </div>
    </main>
    <script src="assets/js/upload.js">
        
    </script>
</body>
</html>