local Localization = {}

local Strings = {
    en = {
        -- Menu Bar
        menu_file = "File",
        menu_settings = "Settings",
        menu_view = "View",
        menu_export_text = "Export as Text",
        menu_save_logs = "Save Logs to File",
        menu_auto_save = "Auto-save Logs",
        menu_anti_spam = "Anti-Spam Filter",
        menu_timestamp = "Timestamp",
        menu_level = "Level",
        menu_category = "Category",
        menu_metadata = "Metadata",
        menu_metadata_panel = "Metadata Panel",
        menu_show_minion_console = "Show Minion Console",

        -- Tooltips for menu items
        tooltip_auto_save = "Automatically save logs to file on each entry.\n**performance intensive",
        tooltip_anti_spam = "Block messages that repeat more than 10 times per second",
        tooltip_metadata_panel = "Show/hide metadata details panel",

        -- Header / Search
        search_label = "Search:",
        active_filters = "Active Filters:",
        clear_button = "Clear",
        tooltip_clear = "Clear all console entries",
        results_format = "(%d results)",
        results_searching = "Searching%s",
        results_tooltip = "%d results found",
        results_searching_tooltip = "Searching... %d results so far (%.1fms elapsed)",
        tooltip_search_input = "Filter entries by search text",

        -- Filter sections
        advanced_filters = "Advanced Filters",
        tooltip_advanced_filters = "Click to show/hide advanced filter options",
        log_levels = "Log Levels",
        categories = "Categories",
        search_options = "Search Options",
        case_sensitive = "Case Sensitive",
        tooltip_case_sensitive = "Match exact letter case in searches",
        filter_presets = "Filter Presets",
        save_current_filters = "Save Current Filters:",
        save_as_preset_button = "Save As Preset",
        tooltip_save_preset = "Save current filter configuration as a preset",
        display_options = "Display Options",

        -- Filter states
        include = "Include:",
        exclude = "Exclude:",
        filter_clear = "Clear",
        filter_invert = "Invert",
        tooltip_clear_levels = "Clear all level filters",
        tooltip_invert_levels = "Swap included/excluded levels",
        tooltip_clear_categories = "Clear all category filters",
        tooltip_invert_categories = "Swap included/excluded categories",

        -- Filter chips
        filter_chip_search = "search: '%s' ×",
        filter_chip_level = "%s ×",
        filter_chip_exclude = "X %s ×",
        tooltip_clear_search = "Click to clear search filter",
        tooltip_remove_level = "Click to remove %s from filter\nright-click to exclude %s level",
        tooltip_clear_level_filter = "Click to clear level filter\nright-click to exclude %s level",
        tooltip_remove_category = "Click to remove %s category filter\nright-click to exclude %s category",
        tooltip_clear_exclusion = "Click to remove %s level exclusion\nright-click to enable only %s level",
        tooltip_clear_category_exclusion = "Click to remove %s category exclusion\nright-click to filter only %s category",

        -- Quick filter presets
        preset_all_levels = "All Levels",
        preset_errors_only = "Errors Only",
        preset_warnings_plus = "Warnings+",
        preset_info_plus = "Info+",
        preset_debug_plus = "Debug+",
        tooltip_quick_filter = "Quick level filter presets",
        tooltip_quick_category = "Quick category filter",

        -- Filter window
        filter_window_title = "Advanced Filter Configuration##FilterWindow",
        showing_entries = "Showing %d of %d entries",
        active_search_term = "Active Search Term:",
        no_active_search = "No active search terms",
        tooltip_remove_search = "Click to remove search phrase: %s",
        select_preset = "Select Preset...",
        delete_preset = "Delete",
        tooltip_delete_preset = "Delete preset: %s",
        tooltip_load_preset = "Load a saved filter preset",
        no_saved_presets = "No saved presets",
        filter_clear_all = "Clear Filters",
        filter_close = "Close",
        tooltip_category_search = "Filter categories by name",

        -- Filter window - interactive tooltips
        tooltip_filter_left_include = "left-click to include",
        tooltip_filter_left_clear_include = "left-click to clear include",
        tooltip_filter_left_clear = "left-click to clear",
        tooltip_filter_right_exclude = "right-click to exclude",
        tooltip_filter_right_clear_exclusion = "right-click to clear exclusion",
        tooltip_show_category_messages = "Show %s category messages",
        tooltip_hide_category_messages = "Hide %s category messages",

        -- Level tooltips
        tooltip_level_trace = "Show detailed trace messages for debugging",
        tooltip_level_debug = "Show debug information for development",
        tooltip_level_info = "Show informational messages",
        tooltip_level_warn = "Show warning messages",
        tooltip_level_error = "Show error messages",
        tooltip_hide_trace = "Hide trace messages",
        tooltip_hide_debug = "Hide debug messages",
        tooltip_hide_info = "Hide informational messages",
        tooltip_hide_warn = "Hide warning messages",
        tooltip_hide_error = "Hide error messages",

        -- Category tooltips
        tooltip_toggle_category = "Toggle %s category messages",
        tooltip_hide_category = "Hide all %s category messages",

        -- Log display
        no_log_entries = "No log entries to display",
        no_categories_available = "No categories available",

        -- Command input
        execute_button = "Execute",
        tooltip_execute = "Execute Lua code (Enter)",
        tooltip_command_input = "Enter Lua code here to execute.\nUse UP/DOWN arrows for history",

        -- Context menu
        context_select_all = "Select all",
        context_copy_entry = "Copy entry to clipboard",
        context_copy_value = "Copy entry value only",
        context_copy_metadata = "Copy metadata",
        context_copy_selected = "Copy entries to clipboard (%d selected)",
        context_filter_level = "Filter by this level",
        context_filter_category = "Filter by this category",
        context_smart_filter = "Smart filter from selection (%d selected)",
        tooltip_smart_filter = "Filter by all levels and categories in selection",
        context_show_similar = "Show similar entries",
        context_cut = "Cut",
        context_copy = "Copy",
        context_paste = "Paste",
        context_select_all_input = "Select All",
        context_clear = "Clear",

        -- Metadata panel
        metadata_click_entry = "Click on a log entry to view details",
        metadata_time = "Time: %s",
        metadata_level = "Level: %s",
        metadata_category = "Category: %s",
        metadata_message = "Message:",
        metadata_title = "Metadata:",
        metadata_no_additional = "No additional metadata available",
        metadata_max_depth = "[MAX DEPTH]",
        metadata_circular = "[CIRCULAR]",
        metadata_more_lines = "... [%d more lines]",
        metadata_more_chars = "... [%d more chars]",
        metadata_more_items = "... [%d more]",
        metadata_more_fields = "... [%d more fields]",

        -- Status bar
        status_entries = "Entries: %d",
        status_filtered = "Filtered: %d",
        status_memory = "Memory: %.1fKB",
        status_update = "Update: %.1fms",
        status_blocked = "Blocked: %d",
        status_format = "Entries: %d | Filtered: %d | Memory: %.1fKB | Update: %.1fms",
        status_format_with_blocked = "Entries: %d | Filtered: %d | Memory: %.1fKB | Update: %.1fms | Blocked: %d",

        -- Notifications
        notify_applied_filter = "Applied quick filter: %s",
        notify_saved_preset = "Saved filter preset: %s",
        notify_applied_preset = "Applied filter preset: %s",
        notify_deleted_preset = "Deleted filter preset: %s",
        notify_copied_entry = "Copied log entry to clipboard",
        notify_copied_message = "Copied log entry message to clipboard",
        notify_copied_metadata = "Copied metadata to clipboard",
        notify_exported_entries = "Exported %d selected entries to clipboard",
        notify_entry_exported = "Entry exported to clipboard",
        notify_filtering_level = "Filtering by level: %s",
        notify_filtering_category = "Filtering by category: %s",
        notify_smart_filter = "Smart filter: %d level(s), %d categor%s",
        notify_showing_similar = "Showing similar entries to: %s",
        notify_initialized = "BetterConsole initialized - capturing all log messages",

        -- Warnings
        warn_no_metadata = "No metadata to copy",
        warn_no_selection = "No entries selected",
        warn_preset_exists = "Preset name already exists: %s",
        warn_anti_spam = "Anti-spam: blocking rapid messages from [%s]: '%s'",

        -- Errors
        error_failed_copy_entry = "Failed to copy entry",
        error_failed_copy_message = "Failed to copy entry message",
        error_failed_copy_metadata = "Failed to copy metadata",
        error_failed_export = "Failed to export selected entries",
        error_export_clipboard = "Failed to %s: %s",

        -- Filter button labels
        filters_active_count = "[%d filter%s]",
        filters_none = "[No filters]",
        tooltip_filters_active = "Active filters: %s\nclick to open filter configuration\nright-click to clear all filters",
        tooltip_filters_none = "All log entries are shown\nclick to open filter configuration\nright-click to clear all filters",

        -- Log level names
        level_trace = "TRACE",
        level_debug = "DEBUG",
        level_info = "INFO",
        level_warn = "WARN",
        level_error = "ERROR",

        -- Category names (defaults)
        category_all = "All",
        category_system = "System",
        category_console = "Console",
        category_anti_spam = "AntiSpam",
        category_error_handler = "ErrorHandler",

        -- Validation messages
        validate_level_required = "Log level is required",
        validate_level_invalid_type = "Log level must be a string",
        validate_level_invalid_value = "Invalid log level: %s. Must be one of: TRACE, DEBUG, INFO, WARN, ERROR",
        validate_category_required = "Category is required",
        validate_category_invalid_type = "Category must be a string",
        validate_category_empty = "Category cannot be empty",
        validate_category_too_long = "Category too long (max %d characters)",
        validate_category_invalid_chars = "Category contains invalid characters (only alphanumeric, spaces, underscore, dash allowed)",
        validate_message_required = "Message is required",
        validate_message_too_long = "Message too long (max %d characters)",
        validate_data_invalid_type = "Data must be a table or nil",
        validate_preset_name_required = "Preset name is required",
        validate_preset_name_empty = "Preset name cannot be empty",
        validate_preset_name_too_long = "Preset name too long (max %d characters)",
        validate_preset_name_invalid = "Preset name must be a string",
        validate_filename_required = "Filename is required",
        validate_filename_empty = "Filename cannot be empty",
        validate_filename_too_long = "Filename too long (max %d characters)",
        validate_filename_invalid_chars = "Filename contains invalid characters",
        validate_filename_invalid = "Filename must be a string",
        validate_command_required = "Command is required",
        validate_command_empty = "Command cannot be empty",
        validate_command_too_long = "Command too long (max %d characters)",
        validate_command_invalid = "Command must be a string",

        -- Export messages
        export_no_entries = "No entries to export",
        export_success_clipboard = "Exported %d entries to clipboard",
        export_success_file = "Exported %d entries to %s",
        export_failed_no_dir = "Log directory is unavailable for export",
        export_failed_open_file = "Failed to open file: %s",
        export_unknown_exporter = "Unknown exporter: %s",
        export_failed_clipboard = "Export to clipboard failed: %s",
        export_failed_file = "Export to file failed: %s",

        -- Error types
        error_type_validation = "ValidationError",
        error_type_io = "IOError",
        error_type_runtime = "RuntimeError",
        error_type_network = "NetworkError",
        error_type_permission = "PermissionError",
        error_type_clipboard = "ClipboardError",
        error_type_export = "ExportError",
        error_type_command = "CommandError",
        error_type_unknown = "UnknownError",

        -- Generic error messages
        error_generic = "An error occurred",
        error_context_format = " [%s]",
        error_failed_operation = "Failed to %s: %s",
        error_no_text = "No text provided",
        error_file_repo_unavailable = "FileRepository not available",
        error_unknown_repo = "Unknown repository type: %s",
        error_persist_failed = "Failed to persist log entry",
        error_file_repo_requires_path = "FileRepository requires a filePath",
        error_file_open_failed = "Failed to open file for writing: %s",

        -- Misc
        plural_suffix = "s",
        time_unknown = "Unknown",
        category_default = "System",
    },

    -- Chinese (Simplified)
    cn = {
        -- Menu Bar
        menu_file = "文件",
        menu_settings = "设置",
        menu_view = "查看",
        menu_export_text = "导出为文本",
        menu_save_logs = "保存日志到文件",
        menu_auto_save = "自动保存日志",
        menu_anti_spam = "防刷屏过滤",
        menu_timestamp = "时间戳",
        menu_level = "级别",
        menu_category = "分类",
        menu_metadata = "元数据",
        menu_metadata_panel = "元数据面板",
        menu_show_minion_console = "显示原始控制台",

        -- Tooltips for menu items
        tooltip_auto_save = "自动保存每条日志到文件\n**性能密集型操作",
        tooltip_anti_spam = "屏蔽每秒重复超过10次的消息",
        tooltip_metadata_panel = "显示/隐藏详细元数据面板",

        -- Header / Search
        search_label = "搜索：",
        active_filters = "当前筛选：",
        clear_button = "清空",
        tooltip_clear = "清空所有日志记录",
        results_format = "（%d 条结果）",
        results_searching = "搜索中%s",
        results_tooltip = "找到 %d 条结果",
        results_searching_tooltip = "搜索中... 目前找到 %d 条结果（已用时 %.1fms）",
        tooltip_search_input = "按文本筛选日志条目",

        -- Filter sections
        advanced_filters = "高级筛选",
        tooltip_advanced_filters = "点击展开/折叠高级筛选选项",
        log_levels = "日志级别",
        categories = "分类",
        search_options = "搜索选项",
        case_sensitive = "区分大小写",
        tooltip_case_sensitive = "搜索时匹配字母大小写",
        filter_presets = "筛选预设",
        save_current_filters = "保存当前筛选：",
        save_as_preset_button = "另存为预设",
        tooltip_save_preset = "将当前筛选配置保存为预设",
        display_options = "显示选项",

        -- Filter states
        include = "包含：",
        exclude = "排除：",
        filter_clear = "清除",
        filter_invert = "反选",
        tooltip_clear_levels = "清除所有级别筛选",
        tooltip_invert_levels = "切换包含/排除的级别",
        tooltip_clear_categories = "清除所有分类筛选",
        tooltip_invert_categories = "切换包含/排除的分类",

        -- Filter chips
        filter_chip_search = "搜索：'%s' ×",
        filter_chip_level = "%s ×",
        filter_chip_exclude = "× %s ×",
        tooltip_clear_search = "点击清除搜索筛选",
        tooltip_remove_level = "点击移除 %s 筛选\n右键排除 %s 级别",
        tooltip_clear_level_filter = "点击清除级别筛选\n右键排除 %s 级别",
        tooltip_remove_category = "点击移除 %s 分类筛选\n右键排除 %s 分类",
        tooltip_clear_exclusion = "点击移除 %s 级别排除\n右键仅启用 %s 级别",
        tooltip_clear_category_exclusion = "点击移除 %s 分类排除\n右键仅筛选 %s 分类",

        -- Quick filter presets
        preset_all_levels = "全部级别",
        preset_errors_only = "仅 ERROR",
        preset_warnings_plus = "WARN 及以上",
        preset_info_plus = "INFO 及以上",
        preset_debug_plus = "DEBUG 及以上",
        tooltip_quick_filter = "快速级别筛选预设",
        tooltip_quick_category = "快速分类筛选",

        -- Filter window
        filter_window_title = "高级筛选配置##FilterWindow",
        showing_entries = "显示 %d / %d 条",
        active_search_term = "当前搜索词：",
        no_active_search = "无搜索条件",
        tooltip_remove_search = "点击移除搜索词：%s",
        select_preset = "选择预设...",
        delete_preset = "删除",
        tooltip_delete_preset = "删除预设：%s",
        tooltip_load_preset = "加载已保存的筛选预设",
        no_saved_presets = "无已保存的预设",
        filter_clear_all = "清除筛选",
        filter_close = "关闭",
        tooltip_category_search = "按名称筛选分类",

        -- Filter window - interactive tooltips
        tooltip_filter_left_include = "左键包含",
        tooltip_filter_left_clear_include = "左键清除包含",
        tooltip_filter_left_clear = "左键清除",
        tooltip_filter_right_exclude = "右键排除",
        tooltip_filter_right_clear_exclusion = "右键清除排除",
        tooltip_show_category_messages = "显示 %s 分类消息",
        tooltip_hide_category_messages = "隐藏 %s 分类消息",

        -- Level tooltips 
        tooltip_level_trace = "显示详细的 TRACE 调试信息",
        tooltip_level_debug = "显示 DEBUG 开发信息",
        tooltip_level_info = "显示 INFO 一般消息",
        tooltip_level_warn = "显示 WARN 警告消息",
        tooltip_level_error = "显示 ERROR 错误消息",
        tooltip_hide_trace = "隐藏 TRACE 信息",
        tooltip_hide_debug = "隐藏 DEBUG 信息",
        tooltip_hide_info = "隐藏 INFO 信息",
        tooltip_hide_warn = "隐藏 WARN 信息",
        tooltip_hide_error = "隐藏 ERROR 信息",

        -- Category tooltips
        tooltip_toggle_category = "切换 %s 分类消息",
        tooltip_hide_category = "隐藏所有 %s 分类消息",

        -- Log display
        no_log_entries = "无日志记录",
        no_categories_available = "无可用分类",

        -- Command input
        execute_button = "执行",
        tooltip_execute = "执行 Lua 代码（回车）",
        tooltip_command_input = "在此输入 Lua 代码执行\n使用上下方向键浏览历史记录",

        -- Context menu
        context_select_all = "全选",
        context_copy_entry = "复制条目到剪贴板",
        context_copy_value = "仅复制条目内容",
        context_copy_metadata = "复制元数据",
        context_copy_selected = "复制选中条目到剪贴板（%d 条已选）",
        context_filter_level = "按此级别筛选",
        context_filter_category = "按此分类筛选",
        context_smart_filter = "智能筛选所选（%d 条已选）",
        tooltip_smart_filter = "按所选条目的所有级别和分类筛选",
        context_show_similar = "显示相似条目",
        context_cut = "剪切",
        context_copy = "复制",
        context_paste = "粘贴",
        context_select_all_input = "全选",
        context_clear = "清空",

        -- Metadata panel
        metadata_click_entry = "点击日志条目查看详情",
        metadata_time = "时间：%s",
        metadata_level = "级别：%s",
        metadata_category = "分类：%s",
        metadata_message = "消息：",
        metadata_title = "元数据：",
        metadata_no_additional = "无额外元数据",
        metadata_max_depth = "[已达最大深度]",
        metadata_circular = "[循环引用]",
        metadata_more_lines = "... [还有 %d 行]",
        metadata_more_chars = "... [还有 %d 个字符]",
        metadata_more_items = "... [还有 %d 项]",
        metadata_more_fields = "... [还有 %d 个字段]",

        -- Status bar
        status_entries = "条目：%d",
        status_filtered = "已筛选：%d",
        status_memory = "内存：%.1fKB",
        status_update = "更新：%.1fms",
        status_blocked = "已拦截：%d",
        status_format = "条目：%d | 已筛选：%d | 内存：%.1fKB | 更新：%.1fms",
        status_format_with_blocked = "条目：%d | 已筛选：%d | 内存：%.1fKB | 更新：%.1fms | 已拦截：%d",

        -- Notifications
        notify_applied_filter = "已应用快速筛选：%s",
        notify_saved_preset = "已保存筛选预设：%s",
        notify_applied_preset = "已应用筛选预设：%s",
        notify_deleted_preset = "已删除筛选预设：%s",
        notify_copied_entry = "已复制日志条目到剪贴板",
        notify_copied_message = "已复制日志消息到剪贴板",
        notify_copied_metadata = "已复制元数据到剪贴板",
        notify_exported_entries = "已导出 %d 条选中条目到剪贴板",
        notify_entry_exported = "已导出条目到剪贴板",
        notify_filtering_level = "按级别筛选：%s",
        notify_filtering_category = "按分类筛选：%s",
        notify_smart_filter = "智能筛选：%d 个级别，%d 个分类",
        notify_showing_similar = "显示相似条目：%s",
        notify_initialized = "BetterConsole 已初始化 - 正在捕获所有日志消息",

        -- Warnings
        warn_no_metadata = "无可复制的元数据",
        warn_no_selection = "未选择任何条目",
        warn_preset_exists = "预设名称已存在：%s",
        warn_anti_spam = "防刷屏：正在屏蔽来自 [%s] 的快速重复消息：'%s'",

        -- Errors
        error_failed_copy_entry = "复制条目失败",
        error_failed_copy_message = "复制条目消息失败",
        error_failed_copy_metadata = "复制元数据失败",
        error_failed_export = "导出选中条目失败",
        error_export_clipboard = "无法执行 %s：%s",

        -- Filter button labels
        filters_active_count = "[%d 个筛选]",
        filters_none = "[无筛选]",
        tooltip_filters_active = "当前筛选：%s\n点击打开筛选配置\n右键清除所有筛选",
        tooltip_filters_none = "显示所有日志条目\n点击打开筛选配置\n右键清除所有筛选",

        -- Log level names
        level_trace = "TRACE",
        level_debug = "DEBUG",
        level_info = "INFO",
        level_warn = "WARN",
        level_error = "ERROR",

        -- Category names (defaults)
        category_all = "全部",
        category_system = "系统",
        category_console = "控制台",
        category_anti_spam = "防刷屏",
        category_error_handler = "错误处理",

        -- Validation messages
        validate_level_required = "需要指定日志级别",
        validate_level_invalid_type = "日志级别必须是字符串",
        validate_level_invalid_value = "无效的日志级别：%s。必须是 TRACE、DEBUG、INFO、WARN 或 ERROR",
        validate_category_required = "需要指定分类",
        validate_category_invalid_type = "分类必须是字符串",
        validate_category_empty = "分类不能为空",
        validate_category_too_long = "分类过长（最多 %d 个字符）",
        validate_category_invalid_chars = "分类包含无效字符（仅允许字母、数字、空格、下划线、横线）",
        validate_message_required = "需要指定消息",
        validate_message_too_long = "消息过长（最多 %d 个字符）",
        validate_data_invalid_type = "数据必须是表或 nil",
        validate_preset_name_required = "需要指定预设名称",
        validate_preset_name_empty = "预设名称不能为空",
        validate_preset_name_too_long = "预设名称过长（最多 %d 个字符）",
        validate_preset_name_invalid = "预设名称必须是字符串",
        validate_filename_required = "需要指定文件名",
        validate_filename_empty = "文件名不能为空",
        validate_filename_too_long = "文件名过长（最多 %d 个字符）",
        validate_filename_invalid_chars = "文件名包含无效字符",
        validate_filename_invalid = "文件名必须是字符串",
        validate_command_required = "需要指定命令",
        validate_command_empty = "命令不能为空",
        validate_command_too_long = "命令过长（最多 %d 个字符）",
        validate_command_invalid = "命令必须是字符串",

        -- Export messages
        export_no_entries = "无可导出的条目",
        export_success_clipboard = "已导出 %d 条到剪贴板",
        export_success_file = "已导出 %d 条到 %s",
        export_failed_no_dir = "日志目录不可用，无法导出",
        export_failed_open_file = "打开文件失败：%s",
        export_unknown_exporter = "未知的导出器：%s",
        export_failed_clipboard = "导出到剪贴板失败：%s",
        export_failed_file = "导出到文件失败：%s",

        -- Error types
        error_type_validation = "验证错误",
        error_type_io = "输入输出错误",
        error_type_runtime = "运行时错误",
        error_type_network = "网络错误",
        error_type_permission = "权限错误",
        error_type_clipboard = "剪贴板错误",
        error_type_export = "导出错误",
        error_type_command = "命令错误",
        error_type_unknown = "未知错误",

        -- Generic error messages
        error_generic = "发生错误",
        error_context_format = " [%s]",
        error_failed_operation = "无法执行 %s：%s",
        error_no_text = "未提供文本",
        error_file_repo_unavailable = "文件仓库不可用",
        error_unknown_repo = "未知的仓库类型：%s",
        error_persist_failed = "持久化日志条目失败",
        error_file_repo_requires_path = "文件仓库需要 filePath 参数",
        error_file_open_failed = "打开文件失败：%s",

        -- Misc
        plural_suffix = "",
        time_unknown = "未知",
        category_default = "系统",
    },

    -- Japanese
    jp = {
        -- Menu Bar
        menu_file = "ファイル",
        menu_settings = "設定",
        menu_view = "表示",
        menu_export_text = "テキストとしてエクスポート",
        menu_save_logs = "ログをファイルに保存",
        menu_auto_save = "ログの自動保存",
        menu_anti_spam = "スパムフィルター",
        menu_timestamp = "タイムスタンプ",
        menu_level = "レベル",
        menu_category = "カテゴリ",
        menu_metadata = "メタデータ",
        menu_metadata_panel = "メタデータパネル",
        menu_show_minion_console = "元のコンソールを表示",

        -- Tooltips for menu items
        tooltip_auto_save = "ログエントリーごとに自動保存します\n**パフォーマンス負荷が高い",
        tooltip_anti_spam = "1秒間に10回以上繰り返されるメッセージをブロック",
        tooltip_metadata_panel = "メタデータ詳細パネルの表示/非表示",

        -- Header / Search
        search_label = "検索：",
        active_filters = "有効なフィルター：",
        clear_button = "クリア",
        tooltip_clear = "すべてのログエントリーをクリア",
        results_format = "（%d 件の結果）",
        results_searching = "検索中%s",
        results_tooltip = "%d 件の結果が見つかりました",
        results_searching_tooltip = "検索中... %d 件の結果が見つかりました（経過時間 %.1fms）",
        tooltip_search_input = "テキストでログエントリーを絞り込む",

        -- Filter sections
        advanced_filters = "詳細フィルター",
        tooltip_advanced_filters = "クリックして詳細フィルターオプションを表示/非表示",
        log_levels = "ログレベル",
        categories = "カテゴリ",
        search_options = "検索オプション",
        case_sensitive = "大文字小文字を区別",
        tooltip_case_sensitive = "検索時に大文字小文字を区別する",
        filter_presets = "フィルタープリセット",
        save_current_filters = "現在のフィルターを保存：",
        save_as_preset_button = "プリセットとして保存",
        tooltip_save_preset = "現在のフィルター設定をプリセットとして保存",
        display_options = "表示オプション",

        -- Filter states
        include = "含む：",
        exclude = "除外：",
        filter_clear = "クリア",
        filter_invert = "反転",
        tooltip_clear_levels = "すべてのレベルフィルターをクリア",
        tooltip_invert_levels = "含む/除外レベルを入れ替え",
        tooltip_clear_categories = "すべてのカテゴリフィルターをクリア",
        tooltip_invert_categories = "含む/除外カテゴリを入れ替え",

        -- Filter chips
        filter_chip_search = "検索：「%s」 ×",
        filter_chip_level = "%s ×",
        filter_chip_exclude = "× %s ×",
        tooltip_clear_search = "クリックして検索フィルターをクリア",
        tooltip_remove_level = "クリックして %s をフィルターから削除\n右クリックで %s レベルを除外",
        tooltip_clear_level_filter = "クリックしてレベルフィルターをクリア\n右クリックで %s レベルを除外",
        tooltip_remove_category = "クリックして %s カテゴリフィルターを削除\n右クリックで %s カテゴリを除外",
        tooltip_clear_exclusion = "クリックして %s レベルの除外を解除\n右クリックで %s レベルのみを有効化",
        tooltip_clear_category_exclusion = "クリックして %s カテゴリの除外を解除\n右クリックで %s カテゴリのみを表示",

        -- Quick filter presets
        preset_all_levels = "すべてのレベル",
        preset_errors_only = "ERROR のみ",
        preset_warnings_plus = "WARN 以上",
        preset_info_plus = "INFO 以上",
        preset_debug_plus = "DEBUG 以上",
        tooltip_quick_filter = "クイックレベルフィルタープリセット",
        tooltip_quick_category = "クイックカテゴリフィルター",

        -- Filter window
        filter_window_title = "詳細フィルター設定##FilterWindow",
        showing_entries = "%d / %d 件を表示",
        active_search_term = "有効な検索語：",
        no_active_search = "検索語が設定されていません",
        tooltip_remove_search = "クリックして検索語を削除：%s",
        select_preset = "プリセットを選択...",
        delete_preset = "削除",
        tooltip_delete_preset = "プリセットを削除：%s",
        tooltip_load_preset = "保存されたフィルタープリセットを読み込む",
        no_saved_presets = "保存されたプリセットがありません",
        filter_clear_all = "フィルターをクリア",
        filter_close = "閉じる",
        tooltip_category_search = "名前でカテゴリを絞り込む",

        -- Filter window - interactive tooltips
        tooltip_filter_left_include = "左クリックで含む",
        tooltip_filter_left_clear_include = "左クリックで含むを解除",
        tooltip_filter_left_clear = "左クリックでクリア",
        tooltip_filter_right_exclude = "右クリックで除外",
        tooltip_filter_right_clear_exclusion = "右クリックで除外を解除",
        tooltip_show_category_messages = "%s カテゴリのメッセージを表示",
        tooltip_hide_category_messages = "%s カテゴリのメッセージを非表示",

        -- Level tooltips
        tooltip_level_trace = "詳細な TRACE デバッグメッセージを表示",
        tooltip_level_debug = "DEBUG 開発情報を表示",
        tooltip_level_info = "INFO 情報メッセージを表示",
        tooltip_level_warn = "WARN 警告メッセージを表示",
        tooltip_level_error = "ERROR エラーメッセージを表示",
        tooltip_hide_trace = "TRACE メッセージを非表示",
        tooltip_hide_debug = "DEBUG メッセージを非表示",
        tooltip_hide_info = "INFO メッセージを非表示",
        tooltip_hide_warn = "WARN メッセージを非表示",
        tooltip_hide_error = "ERROR メッセージを非表示",

        -- Category tooltips
        tooltip_toggle_category = "%s カテゴリメッセージの表示を切り替え",
        tooltip_hide_category = "すべての %s カテゴリメッセージを非表示",

        -- Log display
        no_log_entries = "ログエントリーがありません",
        no_categories_available = "利用可能なカテゴリがありません",

        -- Command input
        execute_button = "実行",
        tooltip_execute = "Lua コードを実行（Enter）",
        tooltip_command_input = "Lua コードを入力して実行\n上下キーで履歴を参照",

        -- Context menu
        context_select_all = "すべて選択",
        context_copy_entry = "エントリーをクリップボードにコピー",
        context_copy_value = "エントリーの値のみコピー",
        context_copy_metadata = "メタデータをコピー",
        context_copy_selected = "選択したエントリーをクリップボードにコピー（%d 件選択中）",
        context_filter_level = "このレベルでフィルター",
        context_filter_category = "このカテゴリでフィルター",
        context_smart_filter = "選択項目からスマートフィルター（%d 件選択中）",
        tooltip_smart_filter = "選択したすべてのレベルとカテゴリでフィルター",
        context_show_similar = "類似エントリーを表示",
        context_cut = "切り取り",
        context_copy = "コピー",
        context_paste = "貼り付け",
        context_select_all_input = "すべて選択",
        context_clear = "クリア",

        -- Metadata panel
        metadata_click_entry = "ログエントリーをクリックして詳細を表示",
        metadata_time = "時刻：%s",
        metadata_level = "レベル：%s",
        metadata_category = "カテゴリ：%s",
        metadata_message = "メッセージ：",
        metadata_title = "メタデータ：",
        metadata_no_additional = "追加のメタデータはありません",
        metadata_max_depth = "[最大深度に到達]",
        metadata_circular = "[循環参照]",
        metadata_more_lines = "... [あと %d 行]",
        metadata_more_chars = "... [あと %d 文字]",
        metadata_more_items = "... [あと %d 項目]",
        metadata_more_fields = "... [あと %d フィールド]",

        -- Status bar
        status_entries = "エントリー：%d",
        status_filtered = "フィルター済み：%d",
        status_memory = "メモリ：%.1fKB",
        status_update = "更新：%.1fms",
        status_blocked = "ブロック済み：%d",
        status_format = "エントリー：%d | フィルター済み：%d | メモリ：%.1fKB | 更新：%.1fms",
        status_format_with_blocked = "エントリー：%d | フィルター済み：%d | メモリ：%.1fKB | 更新：%.1fms | ブロック済み：%d",

        -- Notifications
        notify_applied_filter = "クイックフィルターを適用しました：%s",
        notify_saved_preset = "フィルタープリセットを保存しました：%s",
        notify_applied_preset = "フィルタープリセットを適用しました：%s",
        notify_deleted_preset = "フィルタープリセットを削除しました：%s",
        notify_copied_entry = "ログエントリーをクリップボードにコピーしました",
        notify_copied_message = "ログメッセージをクリップボードにコピーしました",
        notify_copied_metadata = "メタデータをクリップボードにコピーしました",
        notify_exported_entries = "選択した %d 件のエントリーをクリップボードにエクスポートしました",
        notify_entry_exported = "エントリーをクリップボードにエクスポートしました",
        notify_filtering_level = "レベルでフィルター：%s",
        notify_filtering_category = "カテゴリでフィルター：%s",
        notify_smart_filter = "スマートフィルター：%d レベル、%d カテゴリ",
        notify_showing_similar = "類似エントリーを表示：%s",
        notify_initialized = "BetterConsole を初期化しました - すべてのログメッセージをキャプチャ中",

        -- Warnings
        warn_no_metadata = "コピー可能なメタデータがありません",
        warn_no_selection = "エントリーが選択されていません",
        warn_preset_exists = "プリセット名が既に存在します：%s",
        warn_anti_spam = "スパムフィルター：[%s] からの高速な繰り返しメッセージをブロック中：「%s」",

        -- Errors
        error_failed_copy_entry = "エントリーのコピーに失敗しました",
        error_failed_copy_message = "エントリーメッセージのコピーに失敗しました",
        error_failed_copy_metadata = "メタデータのコピーに失敗しました",
        error_failed_export = "選択したエントリーのエクスポートに失敗しました",
        error_export_clipboard = "%s の実行に失敗しました：%s",

        -- Filter button labels
        filters_active_count = "[%d 個のフィルター]",
        filters_none = "[フィルターなし]",
        tooltip_filters_active = "有効なフィルター：%s\nクリックしてフィルター設定を開く\n右クリックですべてのフィルターをクリア",
        tooltip_filters_none = "すべてのログエントリーを表示\nクリックしてフィルター設定を開く\n右クリックですべてのフィルターをクリア",

        -- Log level names
        level_trace = "TRACE",
        level_debug = "DEBUG",
        level_info = "INFO",
        level_warn = "WARN",
        level_error = "ERROR",

        -- Category names (defaults)
        category_all = "すべて",
        category_system = "システム",
        category_console = "コンソール",
        category_anti_spam = "スパムフィルター",
        category_error_handler = "エラーハンドラー",

        -- Validation messages
        validate_level_required = "ログレベルが必要です",
        validate_level_invalid_type = "ログレベルは文字列である必要があります",
        validate_level_invalid_value = "無効なログレベル：%s。TRACE、DEBUG、INFO、WARN、ERROR のいずれかである必要があります",
        validate_category_required = "カテゴリが必要です",
        validate_category_invalid_type = "カテゴリは文字列である必要があります",
        validate_category_empty = "カテゴリを空にすることはできません",
        validate_category_too_long = "カテゴリが長すぎます（最大 %d 文字）",
        validate_category_invalid_chars = "カテゴリに無効な文字が含まれています（英数字、スペース、アンダースコア、ハイフンのみ許可）",
        validate_message_required = "メッセージが必要です",
        validate_message_too_long = "メッセージが長すぎます（最大 %d 文字）",
        validate_data_invalid_type = "データはテーブルまたは nil である必要があります",
        validate_preset_name_required = "プリセット名が必要です",
        validate_preset_name_empty = "プリセット名を空にすることはできません",
        validate_preset_name_too_long = "プリセット名が長すぎます（最大 %d 文字）",
        validate_preset_name_invalid = "プリセット名は文字列である必要があります",
        validate_filename_required = "ファイル名が必要です",
        validate_filename_empty = "ファイル名を空にすることはできません",
        validate_filename_too_long = "ファイル名が長すぎます（最大 %d 文字）",
        validate_filename_invalid_chars = "ファイル名に無効な文字が含まれています",
        validate_filename_invalid = "ファイル名は文字列である必要があります",
        validate_command_required = "コマンドが必要です",
        validate_command_empty = "コマンドを空にすることはできません",
        validate_command_too_long = "コマンドが長すぎます（最大 %d 文字）",
        validate_command_invalid = "コマンドは文字列である必要があります",

        -- Export messages
        export_no_entries = "エクスポートするエントリーがありません",
        export_success_clipboard = "%d 件をクリップボードにエクスポートしました",
        export_success_file = "%d 件を %s にエクスポートしました",
        export_failed_no_dir = "ログディレクトリが利用できないため、エクスポートできません",
        export_failed_open_file = "ファイルを開けませんでした：%s",
        export_unknown_exporter = "不明なエクスポーター：%s",
        export_failed_clipboard = "クリップボードへのエクスポートに失敗しました：%s",
        export_failed_file = "ファイルへのエクスポートに失敗しました：%s",

        -- Error types
        error_type_validation = "検証エラー",
        error_type_io = "入出力エラー",
        error_type_runtime = "ランタイムエラー",
        error_type_network = "ネットワークエラー",
        error_type_permission = "権限エラー",
        error_type_clipboard = "クリップボードエラー",
        error_type_export = "エクスポートエラー",
        error_type_command = "コマンドエラー",
        error_type_unknown = "不明なエラー",

        -- Generic error messages
        error_generic = "エラーが発生しました",
        error_context_format = " [%s]",
        error_failed_operation = "%s の実行に失敗しました：%s",
        error_no_text = "テキストが提供されていません",
        error_file_repo_unavailable = "ファイルリポジトリが利用できません",
        error_unknown_repo = "不明なリポジトリタイプ：%s",
        error_persist_failed = "ログエントリーの永続化に失敗しました",
        error_file_repo_requires_path = "ファイルリポジトリには filePath が必要です",
        error_file_open_failed = "ファイルを開けませんでした：%s",

        -- Misc
        plural_suffix = "",
        time_unknown = "不明",
        category_default = "システム",
    }
}

