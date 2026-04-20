# RLinf 任务线阅读地图

本文件只做一件事：

> 告诉你在当前 RLinf 任务线中，有哪些需要阅读的论文

目标不是让你一次读完所有论文和文档，而是让阅读和任务推进同步进行。

---

## 一、第一优先级：必须先读

### 1. RLinf 官方 π0 / π0.5 RL 页面
链接：
https://rlinf.readthedocs.io/zh-cn/latest/

为什么必须先读：
- 它直接定义了当前任务线的标准训练链路；
- 包括环境输入、算法、依赖安装、模型准备、训练、评估和可视化；
- 这是所有  Level 2 任务的官方起点。

建议阅读方式：
- 第一次先快速通读，建立整体印象；
- 第二次结合你的实际训练步骤逐段看；
- 不要试图第一次就记住所有配置。


---

### 3. openpi 项目主页
链接：
https://github.com/Physical-Intelligence/openpi

为什么必须读：
- 你训练对象是 π0.5；
- openpi 是理解 π0 / π0.5 工程边界和依赖方式的官方入口；
- 帮你理解模型不是“黑盒名字”，而是一个有具体实现边界的项目。

阅读重点：
- π0 / π0.5 的项目说明；
- 环境管理方式（如 uv）；
- 当前仓库对 π0.5 的支持边界。

---

## 二、第二优先级：按任务需要再读

### 4. benchmark 文档（LIBERO 或 ManiSkill）
如果你当前训练入口主要在 LIBERO，就先看 LIBERO；
如果你当前任务更依赖 ManiSkill，就先看 ManiSkill。

推荐链接：
- LIBERO: https://libero-project.github.io/main.html
- ManiSkill docs: https://maniskill.readthedocs.io/

为什么要读：
- 帮你理解“环境里到底在训练什么”；
- 区分 benchmark、task suite、simulator 和具体任务实例；
- 为 Level 3 的自主任务组织做准备。

阅读重点：
- 任务集合怎么组织；
- 观测与动作大致是什么；
- benchmark 的目标是什么。

---

## 三、第三优先级：准备进 Level 3 / Level 4 时再读

### 5. π0.5 论文
如果你只是做 Level 1 / Level 2，不一定要一开始精读整篇论文。
但当你准备进入 Level 3，或者开始做更深入结果分析时，建议阅读 π0.5 论文，重点理解：

- 模型为何强调 open-world generalization；
- 输入输出组织逻辑；
- 和普通 policy 的差异。

### 6. πRL 或相关 RL fine-tuning 技术报告
当你进入 Level 3 / Level 4，需要更认真理解：
- 为什么对 flow-based VLA 做在线 RL fine-tuning；
- RL fine-tuning 具体改变了什么。

### 7. Genesis 相关材料
只有当你准备进入 Level 4 时，才建议系统阅读 Genesis 文档与环境集成材料。

---

## 四、推荐阅读顺序

如果你是第一次进入任务线，建议严格按下面顺序：

1. RLinf 官方 π0 / π0.5 页面
2. RLinf 项目主页
3. openpi 项目主页
4. benchmark 文档（LIBERO 或 ManiSkill）
5. 再进入 Level 1 或 Level 2 教程
6. 做完第一次训练后，再回读 π0.5 论文与 RL fine-tuning 材料

---

## 五、最低阅读完成标准

当你完成第一轮阅读后，你至少应该能回答：

- RLinf 是做什么的？
- π0.5 在这条任务线里扮演什么角色？
- 训练依赖哪个 benchmark / simulator？
- 当前标准训练链路大致包含哪些步骤？

如果这些问题你还不能回答清楚，请不要急着进入 Level 3。

---

## 六、你现在该做什么

如果你还没开始训练：
- 先读 RLinf 官方 π0 / π0.5 页面
- 再做 Docker quickstart

如果你已经跑通 Level 1：
- 再看一遍 RLinf 官方页面
- 回头补读 benchmark 文档
- 然后开始 Level 2
