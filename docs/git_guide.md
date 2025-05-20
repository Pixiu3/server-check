🧠 Git 提交 GitHub 全流程总结（SSH版）
✅ 一次性准备（只需要做一次）
1. 安装 Git（你的云服务器已装好）
2. 配置 Git 用户信息
git config --global user.name "Pixiu_XD"
git config --global user.email "你的 GitHub 邮箱"
3. 生成 SSH 密钥
ssh-keygen -t ed25519 -C "你的 GitHub 邮箱"
一路回车，会生成：~/.ssh/id_ed25519 和 id_ed25519.pub
4. 添加公钥到 GitHub
cat ~/.ssh/id_ed25519.pub
复制输出，去 GitHub > Settings > SSH and GPG Keys > New SSH Key，粘贴保存
5. 测试连接：
ssh -T git@github.com
看到欢迎语说明成功 ✅

🔁 每次提交项目时（固定流程）
1. 初始化 Git 仓库（仅第一次）
git init
2. 创建远程仓库（在 GitHub 上先建好 repo）
假设你的仓库地址是：
git@github.com:Pixiu3/server-check.git
在本地添加远程地址：
git remote add origin git@github.com:Pixiu3/server-check.git
3. 添加文件并提交（每次都要）
git add .
git commit -m "feat: 说明你这次改动"
4. 设置默认分支（首次）
git branch -M main
5. 推送到 GitHub（每次都要）
git push -u origin main

之后更新只需：
git add .
git commit -m "xxx"
git push

🧩 文件命名建议
文件名	作用
README.md	项目介绍和说明
.gitignore	忽略上传的临时文件（如 log）
check.sh	你的脚本核心内容

💡 推荐 Git 提交格式（语义化提交）
feat: 新功能
fix: 修复问题
docs: 修改文档
refactor: 重构代码
chore: 其他更新
