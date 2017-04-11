console.log("Testing testing 1 2 3");

function headingChanger(){
  console.log("Heading Changer!");
  event.target.style.fontStyle="italic";
}

function headingRestore(){
  console.log("Heading Restore!");
  event.target.style.fontStyle="initial";
}

var heading = document.querySelector("h1");
heading.addEventListener("mouseover", headingChanger);
heading.addEventListener("mouseout", headingRestore);
