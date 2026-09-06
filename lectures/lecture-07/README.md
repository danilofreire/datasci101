# Lecture 07: How Machines See and Hear

This lecture explores how AI systems process visual and auditory information. We examine the techniques that enable machines to understand images and audio, and how these different types of data are brought together in modern AI systems.

## Main Ideas

### 1. How Machines "See" Images

- **Pixels as Numbers**: Digital images are grids of pixels, where each pixel contains three values (Red, Green, Blue) from 0-255.
- **Convolutional Neural Networks (CNNs)**: AI learns to recognise objects through a hierarchy of features—from simple edges to complex shapes to whole objects.
- **Feature Hierarchies**: Early layers detect edges and colours; later layers combine these into textures, parts, and finally complete objects.
- **Vision Transformers (ViT)**: A 2020 innovation that treats image patches like tokens, allowing Transformers (the same architecture used in LLMs) to process images.

### 2. How Machines "Hear" Audio

- **Sound as Vibrations**: Audio is converted to waveforms, then transformed into spectrograms—visual representations of sound.
- **Spectrograms**: These "pictures of sound" show pitch on the vertical axis, time on the horizontal axis, and loudness as colour.
- **Whisper**: OpenAI's speech recognition system trained on 680,000 hours of audio across 99 languages.
- **Unified Processing**: Once audio is a spectrogram, the same CNN and Transformer architectures used for images can process it.

### 3. The Big Picture: Multimodal AI

- **Shared Embedding Space**: Text, images, and audio are all converted to high-dimensional vectors (typically 4,096 numbers).
- **CLIP Model**: OpenAI's system trained on 400 million image-text pairs to learn that "dog image" and "dog text" should be close in embedding space.
- **Three-Part Architecture**: Modality encoder (Vision Transformer or Whisper) → Projection layer → LLM backbone (GPT, Gemini, Claude).
- **Multimodal Understanding**: Once in embedding space, the LLM processes all modalities identically.

### 4. Societal Implications

- **Deepfakes and Misinformation**: AI-generated fake videos (Zelenskyy, Taylor Swift) and voice clones used for fraud have already happened.
- **Bias in Vision Systems**: Facial recognition performs differently across skin tones (Gender Shades study).
- **Positive Applications**: Medical imaging, accessibility tools, language translation, and scientific discovery.

## Resources

- [Lecture Slides (HTML)](07-multimodal.html)
- [Lecture Source (QMD)](07-multimodal.qmd)
- [Teachable Machine](https://teachablemachine.withgoogle.com/)
- [Whisper Demo (Hugging Face)](https://huggingface.co/spaces/openai/whisper)
- [Chrome Spectrogram Experiment](https://musiclab.chromeexperiments.com/Spectrogram/)
