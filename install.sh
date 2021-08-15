pip install torch &>> installoutput.log
pip install spacy &>> installoutput.log
pip install transformers &>> installoutput.log
pip install python-telegram-bot &>> installoutput.log
pip install pyunpack &>> installoutput.log
pip install Flask &>> installoutput.log
pip install flask-ngrok &>> installoutput.log

gdown --id 1uZOhZl3oKXf66DCCZIE2O7Aax3OJzfvl &>> downloadoutput.log
unzip all_0729_sd11_lr0.0001_bs2_ga16.zipl &>> downloadoutput.log
mkdir experiments &>> downloadoutput.log
mkdir experiments/all_0729_sd11_lr0.0001_bs2_ga16 &>> downloadoutput.log
mv all_0729_sd11_lr0.0001_bs2_ga16/* experiments/all_0729_sd11_lr0.0001_bs2_ga16 &>> downloadoutput.log

python -m spacy download en_core_web_sm &>> execoutput.log
python data_analysis.py
python preprocess.py

python train.py -mode demo -cfg eval_load_path=experiments/all_0729_sd11_lr0.0001_bs2_ga16/epoch43_trloss0.56_gpt2/