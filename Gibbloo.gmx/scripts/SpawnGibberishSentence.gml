var currentSentence = argument0;
var sentenceState = argument1; //bad,good,nuetral -> 0,1,2

//global.currentSentenceIndex[0,0] = 0; //used to match up with checking max min sentence values, 1st is sentence, 2nd is option of good bad or nuetral\

//sentence, bad/nuetral/good, word
//global.spokenSentenceIndex[0,0] = 7;

//global.spokenSentence[0,0] = Welcome;
//array_length_2d(array, n);

//sentence 1      //sentence, bad/nuetral/good -> index (sentence * 3), 
//global.spokenSentenceIndex[0,0] = 0;
//global.spokenSentenceIndex[0,1] = 1;
//global.spokenSentenceIndex[0,2] = 2;

//bad/nuetral/good index from spoken sentence index, word
//global.spokenSentence[1,0] = Welcome;

var xCreate = 0;
var yCreate = 0;
var i;
for (i = 0; i < array_length_2d(global.spokenSentence, global.spokenSentenceIndex[currentSentence, sentenceState]); i += 1) {
    instance_create(xCreate,yCreate, global.spokenSentence[global.spokenSentenceIndex[currentSentence, sentenceState],i]);
    //show_debug_message(xCreate);
    //show_debug_message(yCreate);
    //show_debug_message(global.spokenSentence[global.spokenSentenceIndex[currentSentence, sentenceState],i].word);
    xCreate += 200;
    if ((i+1)%4 == 0 && i != 0) {
        yCreate += 300;
        xCreate = 0;
    }
}
