# 数技

这是 `math-learning-coach` 数学学习讲解插件的研发维护项目。

Codex 现在只使用插件版：

```text
C:\Users\xiao\plugins\math-learning-coach
```

旧独立技能目录 `C:\Users\xiao\.codex\skills\math-learning-coach` 不再维护，也不再作为入口。

## 目录结构

```text
E:\CodeX项\数技
  plugin-source\
    math-learning-coach\
      .codex-plugin\
        plugin.json
      skills\
        math-learning-coach\
          SKILL.md
          agents\
            openai.yaml
  docs\
  examples\
  logs\
  scripts\
    publish-plugin.ps1
  CHANGELOG.md
  IDEAS.md
  使用与维护说明.md
```

## 主要文件

- `plugin-source\math-learning-coach`：插件源码，唯一正式维护对象。
- `plugin-source\math-learning-coach\skills\math-learning-coach\SKILL.md`：数学讲解技能规则。
- `docs\`：长期规则沉淀，例如初中数学语言边界、几何图规范、讲义规范、错题归因模板。
- `examples\`：用于测试插件质量的典型题型。
- `logs\skill-improvements.md`：连续记录每次长期改进的来源、原因、改动文件和同步状态。
- `scripts\publish-plugin.ps1`：把插件源码发布到 Codex 个人插件目录。
- `使用与维护说明.md`：面向日常使用的总说明。
- `CHANGELOG.md`：版本级摘要。
- `IDEAS.md`：后续想法。

## 维护流程

1. 优先修改 `plugin-source\math-learning-coach`。
2. 把规则、案例、想法分别沉淀到 `docs`、`examples`、`IDEAS.md`。
3. 长期改进必须记录到 `logs\skill-improvements.md`，版本摘要写入 `CHANGELOG.md`。
4. 验证通过后发布并刷新个人插件。

## 实战改进流程

在数学讲题的新会话里，如果只是改当前题的讲法、图或网页讲义，只修正当前题。

如果用户明确说“以后都这样”“这个要改进技能”“同步到数技项目”，则：

1. 先按新规则立刻修正当前题。
2. 修改插件源码和个人插件目录。
3. 更新 `logs\skill-improvements.md` 和 `CHANGELOG.md`。
4. 发布并刷新插件。

详细规则见 `docs\技能改进同步流程.md`。

## 发布同步

从本项目发布到 Codex 个人插件目录：

```powershell
.\scripts\publish-plugin.ps1
```

安装或刷新个人插件：

```powershell
codex plugin add math-learning-coach@personal
```

## 验收方式

每次调整插件后，至少检查：

- 普通讲题是否只触发快速默认规则。
- 初中题是否严格遵守初中数学语言边界。
- 用户要求网页讲义、配图或函数图时，是否启用精确绘图和布局规则。
- 用户要求长期改进时，是否同步插件并写入日志。
- `codex plugin list` 中 `math-learning-coach@personal` 是否为 `installed, enabled`。

