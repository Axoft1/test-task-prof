<template>
    <div class="userWork">
        <div class="userWork__heder">
            <img src="../../assets/logo.png" alt="">
        </div>
        <div class="userWork__list">
            <BeginWork/>  
            <AlertWork/> 
            <TrainingWork/>         
            <ProgressWork/>          
        </div>
    </div>
</template>
<script>
import BeginWork from './BeginWork.vue'
import AlertWork from './AlertWork.vue'
import TrainingWork from './TrainingWork.vue'
import ProgressWork from './ProgressWork.vue'
export default {
    name: 'UserWork', 
    components:{
        BeginWork, AlertWork, TrainingWork, ProgressWork
    } 
}
</script>
<style scoped>
.userWork {
    width: 66%;
}
.userWork__heder{
    display: flex;
    justify-content: end;
    margin: 5px;
}
.userWork__heder img{
    cursor: pointer;
}
.userWork__list{
    display: flex;
    flex-wrap: wrap;
    margin:  65px 0px 0px 70px;
}
</style>