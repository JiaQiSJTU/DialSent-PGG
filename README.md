# DialSent-PGG

Paper: "Post-Training Dialogue Summarization using Pseudo-Paraphrasing" accepted by Findings of NAACL 2022. 
Enhancing dialogue summarization by post-training with pseudo-paraphrase pairs and prefix-guided generation task.


**Requirements**
* python3.7
* pytorch1.7.0
* transformers 4.7.0


**Post-training and Fine-tuning**

* Replace the original "modeling_bart.py" under "transformers/src/transformers/models/bart" with the "modeling_bart.py" we provided. 

* Download the data and put it into corresponding directories.

* Run the post-training processes with scripts under ./experiment_scripts.
```
bash posttrain_dialsumm_exact.sh
bash posttrain_samsum_exact.sh
```

* Modify MODEL_DIR with the path of post-trained checkpoints of scripts under ./experiment_scripts and run the fine-tuning processes.

``````
bash finetune_dialsumm.sh
bash finetune_samsum.sh
```

This repository is still under construction. More details are coming soon.