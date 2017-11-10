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

var i;
var alpha, beta, gamma; //accuracy weight, neighbour weight, position in sentence weight (0-1) (0 <= a,b,g <= 1)
var accuracy, neighbour, position; //accuracy score, neighbour score, position in sentence score (0-1)
for (i = 0; i < global.selectedWordsSize; i += 1) {
    
}

global.selectedWordsSize = 0;
global.currentSentenceIndex += 1;

//need to delete all objects that are created after calculation is done

return sentenceScore;
