var selectedObject = argument0;
var selectedObjectPlace = argument1;

//effectively remove object clicked from list, and rest of list is moved up to fill empty space
var i;
for (i = selectedObjectPlace; i < global.selectedWordsSize - 1; i += 1) {
    global.selectedWords[i] = global.selectedWords[i + 1]; //set object to next object in list
}

global.selectedWordsSize -= 1;
