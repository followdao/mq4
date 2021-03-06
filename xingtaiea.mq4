//+------------------------------------------------------------------+
//|                                                      xingtai.mq4 |
//|                        Copyright 2016, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict


struct trade_suggest
{
   bool valid;//是否生效
   int op;  //挂单类型
   double takeprofit;//止盈
   double stoploss;//止损
   uchar slippage; //滑点
   double point;   //挂单位置
   double jiacang;//加仓有效位置
};

trade_suggest sg = {false, 1, 1.0, 1.0, 3, 1.0};
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+

void OnTick()
  {
//---
   if(Bars<500 || IsTradeAllowed()==false)
      return;
   //先做形态分析，生成交易建议
   xingtaifenxi();
   
   //仓位处理，建仓，加仓，修改止损止盈
   cangweiguanli();
  }
//+------------------------------------------------------------------+

void xingtaifenxi()
{
   if(Volume[0]>1) return;
   //判断是否有趋势
      //如果有趋势，判断是否在次要节奏
         //判断是否为三角形形态
         //判断是否为旗形形态
         //判断是否为矩形形态
      //如果在主要节奏
         //判断是否需要修改止盈止损
         
   return;
}

void cangweiguanli()
{
   if(Volume[0]>1) return;
   //交易建议是否有效
      //是否已经有仓位
         //如有有仓位
            //是否到了可以加仓的点位
               //是否仓位已经达到最大限制
                  //如果没有达到最大限制
                     //加仓
         //如果还没有仓位
            //建仓
   //修改原有仓位止损止盈
   

   Print(sg.op+":"+sg.point+":"+sg.slippage);
}
