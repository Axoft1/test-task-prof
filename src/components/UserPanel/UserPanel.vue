<template>
    <div class="userPanel">
        <header class="userPanel__header">
            <div class="dateInfo">
                <p>xx.xx.xxxx</p>
                <p>xx:xx</p>
            </div>
            <button class="btn">
                <p>Выход</p>
                <img src="../../assets/exit.svg" alt="">
            </button>
        </header>
        <div class="userPanel__theme">
            <input type="checkbox" id="toggle" class="checkbox" checked />
            <span aria-hidden="true" class="switch"></span>
            <img @click="darck" src="../../assets/sun.svg" alt="" v-bind:class="isDarck">
        </div>
        <div class="userPanel__item">
            <div class="userItem">
                <h4>{{ user[0].surname }} {{ user[0].name }} {{ user[0].patronymic }}</h4>
                <h4>{{ user[0].date }}</h4>
                <p>Таб.№ {{ user[0].service }}</p>
                <p>{{ user[0].status }}</p>
            </div>
            <div class="userProgress">
                <UserBefing :befing="user[1].befing" />
                <UserExam :exam="user[1].exam" />
                <UserTest :test="user[1].test" />
                <UserCertification :ctrtifical="user[1].ctrtifical" />
            </div>
        </div>
    </div>
</template>
<script>
// VeProgress - progress animation library
import { VeProgress } from "vue-ellipse-progress";
import UserBefing from './UserBefing.vue';
import UserExam from './UserExam';
import UserTest from './UserTest';
import UserCertification from './UserCertification';
export default {
    name: 'UserPanel',
    components: { VeProgress, UserBefing, UserExam, UserTest, UserCertification },
    props: {
        user: {}
    },
    data() {
        return {
            isDarck: 'deactive',
        }
    },
    methods: {
        //darck - theme change button
        darck() {
            this.isDarck == 'deactive' ? this.isDarck = 'active' : this.isDarck = 'deactive'
        }
    }
}
</script>
<style scoped>
.userPanel {
    width: 34%;
    border-radius: 0 10px 10px 0;
    background-color: rgba(0, 0, 0, 0.432);
    box-shadow: 1px 0 3px rgba(0, 32, 102, 0.637);
}

.userPanel__header {
    display: flex;
    justify-content: space-between;
}

.btn {
    display: flex;
    border: none;
    background: none;
    margin: 15px 10px 0 0;
    cursor: pointer;
    color: rgba(255, 255, 255, 0.877);
}

.btn img {
    margin: -5px 0px 0px 11px;
    transform: rotate(180deg);
}

.dateInfo {
    margin: 7px 0 0 20px;
    color: rgba(255, 255, 255, 0.877);
    line-height: 15px;
}

.userPanel__theme {
    display: flex;
    width: 98%;
    height: 100px;
    justify-content: end;
}

.userPanel__theme img {
    position: absolute;
    cursor: pointer;
    transition: .2s;
}

.deactive {
    margin: 23px 30px 0 0;
}

.active {
    margin: 23px 7px 0 0;
    filter: invert(0%) sepia(0%) saturate(0%) hue-rotate(326deg) brightness(0%) contrast(104%);
}

.switch {
    cursor: pointer;
    width: 30px;
    height: 10px;
    background-color: rgba(160, 174, 252, 0.555);
    margin: 36px 20px 0px 0px;
    border-radius: 5px;
}

.checkbox {
    cursor: pointer;
    color: hsl(263, 26%, 82%);
    opacity: 0;
    position: absolute;
}


.userPanel__item {
    width: 95%;
    height: 100%;
    margin: auto;
}

.userItem {
    margin: auto;
    width: 85%;
    padding: 10px 10px;
    background: rgba(174,
            198,
            252,
            0.459);
    color: #eee;
    line-height: 16px;
    border-radius: 2px;
}

.userItem p {
    font-size: 9px;
}

.userProgress {
    display: flex;
    width: 276px;
    margin: 6px;
    flex-wrap: wrap;
}

.userProgress div {
    background: rgba(174,
            198,
            252,
            0.459);
    box-shadow: 0px 0px 5px;
    width: 46%;
    height: 120px;
    margin: 5px;
    border-radius: 4px;
}
</style>