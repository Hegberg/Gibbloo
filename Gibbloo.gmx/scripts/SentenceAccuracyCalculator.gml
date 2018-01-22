//SentenceAccuracyCalculator()
//global.selectedWords[0] = 0;
//global.selectedWordsSize = 0;
//global.correctSentence[global.currentSentenceIndex]
//returns score, (-oo, -1) fail, (-1, 1) nuetral, (1, oo) pass

//var correctSentence = argument1; //list of words in the correct order forming the correct sentence

var sentenceScore = 0;

//show_debug_message("Sentence");
//show_debug_message(sentence);

//want score to be how close sentence is to the correct sentence, plus each words score based on where it is in the sentence, 
//plus how well each word is placed in the created sentence (should the word xn be behind xn-1 and in front of xn+1)


var alpha, beta, gamma; //accuracy weight, neighbour weight, position in sentence weight (0-1) (0 <= a,b,g <= 1)
alpha = 0.8;
beta = 0;
gamma = 0.2;
var accuracy;
accuracy = 0;
var neighbour;
neighbour = 0;
var positionValue;
positionValue = 0; //accuracy score, neighbour score, position in sentence score (0-1)
for (i = 0; i < global.selectedWordsSize; i += 1) {
    
    //for direct accuracy
    if (global.selectedWords[i].word == global.correctSentence[global.currentSentenceIndex,i]) {
        accuracy += 1/global.selectedWordsSize;
    }
    
    //neighbour accuarcy
    
    //position accuracy
    if (global.selectedWords[i].placeInSentenceWeight > (1/global.selectedWordsSize)*i && global.selectedWords[i].placeInSentenceWeight < (1/global.selectedWordsSize)*(i+ 1)) {
        positionValue += 1/global.selectedWordsSize;
    }
}

sentenceScore = (alpha * accuracy) + (beta * neighbour) + (gamma * positionValue);

global.selectedWordsSize = 0;
global.currentSentenceIndex += 1;

show_debug_message("SentenceScore");
show_debug_message(sentenceScore);

//need to delete all objects that are created after calculation is done

return sentenceScore;
