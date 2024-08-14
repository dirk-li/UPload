using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using log4net;

namespace LogParserAndTransfer
{
    class ProcessHandler
    {
        private static ILog m_log = LogManager.GetLogger("log");
        /// <summary>
        /// 获取进程相关信息
        /// </summary>
        public static void GetProcessInfomation()
        {

            Process pro = Process.GetProcessesByName("QQ")[0];
            m_log.Info(@"Process Name" + pro.ProcessName);
            /*
            m_log.Info(@"进程ID：" + pro.Id.ToString());
            m_log.Info(@"启动时间：" + pro.StartTime.ToLongDateString() + pro.StartTime.ToLongTimeString());
            m_log.Info(@"是否响应：" + pro.Responding.ToString());
            m_log.Info(@"关联进程句柄：" + pro.Handle.ToString());
            m_log.Info(@"进程打开的句柄数：" + pro.HandleCount.ToString());
            m_log.Info(@"主窗口句柄：" + pro.MainWindowHandle.ToString());
            m_log.Info(@"主窗口标题：" + pro.MainWindowTitle);
            m_log.Info(@"模块数量：" + pro.Modules.Count.ToString());
            m_log.Info(@"基本优先级：" + pro.BasePriority.ToString());
            m_log.Info(@"提升优先级：" + pro.PriorityBoostEnabled.ToString());
            m_log.Info(@"处理器：" + pro.ProcessorAffinity.ToInt32().ToString());
            m_log.Info(@"最小工作集：" + pro.MinWorkingSet.ToInt32().ToString());
            m_log.Info(@"最大工作集：" + pro.MaxWorkingSet.ToInt32().ToString());
            m_log.Info(@"工作集：" + pro.WorkingSet.ToString());
            m_log.Info(@"峰值工作集：" + pro.PeakWorkingSet.ToString());
            m_log.Info(@"专用内存大小：" + pro.PrivateMemorySize.ToString());
            m_log.Info(@"未分页内存大小：" + pro.NonpagedSystemMemorySize.ToString());
            m_log.Info(@"分页内存大小：" + pro.PagedMemorySize.ToString());
            m_log.Info(@"峰值分页内存大小：" + pro.PeakPagedMemorySize.ToString());
            m_log.Info(@"虚拟内存大小：" + pro.VirtualMemorySize.ToString());
            m_log.Info(@"峰值虚拟内存大小：" + pro.PeakVirtualMemorySize.ToString());
            */
            m_log.Info(@"Occupy time : " + pro.TotalProcessorTime.ToString());
            m_log.Info(@"A Occupy time : " + pro.PrivilegedProcessorTime.ToString());
            m_log.Info(@"B Occupy time : " + pro.UserProcessorTime.ToString());
        }
        /// <summary>
        /// 进程的线程详细信息
        /// </summary>
        public static void GetProcessThreadInfomation()
        {
            Process pro = Process.GetProcessesByName("QQ")[0];
            m_log.Info("QQ程序进程的线程详细信息如下：");
            int length = pro.Threads.Count;
            for (int i = 0; i < length; i++)
            {
                var thread = pro.Threads[i];
                m_log.Info("标识符：" + thread.Id.ToString());
                m_log.Info("基本优先级：" + thread.BasePriority.ToString());
                m_log.Info("当前优先级：" + thread.CurrentPriority.ToString());
                m_log.Info("内存地址：" + thread.StartAddress.ToInt32());
                m_log.Info("启动时间：" + thread.StartTime.ToString());
                m_log.Info("使用时间：" + thread.UserProcessorTime.ToString());
                Console.Write("当前状态：");
                switch (thread.ThreadState)
                {
                    case ThreadState.Initialized:
                        m_log.Info("线程已经初始化但尚未启动");
                        break;
                    case ThreadState.Ready:
                        m_log.Info("线程准备在下一个可用的处理器上运行");
                        break;
                    case ThreadState.Running:
                        m_log.Info("当前正在使用处理器");
                        break;
                    case ThreadState.Standby:
                        m_log.Info("线程将要使用处理器");
                        break;
                    case ThreadState.Terminated:
                        m_log.Info("线程已完成执行并退出");
                        break;
                    case ThreadState.Transition:
                        m_log.Info("线程在可以执行钱等待处理器之外的资源");
                        break;
                    case ThreadState.Unknown:
                        m_log.Info("状态未知");
                        break;
                    case ThreadState.Wait:
                        m_log.Info("正在等待外围操作完成或者资源释放");
                        break;
                    default:
                        break;
                }
                if (thread.ThreadState == ThreadState.Wait)
                {
                    Console.Write("等待原因：");
                    switch (thread.WaitReason)
                    {
                        case ThreadWaitReason.EventPairHigh:
                            m_log.Info("线程正在等待事件对高");
                            break;
                        case ThreadWaitReason.EventPairLow:
                            m_log.Info("线程正在等待事件对低");
                            break;
                        case ThreadWaitReason.ExecutionDelay:
                            m_log.Info("线程执行延迟");
                            break;
                        case ThreadWaitReason.Executive:
                            m_log.Info("线程正在等待计划程序");
                            break;
                        case ThreadWaitReason.FreePage:
                            m_log.Info("线程正在等待可用的虚拟内存页");
                            break;
                        case ThreadWaitReason.LpcReceive:
                            m_log.Info("线程正在等待本地过程调用到达");
                            break;
                        case ThreadWaitReason.LpcReply:
                            m_log.Info("线程正在等待对本地过程调用的回复到达");
                            break;
                        case ThreadWaitReason.PageIn:
                            m_log.Info("线程正在等待虚拟内存页到达内存");
                            break;
                        case ThreadWaitReason.PageOut:
                            m_log.Info("线程正在等待虚拟内存页写入磁盘");
                            break;
                        case ThreadWaitReason.Suspended:
                            m_log.Info("线程执行暂停");
                            break;
                        case ThreadWaitReason.SystemAllocation:
                            m_log.Info("线程正在等待系统分配");
                            break;
                        case ThreadWaitReason.Unknown:
                            m_log.Info("线程因位置原因而等待");
                            break;
                        case ThreadWaitReason.UserRequest:
                            m_log.Info("线程正在等待用户请求");
                            break;
                        case ThreadWaitReason.VirtualMemory:
                            m_log.Info("线程正在等待系统分配虚拟内存");
                            break;
                        default:
                            break;
                    }
                }
            }
        }
        /// <summary>
        /// 限制应用程序运行时间
        /// 即关联程序超出设置的运行将自动关闭
        /// </summary>
        public static void GetKillAppForWaitTime()
        {
            Process proc = new Process();
            proc.StartInfo = new ProcessStartInfo(@"C:\Documents and Settings\zkk\桌面\mysql_20120925.sql");
            //启动应用程序
            proc.Start();
            //等待程序师徒完成载入
            proc.WaitForInputIdle();
            //等待程序结束执行
            proc.WaitForExit(3000);
            //如果程序在时间期限之前关闭，HasExited将会是true
            if (proc.HasExited == false)
            {
                //测试程序是否已经停止回应
                if (proc.Responding)
                {
                    //程序有回应，关闭主视图
                    proc.CloseMainWindow();
                }
                else
                {
                    //如果程序没有回应，将强制关闭
                    proc.Kill();
                }
            }
        }
    }
}
