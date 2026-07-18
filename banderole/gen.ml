open Format

let () = Random.self_init ()

let im fmt x y h d =
  fprintf fmt "\\put(%d,%d){\\includegraphics[height=%dmm]{../images/danseur%d.pdf}}@."
    x y h d


let random_line fmt y minx maxx h n =
  (* on repartit n danseurs entre minx et maxx avec 20% de precision *)
  let dx = (maxx - minx) / (2*n) in
  let percent = 50 * dx / 100 in
  let old = ref 0 in
  (* on place aux abscisses minx + (2i+1)dx pour i de 0 a n-1 *)
  for i = 0 to n-1 do
    let x = minx + (2*i+1)*dx + Random.int (2 * percent) - percent in
    let d = 1 + Random.int 4 in
    let d = if d >= !old then d+1 else d in
    old := d;
    im fmt x y h d
  done

let run_left fmt =
  random_line fmt (-85)  00 370 20 12;
  random_line fmt (-100) 20 330 21 11;
  random_line fmt (-118) 00 320 23 10;
  random_line fmt (-138) 20 310 25 9;
  random_line fmt (-160) 00 330 27 8;
  random_line fmt (-185) 20 305 29 7;
  random_line fmt (-215) 00 320 32 6;
  random_line fmt (-260) 20 300 36 5;
  random_line fmt (-300) 00 320 42 4;
  random_line fmt (-350) 20 310 50 3;
  ()

(*
let () =
  let ch = open_out "left.tex" in
  let fmt = formatter_of_out_channel ch in
  runleft fmt;
  close_out ch
*)

let run_right fmt =
  random_line fmt (-85)  620 970 20 12;
  random_line fmt (-100) 650 950 21 11;
  random_line fmt (-118) 630 970 23 10;
  random_line fmt (-138) 650 950 25 9;
  random_line fmt (-160) 640 970 27 8;
  random_line fmt (-185) 660 950 29 7;
  random_line fmt (-215) 640 970 32 6;
  random_line fmt (-260) 650 950 36 5;
  random_line fmt (-300) 630 970 42 4;
  random_line fmt (-350) 620 950 50 3;
  ()


let () =
  let ch = open_out "right.tex" in
  let fmt = formatter_of_out_channel ch in
  run_right fmt;
  close_out ch
