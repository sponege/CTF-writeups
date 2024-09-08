(async () => {
  const sleep = (ms) => new Promise((r) => setTimeout(r, ms * 1000));

  r = /X Axis: ([^\s]*)\n.*: (.*)\n.*\n.*\n.*\n.*\n\s*[0-9]*\s([0-9]*.[0-9]*)/g;
  if (!window["a"]) {
    a = document.body.innerText;
  }
  document.body.innerHTML = "";
  var canvas = document.createElement("canvas");
  canvas.setAttribute("width", window.innerWidth);
  canvas.setAttribute("height", window.innerHeight);
  canvas.setAttribute(
    "style",
    "position: absolute; x:0; y:0; background: white;"
  );
  document.body.appendChild(canvas);

  var ctx = canvas.getContext("2d");
  // ctx.fillRect(10,10,100,100);

  ot = -1;

  (x = window.innerWidth / 2), (y = window.innerHeight / 2);
  for (let [z, dx, dy, t] of a.matchAll(r)) {
    dx = Number(dx);
    dy = Number(dy);

    dx /= 2;
    dx *= -1;
    dy /= 2;

    ctx.beginPath();
    ctx.moveTo(x, y);
    ctx.lineTo(x + dx, y + dy);
    ctx.stroke();

    t = Number(t);
    if (ot != -1) {
      await sleep(ot + t);
      // console.log(ot + Date.now() - t);
    }
    ot = -t;
    x += dx;
    y += dy;
    console.log(x, y, t, z);
  }
})();
