var selectedObject = argument0;
var selectedObjectPlace = argument1;

show_debug_message(selectedObject.word);
show_debug_message(selectedObjectPlace);

//effectively remove object clicked from list, and rest of list is moved up to fill empty space
var i;
for (i = selectedObjectPlace; i < global.selectedWordsSize - 1; i += 1) {
    global.selectedWords[i] = global.selectedWords[i + 1]; //set object to next object in list
}

global.selectedWordsSize -= 1;

show_debug_message("Sentence ");
var completedSentence = "";
for (var i = 0; i < global.selectedWordsSize; i += 1) {
    completedSentence += global.selectedWords[i].word;
    completedSentence += " ";
}
show_debug_message(completedSentence);
