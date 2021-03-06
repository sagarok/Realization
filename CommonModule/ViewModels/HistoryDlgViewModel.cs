﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Input;
using DataObjects;
using DataObjects.Collections;
using DataObjects.Interfaces;

namespace CommonModule.ViewModels
{
    /// <summary>
    /// Модель диалога отображения истории изменения состояний сущности.
    /// </summary>
    public class HistoryDlgViewModel : BaseDlgViewModel
    {
        public HistoryDlgViewModel(IEnumerable<HistoryInfo> _infos)
        {
            History = _infos.ToArray();
        }

        public HistoryInfo[] History { get; private set; }
    }
}