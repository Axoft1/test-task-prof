<template>
    <div class="certification item">
        <h5>Аттестация через</h5>
        <div class="progress__bar">

            <VeProgress class="progress__bar__item" :progress="this.progress" emptyColor="rgba(0, 0, 0, 0.432"
                color="rgba(231, 148, 23, 1)" size="60" :thickness="6" :emptyThickness="6" :hideLegend="false"
                :legend="ctrtifical" :legend-formatter="myFormatter"/>
        </div>
        <!-- <p class="certification__date">дня</p> -->
    </div>
</template>
<script>
import { VeProgress } from "vue-ellipse-progress";
export default {
    name: 'UserCertification',
    components: { VeProgress },
    props:{
        ctrtifical: Number,
    },
    data(){
        this.progress = this.ctrtifical*100/15
        return
    },
    methods:{
        myFormatter ()  {
            return `<p style="font-weight: bold; font-size: 1.4rem; line-height: 15px;">${this.ctrtifical}</p><p style="font-weight: bold;">дня</p>`;
        }
    }
}
</script>
<style scoped>
.item {
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


.certification__date {
    /* position: absolute;
    margin: 80px 0px 0px 53px;
    color: rgba(255, 255, 255, 0.877); */
    line-height: 294px;
}
</style>