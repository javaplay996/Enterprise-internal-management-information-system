const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"部门经理管理",
                        "menuJump":"列表",
                        "tableName":"jingli"
                    }
                ],
                "menu":"部门经理管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"基本信息管理",
                        "menuJump":"列表",
                        "tableName":"xinxi"
                    }
                ],
                "menu":"基本信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"部门管理",
                        "menuJump":"列表",
                        "tableName":"bumen"
                    }
                ],
                "menu":"部门管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除",
                            "审核",
                            "报表"
                        ],
                        "menu":"员工请假管理",
                        "menuJump":"列表",
                        "tableName":"qingjia"
                    }
                ],
                "menu":"员工请假管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"任务管理",
                        "menuJump":"列表",
                        "tableName":"renwu"
                    }
                ],
                "menu":"任务管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"任务分配管理",
                        "menuJump":"列表",
                        "tableName":"fenpei"
                    }
                ],
                "menu":"任务分配管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告资讯管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告资讯管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除",
                            "报表"
                        ],
                        "menu":"薪资管理",
                        "menuJump":"列表",
                        "tableName":"xinzi"
                    }
                ],
                "menu":"薪资管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"资料管理",
                        "menuJump":"列表",
                        "tableName":"ziliao"
                    }
                ],
                "menu":"资料管理"
            }
            ,{
                "child":[

                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"请假类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryQingjia"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"任务类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryRenwu"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"健康状况管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryXinxi"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"资料类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZiliao"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
            /*,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"数据备份",
			            "menuJump":"列表",
			            "tableName":"beifen"
			        },
					{
					    "buttons":[
					        "查看"
					    ],
					    "menu":"数据还原",
					    "menuJump":"列表",
					    "tableName":"huanyuan"
					}
			    ],
			    "menu":"数据库管理"
			}*/
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
            {
                "backMenu":[
                   {
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                ],
                                "menu":"用户管理",
                                "menuJump":"列表",
                                "tableName":"yonghu"
                            }
                        ],
                        "menu":"用户管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"基本信息管理",
                                "menuJump":"列表",
                                "tableName":"xinxi"
                            }
                        ],
                        "menu":"基本信息管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"部门管理",
                                "menuJump":"列表",
                                "tableName":"bumen"
                            }
                        ],
                        "menu":"部门管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "审核",
                                    "报表"
                                ],
                                "menu":"员工请假管理",
                                "menuJump":"列表",
                                "tableName":"qingjia"
                            }
                        ],
                        "menu":"员工请假管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除",
                                    "分配"
                                ],
                                "menu":"任务管理",
                                "menuJump":"列表",
                                "tableName":"renwu"
                            }
                        ],
                        "menu":"任务管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"任务分配管理",
                                "menuJump":"列表",
                                "tableName":"fenpei"
                            }
                        ],
                        "menu":"任务分配管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"公告资讯管理",
                                "menuJump":"列表",
                                "tableName":"gonggao"
                            }
                        ],
                        "menu":"公告资讯管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "报表"
                                ],
                                "menu":"薪资管理",
                                "menuJump":"列表",
                                "tableName":"xinzi"
                            }
                        ],
                        "menu":"薪资管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"资料管理",
                                "menuJump":"列表",
                                "tableName":"ziliao"
                            }
                        ],
                        "menu":"资料管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"轮播图管理",
                                "menuJump":"列表",
                                "tableName":"config"
                            }
                        ],
                        "menu":"轮播图信息"
                    }
                    /*,{
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"数据备份",
                                "menuJump":"列表",
                                "tableName":"beifen"
                            },
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"数据还原",
                                "menuJump":"列表",
                                "tableName":"huanyuan"
                            }
                        ],
                        "menu":"数据库管理"
                    }*/
                ],
                "frontMenu":[],
                "hasBackLogin":"是",
                "hasBackRegister":"否",
                "hasFrontLogin":"否",
                "hasFrontRegister":"否",
                "roleName":"部门主管",
                "tableName":"jingli"
            }
]
    }
}
export default menu;
