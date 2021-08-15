wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1uZOhZl3oKXf66DCCZIE2O7Aax3OJzfvl'
unzip all_0729_sd11_lr0.0001_bs2_ga16.zip
mkdir experiments
mkdir experiments/all_0729_sd11_lr0.0001_bs2_ga16
mv all_0729_sd11_lr0.0001_bs2_ga16/* experiments/all_0729_sd11_lr0.0001_bs2_ga16

python -m spacy download en_core_web_sm
python data_analysis.py
python preprocess.py

python train.py -mode demo -cfg eval_load_path=experiments/all_0729_sd11_lr0.0001_bs2_ga16/epoch43_trloss0.56_gpt2/