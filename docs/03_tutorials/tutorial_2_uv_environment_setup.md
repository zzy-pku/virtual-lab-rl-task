# 教程 2：使用 uv 配置环境（对应 Level 2）

本教程的目标是：

> **不依赖完整 Docker 镜像，而是参照文档自行把 RLinf 任务环境配置出来。**

这是从 Level 1 进入 Level 2 的关键一步。

---

## 1. 这一层和 Level 1 的区别

Level 1 中，你几乎不需要负责环境；
Level 2 中，你必须开始承担：

- 项目克隆
- 依赖安装
- 模型准备
- 路径配置
- 标准训练入口对齐

所以这一步真正训练的是：

> **文档驱动的工程接入能力。**

---

## 2. 先确认你的本机条件

请先检查：

- Python 版本是否满足项目要求；
- 你是否已有 `uv`；
- 是否具备 GPU 驱动和 CUDA 运行条件；
- 是否能正常拉取 GitHub 仓库；
- 是否有足够磁盘空间存模型和环境。

如果你对这些条件没有把握，建议先写一个 `precheck.sh`，逐项检查。

---

## 3. 获取代码

首先克隆 RLinf 仓库：

```bash id="clone_rlinf"
git clone https://github.com/RLinf/RLinf.git
cd RLinf
```

如果你的教学版本有固定分支或本地修改版本，请用教学版要求的仓库地址或分支。

---

## 4. 获取并检查 uv

确认 `uv` 是否可用：

```bash id="check_uv"
uv --version
```

如果没有安装，请先按你所在机器的标准方式安装。

在一些项目里，`uv` 既用于创建虚拟环境，也用于依赖同步。openpi 官方仓库就使用 `uv sync` 作为主要依赖安装方式，因此把 `uv` 作为本任务线的标准环境工具是合理的。

---

## 5. 两种环境配置思路

### 思路 A：严格按 RLinf 文档的 install 脚本完成
RLinf 官方 π0/π0.5 文档给出了项目安装脚本，例如：

```bash id="install_rlinf"
bash requirements/install.sh embodied --model openpi --env maniskill_libero
source .venv/bin/activate
```

如果教学版本要求和官方文档完全一致，请优先按这一方式完成。

### 思路 B：用 uv 管理更轻量的本地开发环境
如果你的教学包已经对依赖做了约束整理，可以改成：

- 使用 `uv venv` 创建环境；
- 使用 `uv pip install` 或 `uv sync` 安装项目依赖；
- 再执行必要的 simulator / benchmark 安装。

这个版本更适合教学中逐步讲清“依赖是怎么来的”。

---

## 6. 环境配完后先做最小检查

在开始训练前，先依次检查：

### 1）Python 与 torch
确认能 import torch 并识别 GPU。

### 2）RLinf 核心依赖
确认 RLinf 关键模块可导入。

### 3）openpi 相关依赖
确认 π0.5 训练链路所需依赖可导入。

### 4）环境依赖
确认你目标 benchmark 的依赖是齐的，例如 LIBERO / ManiSkill 对应 simulator 能正常初始化。

---

## 7. 准备模型

在 RLinf π0/π0.5 任务中，训练前通常需要下载对应预训练模型。你需要：

- 明确你当前目标环境和任务类型；
- 下载对应的 π0.5 SFT 模型；
- 在配置文件中填对模型路径。

这一环节最常见的问题是：

- 路径填错；
- checkpoint 不完整；
- 模型和任务不匹配。

---

## 8. 做一次 smoke test

正式训练前，不要直接跑完整实验。请先做一个最小 smoke test：

- 能 import 关键模块；
- 能加载模型；
- 能启动环境；
- 能进入一次最小 rollout 或最小训练步；
- 不出现显式维度/路径/依赖错误。

如果教学版本还没有 smoke test，请你自己补一个简单脚本或命令列表。

---

## 9. 进入标准训练

当下面四件事都确认之后，再开始正式 Level 2 训练：

- 依赖环境 OK
- benchmark 环境 OK
- π0.5 模型路径 OK
- 配置文件能正确解析

然后运行教学要求的标准训练命令。

---

## 10. Level 2 你必须能说明什么

完成本教程后，你至少应该能回答：

- RLinf 这条任务线需要哪些核心依赖？
- openpi / π0.5 相关依赖是怎么进入环境的？
- benchmark 环境为什么单独需要安装？
- checkpoint 路径为什么会影响训练能否启动？
- 如果训练起不来，你会先查哪里？

---

## 11. 常见错误

### 错误 1：把 Docker 思维直接套到本地环境
Docker 里已经帮你解决了一部分依赖隔离问题；本地环境没有。

### 错误 2：只装 Python 包，不检查 simulator 依赖
许多错误并不是 torch 包没装，而是环境后端没准备好。

### 错误 3：模型下载了，但没在 config 中对齐路径
这是最常见的启动失败来源之一。

---

## 12. 完成本教程的标志

你完成本教程后，应当至少做到：

- 从零在本机创建 RLinf 任务环境；
- 完成 π0.5 模型准备；
- 做一次 smoke test；
- 启动标准训练。

然后你就可以继续进入：

- `tutorial_3_run_first_training.md`
- 为 Level 3 做准备

---

## 官方参考

- RLinf π0 / π0.5 文档：
  https://rlinf.readthedocs.io/en/latest/rst_source/examples/embodied/pi0.html
- openpi 项目主页：
  https://github.com/Physical-Intelligence/openpi
