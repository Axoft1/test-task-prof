<template>
    <div class="certification item">
        <h5>Аттестация через</h5>
        <div class="progress__bar">
    
            <VeProgress class="progress__bar__item" :progress="2 * 100 / 12" emptyColor="rgba(0, 0, 0, 0.432"
                color="rgba(231, 148, 23, 1)" size="60" :thickness="6" :emptyThickness="6" :hideLegend="false"
                :legend="3" />
        </div>
        <p class="certification__date">дня</p>
    </div>
</template>
<script>
import { VeProgress } from "vue-ellipse-progress";
export default {
    name: 'UserCertification',
    components: { VeProgress },
}
</script>
<style scoped>
.item{
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
    line-height: 14px;
}

.progress__bar {
    color: rgba(255, 255, 255, 0.877);
    margin: 10px 0px 0 35px;
}

.progress__bar img {
    position: absolute;
    margin: 13px 0px 0px -43px;
}
.certification__date {
    margin: -30px 0px 0px 52px;
    color: rgba(255, 255, 255, 0.877);
}
</style>