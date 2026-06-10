# 数技

这是 `math-learning-coach` 数学学习讲解技能的研发维护项目。

本项目负责沉淀技能源码、讲解规则、题型样例和改动记录；Codex 正式调用的发布版本仍放在：

```text
C:\Users\xiao\.codex\skills\math-learning-coach
```

## 目录结构

```text
E:\CodeX项\数技
  skill-source\
    math-learning-coach\
      SKILL.md
      agents\
        openai.yaml
  docs\
  examples\
  logs\
  scripts\
  CHANGELOG.md
  IDEAS.md
```

## 主要文件

- `skill-source\math-learning-coach\SKILL.md`：技能主体说明，包含触发场景、讲解流程、几何图规范、版式规范等。
- `skill-source\math-learning-coach\agents\openai.yaml`：技能在 Codex 中展示和默认提示相关的配置。
- `docs\`：长期规则沉淀，例如初中数学语言边界、几何图规范、讲义规范、错题归因模板。
- `examples\`：用于测试技能质量的典型题目和期望讲解方式。
- `logs\skill-improvements.md`：连续记录每次技能长期改进的来源、原因、改动文件和同步状态。
- `scripts\publish.ps1`：把本项目源码同步到 Codex 正式技能目录。
- `scripts\sync-from-installed.ps1`：把 Codex 正式技能目录回同步到本项目。
- `使用与维护说明.md`：面向日常使用的总说明，介绍技能能力、使用方法和维护流程。
- `CHANGELOG.md`：每次调整技能后记录改动。
- `IDEAS.md`：后续想加入但暂不执行的功能。

## 维护流程

1. 优先在 `skill-source\math-learning-coach` 中修改技能源码。
2. 把规则、案例、想法分别沉淀到 `docs`、`examples`、`IDEAS.md`。
3. 修改完成后，在 `CHANGELOG.md` 记录本次变化。
4. 验收没有问题后，再同步到正式技能目录。

## 实战改进流程

在数学讲题的新会话里，如果只是要求改当前题的讲法、图或网页讲义，应当立刻修正当前题，不需要进入本项目。

如果用户明确说“以后都这样”“这个要改进技能”“同步到数技项目”，则应当：

1. 先按新规则立刻修正当前题。
2. 同步修改正式技能目录 `C:\Users\xiao\.codex\skills\math-learning-coach`。
3. 同步修改本项目 `E:\CodeX项\数技`。
4. 在 `CHANGELOG.md` 记录版本摘要。
5. 在 `logs\skill-improvements.md` 记录本次改进的详细来源、原因、改动文件和同步状态。

详细规则见 `docs\技能改进同步流程.md`。

## 发布同步

从本项目同步到 Codex 正式技能目录：

```powershell
.\scripts\publish.ps1
```

从正式技能目录回同步到本项目：

```powershell
.\scripts\sync-from-installed.ps1
```

## 验收方式

每次调整技能后，至少用 `examples` 中的题目检查：

- 结论是否先给出。
- 是否严格遵守初中数学语言边界。
- 几何图是否先验证硬约束，再出图。
- 图文布局是否没有遮挡、重叠、标签混乱。
- 讲解是否先讲思路，再讲计算。
