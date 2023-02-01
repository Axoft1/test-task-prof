<template>
    <div class="item">
        <h5>Достижения</h5>
        <img src="../../assets/medal.svg" alt="">
    </div>
</template>
<script>
export default {
    name: 'ProgressWork',
}
</script>
<style scoped>
.userWork__list {
    display: flex;
    flex-wrap: wrap;
    margin: 65px 0px 0px 70px;
}

.item {
    cursor: pointer;
    width: 175px;
    height: 140px;
    margin: 21px 21px 21px 24px;
    background-color: rgb(253, 158, 33);
    border-radius: 5px;
    transition: .2s;
}

.item h5 {
    font-size: 20px;
    color: rgb(255, 255, 255);
    text-align: center;
    margin: 15px 0 0 0px;
}

.item img {
    margin: 7px 0px 0px 50px;
}

.item span {
    position: absolute;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background-color: rgb(187, 253, 81);
    text-align: center;
    color: rgb(0, 0, 0);
    margin: -10px 0 0px 165px;
}

.item span p {
    margin-top: 3px;
    font-size: 18px;
    font-weight: 900;
}

.item:hover {
    background-color: rgb(253, 176, 33);
    transition: .2s;
}

.userWork__list__work img {
    transform: rotate(-50deg);
}
</style>