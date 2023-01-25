<template>
    <div class="userPanel">
        <header class="header">
            <div class="dateInfo">
                <p>xx.xx.xxxx</p>
                <p>xx:xx</p>
            </div>
            <button class="btn">
                <p>Выход</p>
                <img src="../assets/exit.svg" alt="">
            </button>
        </header>
        <div class="theme">
            <input type="checkbox" id="toggle" class="checkbox" checked />
            <span aria-hidden="true" class="switch"></span>
            <img src="../assets/sun.svg" alt="">
        </div>
        <div class="userPanel__item">
            <div class="userItem">
                <h4>Фамилия Имя Отчество</h4>
                <h4>xx.xx.xxxx</h4>
                <p>Таб.№ ГОКИ 0000</p>
                <p>Проходчик lV разряда</p>
            </div>
            <div class="userProgress">
                <div class="briefing item">
                    <h5>Инструктаж</h5>
                    <div class="progress__bar">
                        <VeProgress class="progress__bar__item" :progress="100" emptyColor="rgba(0, 0, 0, 0.432" color="rgba(141, 231, 23, 1)" size="60"
                            :thickness="6" :emptyThickness="6" :hideLegend="true" :legend="100" />
                        <img src="../assets/check-list.svg" alt="">
                    </div>
                </div>
                <div class="exam item">
                    <h5>Предсменный экзаменатор</h5>
                    <div class="progress__bar">
                        <VeProgress class="progress__bar__item" :progress="100" emptyColor="rgba(0, 0, 0, 0.432" color="rgba(141, 231, 23, 1)" size="60"
                            :thickness="6" :emptyThickness="6" :hideLegend="true" :legend="100" />
                <img src="../assets/check-list-test.svg" alt="">
                        </div>
                </div>
                <div class="test item">
                    <h5>Тестов выполнено</h5>
                    <div class="progress__bar">

                        <VeProgress class="progress__bar__item" :progress="3 * 100 / 12" emptyColor="rgba(0, 0, 0, 0.432" color="rgba(141, 231, 23, 1)" size="60"
                            :thickness="6" :emptyThickness="6" :hideLegend="false" :legend="12" />
                    </div>
                </div>
                <div class="certification item">
                    <h5>Аттестация через</h5>
                    <div class="progress__bar">

                        <VeProgress class="progress__bar__item" :progress="2 * 100 / 12" emptyColor="rgba(0, 0, 0, 0.432" color="rgba(231, 148, 23, 1)" size="60"
                            :thickness="6" :emptyThickness="6" :hideLegend="false" :legend="3" />
                    </div>
                    <p class="certification__date">дня</p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { VeProgress } from "vue-ellipse-progress";
export default {
    name: 'UserPanel',
    components: { VeProgress },
    data() {
        return {
            rating: 3.5,
            progress: 10
        }
    },
    methods: {
        createPost(post) {
            this.posts.push(post)
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

.header {
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

.theme {
    display: flex;
    width: 98%;
    height: 100px;
    justify-content: end;
}
.theme img{
    position: absolute;
    margin: 23px 30px 0 0 ;
    cursor: pointer;
}
.switch{
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
    width: 96%;
    margin: 5px auto;
    flex-wrap: wrap;
}

.userProgress>div {
    background: rgba(174,
            198,
            252,
            0.459);
    box-shadow: 0px 0px 5px;
    margin: 0;
    width: 46%;
    height: 15ch;
    margin: 5px;
    border-radius: 4px;
}
.briefing {
    display: flex;
    flex-direction: column;
}

.item:hover {
    box-shadow: 0 0 10px black;
}

.item h5 {
    margin: 10px;
    color: rgba(255, 255, 255, 0.877);
    text-align: center;
    font-weight: 100;
    line-height: 14px;
}
.progress__bar {
    color: rgba(255, 255, 255, 0.877);
    margin: 10px 0px 0 35px;
}
.progress__bar img{
    position: absolute;
    margin: 13px 0px 0px -43px ;
}
.certification__date{
    position: absolute;
    margin: -30px 0px 0px 52px;
    color: rgba(255, 255, 255, 0.877);
}
</style>