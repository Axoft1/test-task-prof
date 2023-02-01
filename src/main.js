import { createApp } from 'vue'
import App from './App.vue'
import veProgress from "vue-ellipse-progress";

// VeProgress - registering the progress animation library
createApp(App).use(veProgress).mount("#app");
