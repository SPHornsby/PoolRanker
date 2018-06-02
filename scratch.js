
let getChance = (opRating, myRating) => 1 / ( 1 + Math.pow(10, (opRating - myRating) / 400));
let getDelta = (opRating, myRating, win) => Math.round(32 * ( win - getChance(opRating, myRating)));
let getDeltas = (op, me, win) => {
  return {
    opDelta: getDelta(op, me, !win),
    myDelta: getDelta(op, me, win)
  };
}

let player1 = 800;
let player2 = 800;
console.log(getDelta(800,800,1));
console.log(getDelta(816,784,0));
console.log(getDelta(1000,799,1));