Namespace.register("BT.Lm");

BT.Lm = {
    Syetem: function (type, why) {
        this.lemon = parseInt(BT.Us.info.lemonCount);

        this.nSign = 1;                        //  获得  登录
        this.nAdv = 1;                         //  获得  广告
        this.nUpart = 3;                       //  获得  投稿
        this.nGetzan = [10, 1];                //  获得  获赞 [多少个赞转换,得多少柠檬]
        this.nIckname = 10;                    //  花费  昵称
        this.nIden = 20;                       //  花费  标识
        this.nActiv = 5;                       //  花费  活动
        this.nTicket = 1;                      //  花费  车票
        this.nReward = 5;                      //  花费  打赏(最多5)
        this.whyLemon = "";                    //  柠檬的原因

        this.OperLemon(type, why);
    },
    OperLemon: function (type, why) {
        var changeLemon = 0;
        var _type = "";
        switch (type) {
            // 1 登录  2 广告  3  投稿  4  获赞                                            
            // 5 昵称  6 标识  7  活动  8  车票  9  打赏                                    
            case "1":
                this.lemon += changeLemon = this.nSign;
                this.whyLemon = "登录恩赞奖励";
                _type = "1";
                break;
            case "2":
                this.lemon += changeLemon = this.nAdv;
                this.whyLemon = "点击广告奖励";
                _type = "2";
                break;
            case "3":
                this.lemon += changeLemon = this.nUpart;
                this.whyLemon = "投稿奖励";
                _type = "2";
                break;
            case "4":
                this.lemon += changeLemon = this.nGetzan;
                this.whyLemon = "文章" + why + "获得10个点赞得1个柠檬";
                _type = "2";
                break;
            case "5":
                this.lemon -= changeLemon = this.nIckname;
                this.whyLemon = "购买" + why + "花费";
                _type = "2";
                break;
            case "6":
                this.lemon -= changeLemon = this.nIden;
                this.whyLemon = "购买" + why + "花费";
                _type = "2";
                break;
            case "7":
                this.lemon -= changeLemon = this.nActiv;
                this.whyLemon = "参加" + why + "花费";
                _type = "2";
                break;
            case "8":
                this.lemon -= changeLemon = this.nTicket;
                this.whyLemon = "购买" + why + "花费";
                _type = "2";
                break;
            case "9":
                this.lemon -= changeLemon = this.nReward;
                this.whyLemon = "给视频" + why + "打赏";
                _type = "2";
                break;
        }
        BT.Sl.Requeset("I_Inesrt_Lemon", [BT.Us.info.UserId, changeLemon, this.whyLemon, _type], function (r) {
           
        })


    }

}

