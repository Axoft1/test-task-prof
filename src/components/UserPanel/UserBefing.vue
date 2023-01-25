<template>
    <div class="briefing item">
        <h5>Инструктаж</h5>
        <div class="progress__bar">
            <VeProgress class="progress__bar__item" :progress="100" emptyColor="rgba(0, 0, 0, 0.432"
                color="rgba(141, 231, 23, 1)" size="60" :thickness="6" :emptyThickness="6" :hideLegend="true"
                :legend="100" />
            <img src="../../assets/check-list.svg" alt="">
        </div>
    </div>
</template>
<script>
import { VeProgress } from "vue-ellipse-progress";
export default {
    name: 'UserBefing',
    components: { VeProgress },
}
</script>
<style scoped>
.briefing {
    cursor: pointer;
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
    line-height: 12px;
}

.progress__bar {
    color: rgba(255, 255, 255, 0.877);
    margin: 0px 0px 10px 35px;
    margin-top: auto;
}

.progress__bar img {
    position: absolute;
    margin: 13px 0px 0px -43px;
}
</style>