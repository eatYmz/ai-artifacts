# 使用官方的 Node.js 作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 将当前目录中的所有内容复制到工作目录中
COPY . .

# 安装依赖项
RUN npm install

# 设置环境变量（Coolify 会自动注入这些环境变量）
ENV E2B_API_KEY=${E2B_API_KEY}
ENV ANTHROPIC_API_KEY=${ANTHROPIC_API_KEY}

# 暴露应用程序的端口
EXPOSE 3006

# 启动应用程序
CMD ["npm", "run", "dev", "--", "--port", "3006"]
