import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
    // 解决多次点击左侧菜单报错问题
    const VueRouterPush = VueRouter.prototype.push
    VueRouter.prototype.push = function push (to) {
    return VueRouterPush.call(this, to).catch(err => err)
    }
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import beifen from '@/views/modules/databaseBackup/beifen'
import huanyuan from '@/views/modules/databaseBackup/huanyuan'

     import users from '@/views/modules/users/list'
    import bumen from '@/views/modules/bumen/list'
    import dictionary from '@/views/modules/dictionary/list'
    import fenpei from '@/views/modules/fenpei/list'
    import gonggao from '@/views/modules/gonggao/list'
    import jingli from '@/views/modules/jingli/list'
    import qingjia from '@/views/modules/qingjia/list'
    import renwu from '@/views/modules/renwu/list'
    import xinxi from '@/views/modules/xinxi/list'
    import xinzi from '@/views/modules/xinzi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import ziliao from '@/views/modules/ziliao/list'
    import config from '@/views/modules/config/list'
    import dictionaryFenpei from '@/views/modules/dictionaryFenpei/list'
    import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
    import dictionaryQingjia from '@/views/modules/dictionaryQingjia/list'
    import dictionaryQingjiaYesno from '@/views/modules/dictionaryQingjiaYesno/list'
    import dictionaryRenwu from '@/views/modules/dictionaryRenwu/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryXinxi from '@/views/modules/dictionaryXinxi/list'
    import dictionaryZiliao from '@/views/modules/dictionaryZiliao/list'
    import renwufenpei from '@/views/modules/fenpei/add-or-update'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }, {
        path: '/huanyuan',
        name: '数据还原',
        component: huanyuan
    }, {
        path: '/beifen',
        name: '数据备份',
        component: beifen
    }, {
        path: '/users',
        name: '管理信息',
        component: users
    }
    ,{
        path: '/dictionaryFenpei',
        name: '任务进度',
        component: dictionaryFenpei
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionaryQingjia',
        name: '请假类型',
        component: dictionaryQingjia
    }
    ,{
        path: '/dictionaryQingjiaYesno',
        name: '申请状态',
        component: dictionaryQingjiaYesno
    }
    ,{
        path: '/dictionaryRenwu',
        name: '任务类型',
        component: dictionaryRenwu
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryXinxi',
        name: '健康状况',
        component: dictionaryXinxi
    }
    ,{
        path: '/dictionaryZiliao',
        name: '资料类型',
        component: dictionaryZiliao
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/bumen',
        name: '部门',
        component: bumen
      }
    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/fenpei',
        name: '任务分配',
        component: fenpei
      }
        ,{
            path: '/renwufenpei',
            name: '分配',
            component: renwufenpei
        }
    ,{
        path: '/gonggao',
        name: '公告资讯',
        component: gonggao
      }
    ,{
        path: '/jingli',
        name: '部门经理',
        component: jingli
      }
    ,{
        path: '/qingjia',
        name: '员工请假',
        component: qingjia
      }
    ,{
        path: '/renwu',
        name: '任务',
        component: renwu
      }
    ,{
        path: '/xinxi',
        name: '基本信息',
        component: xinxi
      }
    ,{
        path: '/xinzi',
        name: '薪资',
        component: xinzi
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }
    ,{
        path: '/ziliao',
        name: '资料',
        component: ziliao
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
