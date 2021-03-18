## Image Caption Generator
It is a challenging artificial intelligence problem where a text description must be generated for a given photograph.
It requires both method from field of Computer Vision(CNN) to understand the content of the image and a language model from the field of Natural Language Processing to turn the understanding of image into words in right order.

We have used Flicker8k dataset. This dataset consists of two files :
- Flickr8k_Dataset.zip (1 Gigabyte) An archive of all photographs.
- Flickr8k_text.zip (2.2 Megabytes) An archive of all text descriptions for photographs

## Model Architecture

We have defined  deep learning based “merge-model” for image captioning :

![](/photo/Schematic-of-the-Merge-Model-For-Image-Captioning.webp)




Our model consist of Encoder-Decoder architecture in which Encoder consist of three parts:
- Photo feature extractor - We have used  16-layer VGG pre-trained model to extract the feature of image and removed to last layers to get features in fixed size vector .

- Sequence Processor - This network consist of Word Embedding layer for handling the text input, followed by a long short-term memory (LSTM) recurrent neural network layer. The sequence processor model expects input sequences with a predefined length (34 words) which are fed into an embedding layer that uses a mask to ignore padded values. This is followed by an LSTM layer with 256 memory units.

Decoder: Both the feature extractor and sequence processor outputs a fixed-length vector. These are merged together and processed by a dense layer to make a final prediction. Both the input models(photo feature extractor and sequence processor) produce a 256 element vector and then to a final output dense layer that makes a softmax prediction over the entire output vocabulary for the next word in the sequence.

### Elaborated Architecture 
![](/photo/Plot-of-the-Caption-Generation-Deep-Learning-Model.webp)

## OUTPUT FROM OUR CODE SNIPPET
![](/photo/2.PNG)

![](/photo/3.PNG)

![](/photo/4.PNG)










