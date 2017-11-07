var selectedObject = argument0;
var selectedObjectPlace = argument1;

global.selectedWords[selectedObjectPlace] = selectedObject;
global.selectedWordsSize += 1;

show_debug_message("Sentence length " );
show_debug_message(selectedObjectPlace);

show_debug_message("Sentence ");
var completedSentence = "";
for (var i = 0; i < global.selectedWordsSize; i += 1) {
    completedSentence += global.selectedWords[i].word;
    completedSentence += " ";
}
show_debug_message(completedSentence);
