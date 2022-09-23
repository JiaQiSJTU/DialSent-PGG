# DialSent-PGG

Paper: "Post-Training Dialogue Summarization using Pseudo-Paraphrasing" accepted by Findings of NAACL 2022. 
Enhancing dialogue summarization by post-training with pseudo-paraphrase pairs and prefix-guided generation task.


**Requirements**
* python3.7
* pytorch1.7.0
* [transformers 4.7.0](https://drive.google.com/file/d/1BwGKOxM4wVBhejYicFNk435X-F3hKT01/view?usp=sharing)


**Post-training and Fine-tuning**

* Replace the original "modeling_bart.py" under "transformers/src/transformers/models/bart" with the "modeling_bart.py" we provided. 

* Download the [data](https://drive.google.com/file/d/1q9Citb67vEIxmHl12z-jmgEfDi7dlWbg/view?usp=sharing) and put it into corresponding directories.

* Run the post-training processes with scripts under ./experiment_scripts.
```
bash posttrain_dialsumm_exact.sh
bash posttrain_samsum_exact.sh
```

* Modify MODEL_DIR with the path of post-trained checkpoints of scripts under ./experiment_scripts and run the fine-tuning processes.

```
bash finetune_dialsumm.sh
bash finetune_samsum.sh
```

Best results listed in the paper can be downloaded [here](https://drive.google.com/file/d/1_OOKuWUm3ejDYFBPgVz340fT-Hg_OeaN/view?usp=sharing).

