﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Model;
using DAL;

namespace BLL
{
   public class AchiveBll
    {   private AchiveDal dal=new AchiveDal();
       public DataTable GetAchievementlist(string strWhere)
       {
           return dal.GetAchievementlist(strWhere);
       }
    }
}