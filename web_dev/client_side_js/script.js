console.log("Testing testing 1 2 3");

function headingChanger(){
  console.log("Heading Changer!");
  event.target.style.fontStyle="italic";
}

var heading = document.querySelector("h1");
heading.addEventListener("mouseover", headingChanger);
