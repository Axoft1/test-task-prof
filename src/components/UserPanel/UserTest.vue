<template>
    <div class="test item">
        <h5>Тестов <br/> выполнено</h5>
        <div class="progress__bar">
            <VeProgress class="progress__bar__item" :progress="this.progress" emptyColor="rgba(0, 0, 0, 0.432"
                color="rgba(141, 231, 23, 1)" size="60" :thickness="6" :emptyThickness="6" :hideLegend="false"
                :legend="test" :legend-formatter="myFormatter" />
        </div>
    </div>
</template>
<script>
// VeProgress - progress animation library
import { VeProgress } from "vue-ellipse-progress";
export default {
    name: 'UserTest',
    components: { VeProgress },
    props: {
        test: Number,
    },
    data() {
        this.progress = this.test * 100 / 48
        return
    },
    methods: {
        myFormatter() {
            return `<p style="font-weight: bold; font-size: 1.4rem; line-height: 15px; font-family: 'Montserrat', sans-serif;">${this.test}</p>`;
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
    margin: 10px 0 0 0;
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