#环境安装
bash requirements/install.sh embodied --model openpi --env maniskill_libero 

#权重下载
mkdir -p models
hf download RLinf/RLinf-Pi05-LIBERO-SFT   --local-dir models/RLinf-Pi05-LIBERO-SFT