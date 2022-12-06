import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '@/views/HomeView.vue'
import LogInView from '@/views/LogIn.vue'
import CarCardsView from '@/views/CarResults.vue'
import FinanceView from '@/views/FinanceView.vue'
import AboutView from '@/views/AboutView.vue'

const routes = [
  {
    path: '/home',
    name: 'home',
    component: HomeView
  },
  {
    path: '/login',
    name: 'login',
    component: LogInView
  },
  {
    path: '/results',
    name: 'results',
    component: CarCardsView
  },
  {
    path: '/about',
    name: 'about',
    component: AboutView
  },
  {
    path: '/finance',
    name: 'finance',
    component: FinanceView
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
