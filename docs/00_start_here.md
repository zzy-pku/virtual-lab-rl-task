# RLinf 任务入口（最短可执行版本）

欢迎进入当前虚拟科研实习室的第一条任务线：**基于 RLinf 的 π0.5 强化学习训练任务族**。

这套最短可执行版本的目标不是一次性教完具身智能，而是帮助你在最短路径上完成以下三件事：

1. 看懂当前任务线到底在做什么；
2. 具备进入 Level 1 / Level 2 所需的最低前置知识；
3. 跑通第一次训练，并学会读日志与做最基本的结果分析。

---

## 这条任务线是什么

当前任务族围绕下面的主线展开：

- **框架**：RLinf
- **模型**：π0.5（pi0.5）
- **典型环境**：LIBERO / ManiSkill 等 RLinf 已支持的标准 benchmark
- **训练目标**：在标准环境中完成 RL fine-tuning，并逐步过渡到更高难度的实验组织与环境整合

你当前只需要先记住一件事：

> 这条任务线不是单纯“跑一个机器人项目”，而是训练你围绕真实 VLA-RL 项目逐步掌握运行、接入、实验组织与框架扩展能力。

---

## 三个等级分别在做什么

### Level 1：完整项目运行与结果观察
提供完整提供的简化版的配置与训练流程和标准脚本。你的任务是跑通训练，查看日志与评测结果，并尝试修改少量参数进行对比分析。
level1代码就在本仓库下。

### Level 2：按文档配置环境并完成标准训练
不再提供开箱即用镜像。你需要参照 RLinf 文档与项目依赖，自行使用 `uv` 或文档要求的方式完成环境配置、模型准备和标准训练。
level2不提供代码，需要自行参照官方文档完成。

### Level 3：RLinf 与 Genesis 仿真环境整合
在前三级基础上，把 RLinf 与 Genesis 仿真环境组合起来，完成新环境整合、接口适配与更高难度训练。
level3示例项目代码在于：https://gitee.com/xujiadong/rlinf-digital-twin(尚未开源)

---

## 你现在应该先看什么

按照下面顺序进行：

1. 阅读 `01_task_map.md`
2. 阅读 `02_prerequisites/02_rl_and_ppo_for_rlinf.md`
3. 阅读 `02_prerequisites/03_vla_pi05_basics.md`
4. 阅读 `04_reading/reading_map.md`
5. 做 `03_tutorials/tutorial_1_docker_quickstart.md`
6. 如果你想进入 Level 2，再做 `03_tutorials/tutorial_2_uv_environment_setup.md`
7. 然后完成 `03_tutorials/tutorial_3_run_first_training.md`

---

## 最低进入要求

在开始之前，你至少应该：

- 会使用 Linux 终端执行基础命令；
- 能看懂 Python 虚拟环境、依赖安装和路径设置；
- 知道什么是模型 checkpoint、配置文件和训练日志；
- 愿意在跑通训练后对结果做简单分析，而不是只停留在“命令成功执行”。

---

## 常见误区

### 误区 1：只要跑通训练就算完成
不是。至少还要能回答：
- 训练目标是什么？
- 日志里的关键指标是什么意思？
- 改了参数后结果为什么会变化？

### 误区 2：先做最难的任务更快
不建议。Level 3 / Level 4 的难点不是代码量，而是你需要独立组织实验和定位问题。

### 误区 3：看不懂所有文档再开始
也不需要。建议采用“先做最小运行，再回看概念”的方式推进。

---

## 参考入口（官方）

- RLinf π0 / π0.5 RL 文档：
  https://rlinf.readthedocs.io/en/latest/rst_source/examples/embodied/pi0.html
- RLinf 项目主页：
  https://github.com/RLinf/RLinf
- openpi 项目主页：
  https://github.com/Physical-Intelligence/openpi
