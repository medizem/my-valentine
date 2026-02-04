<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Will You Be My Valentine?</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background-color: #ffe4e1;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }

        h1 { color: #d63384; font-size: 2rem; }

        .buttons {
            margin-top: 20px;
            display: flex;
            gap: 10px;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        button {
            padding: 10px 25px;
            font-size: 1.2rem;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        #yesBtn { background-color: #ff4d6d; color: white; }

        #noBtn { background-color: #adb5bd; color: white; }

        img {
            width: 200px;
            margin-bottom: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <img id="mainGif" src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExOHpueGZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4JmVwPXYxX2ludGVybmFsX2dpZl9ieV9pZCZjdD1n/c76IJLufpNwSULPk2m/giphy.gif" alt="Cute Cat">
        
        <h1 id="question">Nirali, will you be my valentine? ❤️</h1>

        <div class="buttons">
            <button id="yesBtn" onclick="celebrate()">Yes</button>
            <button id="noBtn" onclick="makeYesBigger()">No</button>
        </div>
    </div>

    <script>
        let yesFontSize = 1.2;
        let noTexts = [
            "Are you sure?", 
            "Really??", 
            "Think again!", 
            "Last chance!", 
            "Pleeaseee 🥺", 
            "You're breaking my heart!",
            "I'm gonna cry..."
        ];
        let textIndex = 0;

        function makeYesBigger() {
            const yesBtn = document.getElementById('yesBtn');
            const noBtn = document.getElementById('noBtn');
            
            // كبر زر Yes
            yesFontSize += 0.5;
            yesBtn.style.fontSize = yesFontSize + "rem";
            yesBtn.style.padding = (yesFontSize * 10) + "px " + (yesFontSize * 20) + "px";

            // بدل النص ف زر No
            noBtn.innerText = noTexts[textIndex];
            textIndex = (textIndex + 1) % noTexts.length;
        }

        function celebrate() {
            document.getElementById('question').innerText = "YAY! I Knew it! 🎉❤️";
            document.getElementById('mainGif').src = "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExOHpueGZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4bmZ4JmVwPXYxX2ludGVybmFsX2dpZl9ieV9pZCZjdD1n/UMfM9VfO5i9q/giphy.gif";
            document.querySelector('.buttons').style.display = 'none';
        }
    </script>
</body>
</html>
