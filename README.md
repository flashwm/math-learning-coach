# 数学教练

这是一个给 Codex 使用的数学学习技能，内部技能名为 `math-learning-coach`。

它适合用来讲解数学题、整理解题思路、生成学习笔记，以及制作带步骤图的几何/函数讲义。它的重点不是只给答案，而是用学生能听懂的方式说明为什么这样做。

## 能做什么

- 讲解数学题，默认先给结论，再讲思路和计算。
- 按指定年级或教材限制方法，例如“初中人教版”。
- 初中数学讲解中避免使用向量、点积、叉积、投影公式等超纲表达。
- 几何题优先使用相似、全等、勾股、面积、垂直平分线、折叠对称、坐标差、斜率等方法。
- 需要画图时，优先生成可验证的 SVG / 坐标图，而不是随手画一个大概图。
- 可用于制作每一步都有图和解释的学习卡片或讲义。

## 适合的提问方式

可以这样问 Codex：

```text
用数学教练讲一下这道初中几何题，不能用向量。
```

```text
Use $math-learning-coach to solve this problem step by step.
```

```text
把这道题整理成适合初中生看的讲义，每一步都配图。
```

```text
这题用初中人教版知识讲，不要用高中方法。
```

## 安装方法

把整个 `math-learning-coach` 文件夹复制到 Codex 的技能目录。

Windows 通常是：

```text
C:\Users\你的用户名\.codex\skills\math-learning-coach
```

macOS / Linux 通常是：

```text
~/.codex/skills/math-learning-coach
```

复制完成后，重启 Codex，或者开启一个新线程。

## 目录结构

```text
math-learning-coach/
  SKILL.md
  agents/
    openai.yaml
  README.md
```

## 注意事项

- `SKILL.md` 里的 `name: math-learning-coach` 是技能内部名，建议不要改成中文。
- `agents/openai.yaml` 里的 `display_name: 数学教练` 是界面显示名，可以按喜好修改。
- 这个仓库只包含技能本身，不包含个人记忆、账号配置或历史对话。
