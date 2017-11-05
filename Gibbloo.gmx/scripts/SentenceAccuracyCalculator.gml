//SentenceAccuracyCalculator(sentence, correctSentence)

//returns score, (-oo, -1) fail, (-1, 1) nuetral, (1, oo) pass

var sentence = argument0; //list of objects in order of the sentence they created
var correctSentence = argument1; //list of words in the correct order forming the correct sentence

var score = 0;

score = 0; //want score to be how close sentence is to the correct sentence, plus each words score based on where it is in the sentence, 
            //plus how well each word is placed in the created sentence (should the word xn be behind xn-1 and in front of xn+1)

return score;
