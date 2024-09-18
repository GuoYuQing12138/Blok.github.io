<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2024/9/17
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<script>
  // 等待 DOM 加载完成
  document.addEventListener('DOMContentLoaded', () => {
    // 获取表单和响应消息元素
    const feedbackForm = document.getElementById('feedbackForm');
    const responseMessage = document.getElementById('responseMessage');

    // 处理表单提交事件
    feedbackForm.addEventListener('submit', (event) => {
      // 阻止表单默认提交行为
      event.preventDefault();

      // 获取表单数据
      const formData = new FormData(feedbackForm);

      // 模拟表单提交的处理过程
      const name = formData.get('name');
      const email = formData.get('email');
      const message = formData.get('message');

      // 简单验证
      if (name && email && message) {
        // 显示成功消息
        responseMessage.textContent = '留言提交成功！谢谢您的反馈。';
        responseMessage.style.color = '#28a745'; // 绿色
        responseMessage.classList.remove('hidden');
      } else {
        // 显示失败消息
        responseMessage.textContent = '提交失败，请检查您的输入。';
        responseMessage.style.color = '#dc3545'; // 红色
        responseMessage.classList.remove('hidden');
      }

      // 清空表单字段（可选）
      feedbackForm.reset();
    });
  });
</script>

</body>
</html>