-- Get current language from global or default to English
local function getCurrentLanguage()
    local lang = nil
    if _G.gCurrentLanguage and type(_G.gCurrentLanguage) == "function" then
        lang = _G.gCurrentLanguage()
    elseif _G.gCurrentLanguage and type(_G.gCurrentLanguage) == "string" then
        lang = _G.gCurrentLanguage
    end

    if lang and Strings[lang] then
        return lang
    end

    return "en"
end

-- Get localized string by key
-- Falls back to English if translation not found
function Localization.get(key, ...)
    local lang = getCurrentLanguage()
    local langStrings = Strings[lang]

    local str = langStrings and langStrings[key]

    if not str and lang ~= "en" then
        str = Strings.en[key]
    end

    if not str then
        return "[" .. tostring(key) .. "]"
    end

    if select("#", ...) > 0 then
        return string.format(str, ...)
    end

    return str
end

Localization.L = Localization.get

function Localization.getCurrentLanguage()
    return getCurrentLanguage()
end

function Localization.isLanguageSupported(lang)
    return Strings[lang] ~= nil
end

function Localization.getAvailableLanguages()
    local langs = {}
    for lang in pairs(Strings) do
        table.insert(langs, lang)
    end
    table.sort(langs)
    return langs
end

BetterConsole.Localization = Localization
return Localization
