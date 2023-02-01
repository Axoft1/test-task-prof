<template>
  <div class="wrapper">
    <UserPanel :user="user" />
    <UserWork :user="user[2]"/>
  </div>
</template>

<script>
import UserPanel from './UserPanel/UserPanel.vue';
import UserWork from './UserWork/UserWork.vue';
export default {
  components: {
    UserPanel, UserWork
  },
  data() {
    return {
      user: [
        {
          id: 1,
          name: 'Имя',
          surname: 'Фамилия',
          patronymic: 'Отчество',
          date: 'хх.хх.хххх',
          service: 'ГОКИ 0000',
          status: 'Проходчик lV разряда'
        },

        {
          befing: 100,
          exam: 100,
          test: 12,
          ctrtifical: 3,
        },
        {
          alert: 2,
        }
      ]
    }
  },
}
</script>
<style>
.wrapper {
  display: flex;
  justify-content: space-between;
  width: 890px;
  height: 500px;
  margin: auto;
  margin-top: 5vh;
  background-color: rgba(0, 32, 102, 0.541);
}
</style>
