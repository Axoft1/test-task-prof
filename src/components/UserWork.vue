<template>
    <div class="userWork">
        <div class="userWork__heder">
            <img src="../assets/logo.png" alt="">
        </div>
        <div class="userWork__list">
            <div class="userWork__list__work item">
                <h5>Начать работу</h5>
                <img src="../assets/jackhammer.svg" alt="">
            </div>
            <div class="userWork__list__alert item">
                <span><p>2</p></span>
                <h5>Уведомления</h5>
                <img src="../assets/email.svg" alt="">
            </div>
            <div class="userWork__list__training item">
                <h5>Обучение</h5>
                <img src="../assets/book.svg " alt="">
            </div>
            <div class="userWork__list__progress item">
                <h5>Достижения</h5>
                <img src="../assets/medal.svg" alt="">
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name: 'UserWork',  
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
.userWork__list{
    display: flex;
    flex-wrap: wrap;
    margin:  65px 0px 0px 70px;
}
.userWork__list>div{
   width: 175px;
   height: 140px;
   margin: 21px 21px 21px 24px;
   background-color:rgb(253, 158, 33);
   border-radius: 5px;
}
.item h5{
    font-size: 20px;
    color:rgb(255, 255, 255);
    text-align: center;
    margin: 15px 0 0 0px ;
}
.item img{
   margin: 7px 0px 0px 50px;
}
.item span{
    position: absolute;
    width: 25px;
    height: 25px;
    border-radius: 50%; 
    background-color: rgb(187, 253, 81);  
    text-align:center;
    color: rgb(0, 0, 0);
    margin: -10px 0 0px 165px; 
}
.item span p{
    margin-top: 3px;
    font-size: 18px;
    font-weight: 900;
}
.item:hover{
    background-color: rgb(253, 176, 33);
    transition: .2s;
}
.item{    
    transition: .2s;
}
.userWork__list__work img{
    transform: rotate(-50deg);
}
</style>