<template>
  <div class="notification-tab-container">
    <el-tabs v-model="activeName" @tab-click="changeTab">
      <el-tab-pane label="邮件" name="email"></el-tab-pane>
      <el-tab-pane label="Slack" name="slack"></el-tab-pane>
      <el-tab-pane label="Webhook" name="webhook"></el-tab-pane>
    </el-tabs>
    <pre class="variable-info"><code>
      通知模板支持的变量

      TaskId 任务ID
      TaskName 任务名称
      Status 任务执行结果状态
      Result 任务执行输出
    </code></pre>
  </div>
</template>

<script>
export default {
  name: 'notification-tab',
  data() {
    return {
      activeName: 'email' // 设置默认值
    }
  },
  created() {
    const segments = this.$route.path.split('/')
    if (segments.length === 4) {
      this.activeName = segments[3]
    }
  },
  methods: {
    changeTab(item) {
      this.$router.push(`/system/notification/${item.name}`)
    }
  }
}
</script>

<style scoped>
.notification-tab-container {
  padding: 20px;
}
.variable-info {
  background: #f5f5f5;
  padding: 15px;
  border-radius: 4px;
  margin-top: 20px;
}
</style>