<template>
  <div class="wrapper">
    <UserPanel />
    <UserWork />
  </div>
</template>

<script>
import UserPanel from './UserPanel/UserPanel.vue';
import UserWork from './UserWork/UserWork.vue';
export default {
  components: {
    UserPanel, UserWork
  },  
  name: 'PersonalAccount',
  props: {
    msg: String
  }
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
