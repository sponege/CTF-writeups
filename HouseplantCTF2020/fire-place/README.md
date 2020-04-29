# Fire/place

![](chall.png)

I immediately looked inside the HTML file. There was some code that was used to draw and plot points on a grid, but that didn't interest me too much. What did interest me is this code:

```javascript
db.collection("board").doc("data")
.onSnapshot(function(doc) {
    drawCanvas(doc.data().dat);
    PIXELARRAY=doc.data().dat;
});
```

It looks like something you would see for Mongo DB. At the top of the file, you can see that it's for something called firebase.

```html
<script>
var firebaseConfig = {
    apiKey: "AIzaSyBo8S7EFbhlgg1YNfGu1nnBX4OBDa4oSrg",
    authDomain: "fireplace-cd2cb.firebaseapp.com",
    projectId: "fireplace-cd2cb",
    storageBucket: "fireplace-cd2cb.appspot.com",
    messagingSenderId: "915286843748",
    appId: "1:915286843748:web:45a3f3438d627e41fb5a71",
    measurementId: "G-3Q2GG4PPNL"
};
firebase.initializeApp(firebaseConfig);
firebase.analytics();
const db = firebase.firestore()
</script>
```

I looked it up, and it's a mobile and web development platform made by Google.

I wanted to see what was coming from the database, so I logged it to the console:

```javascript
db.collection("board").doc("data")
.onSnapshot(function(doc) {
    console.log("Got data:", doc.data())
    drawCanvas(doc.data().dat);
    PIXELARRAY=doc.data().dat;
});
```

![](data.png)

When you look at the data, it's a bunch of pixel data in the form of `rgb(0, 0, 0)`

I wondered if you could see all the docs, but the permission is denied:
```javascript
db.collection("board")
.onSnapshot(function(doc) {
    console.log("Got data:", doc.data())
    drawCanvas(doc.data().dat);
    PIXELARRAY=doc.data().dat;
});
```

![](denied.png)

I wonder if there's a doc called `flag`? Let's test.

```javascript
document.addEventListener("click", findScreenCoords);
db.collection("board").doc("flag")
.onSnapshot(function(doc) {
    console.log("Got data:", doc.data())
    drawCanvas(doc.data().dat);
    PIXELARRAY=doc.data().dat;
});
```

![](flag.png)

Bingo! We have the flag!

Just for fun, I also put a troll in there, too!

![](troll.png)


Flag: `rtcp{d0n't_g1ve_us3rs_db_a((3ss}`
