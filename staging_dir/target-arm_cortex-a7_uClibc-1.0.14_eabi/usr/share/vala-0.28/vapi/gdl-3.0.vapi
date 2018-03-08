/* gdl-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gdl", gir_namespace = "Gdl", gir_version = "3", lower_case_cprefix = "gdl_")]
namespace Gdl {
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_get_type ()")]
	public class Dock : Gdl.DockObject, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Dock ();
		public void add_floating_item (Gdl.DockItem item, int x, int y, int width, int height);
		public void add_item (Gdl.DockItem item, Gdl.DockPlacement placement);
		public unowned Gdl.DockItem get_item_by_name (string name);
		public GLib.List<weak Gdl.DockObject> get_named_items ();
		[Deprecated (since = "3.6")]
		public unowned Gdl.DockPlaceholder get_placeholder_by_name (string name);
		public unowned Gdl.DockObject get_root ();
		public void hide_preview ();
		public Gtk.Widget new_from (bool floating);
		public void set_skip_taskbar (bool skip);
		public void show_preview (Gdk.Rectangle rect);
		[Deprecated (since = "3.6")]
		public void xor_rect (Gdk.Rectangle rect);
		[Deprecated (since = "3.6")]
		public void xor_rect_hide ();
		[NoAccessorMethod]
		public string default_title { owned get; set; }
		[NoAccessorMethod]
		public bool floating { get; construct; }
		[NoAccessorMethod]
		public int floatx { get; set construct; }
		[NoAccessorMethod]
		public int floaty { get; set construct; }
		[NoAccessorMethod]
		public int height { get; set construct; }
		[NoAccessorMethod]
		public bool skip_taskbar { get; set construct; }
		[NoAccessorMethod]
		public int width { get; set construct; }
		public virtual signal void layout_changed ();
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_bar_get_type ()")]
	public class DockBar : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockBar (GLib.Object? master);
		[Deprecated (since = "3.6")]
		public Gtk.Orientation get_orientation ();
		public Gdl.DockBarStyle get_style ();
		[Deprecated (since = "3.6")]
		public void set_orientation (Gtk.Orientation orientation);
		public void set_style (Gdl.DockBarStyle style);
		[NoAccessorMethod]
		public Gdl.DockBarStyle dockbar_style { get; set construct; }
		[NoAccessorMethod]
		public GLib.Object master { owned get; set; }
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_item_get_type ()")]
	public class DockItem : Gdl.DockObject, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockItem (string name, string long_name, Gdl.DockItemBehavior behavior);
		public void bind (Gtk.Widget dock);
		public void dock_to (Gdl.DockItem? target, Gdl.DockPlacement position, int docking_param);
		public Gdl.DockItemBehavior get_behavior_flags ();
		public unowned Gtk.Widget get_child ();
		public void get_drag_area (Gdk.Rectangle rect);
		public unowned Gtk.Widget get_grip ();
		public Gtk.Orientation get_orientation ();
		public unowned Gtk.Widget get_tablabel ();
		public void hide_grip ();
		public void hide_item ();
		public void iconify_item ();
		public bool is_closed ();
		public bool is_iconified ();
		public bool is_placeholder ();
		public void @lock ();
		public void notify_deselected ();
		public void notify_selected ();
		public bool or_child_has_focus ();
		public void preferred_size (Gtk.Requisition req);
		public void set_behavior_flags (Gdl.DockItemBehavior behavior, bool clear);
		public void set_child (Gtk.Widget? child);
		public void set_default_position (Gdl.DockObject reference);
		[CCode (cname = "gdl_dock_item_class_set_has_grip")]
		public class void set_has_grip (bool has_grip);
		public virtual void set_orientation (Gtk.Orientation orientation);
		public void set_tablabel (Gtk.Widget tablabel);
		public void show_grip ();
		public void show_item ();
		public void unbind ();
		public void unlock ();
		public void unset_behavior_flags (Gdl.DockItemBehavior behavior);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockItem.with_pixbuf_icon (string name, string long_name, Gdk.Pixbuf pixbuf_icon, Gdl.DockItemBehavior behavior);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockItem.with_stock (string name, string long_name, string stock_id, Gdl.DockItemBehavior behavior);
		[NoAccessorMethod]
		public Gdl.DockItemBehavior behavior { get; set; }
		[NoAccessorMethod]
		public bool closed { get; set; }
		[NoAccessorMethod]
		public bool iconified { get; set; }
		[NoAccessorMethod]
		public bool locked { get; set; }
		public Gtk.Orientation orientation { get; set construct; }
		[NoAccessorMethod]
		public int preferred_height { get; set; }
		[NoAccessorMethod]
		public int preferred_width { get; set; }
		[NoAccessorMethod]
		public bool resize { get; set; }
		public signal void deselected ();
		public virtual signal void dock_drag_begin ();
		public virtual signal void dock_drag_end (bool cancelled);
		public virtual signal void dock_drag_motion (Gdk.Device device, int x, int y);
		public virtual signal void move_focus_child (Gtk.DirectionType direction);
		public signal void selected ();
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_item_button_image_get_type ()")]
	public class DockItemButtonImage : Gtk.Widget, Atk.Implementor, Gtk.Buildable {
		public Gdl.DockItemButtonImageType image_type;
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockItemButtonImage (Gdl.DockItemButtonImageType image_type);
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_item_grip_get_type ()")]
	public class DockItemGrip : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockItemGrip (Gdl.DockItem item);
		public bool has_event (Gdk.Event event);
		public void hide_handle ();
		public void set_cursor (bool in_drag);
		public void set_label (Gtk.Widget label);
		public void show_handle ();
		public Gdl.DockItem item { construct; }
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_layout_get_type ()")]
	public class DockLayout : GLib.Object {
		[CCode (has_construct_function = false)]
		public DockLayout (GLib.Object master);
		public void attach (Gdl.DockMaster master);
		public void delete_layout (string name);
		public GLib.List<string> get_layouts (bool include_default);
		public unowned GLib.Object get_master ();
		public bool is_dirty ();
		public bool load_from_file (string filename);
		public bool load_layout (string? name);
		public void save_layout (string? name);
		public bool save_to_file (string filename);
		public void set_master (GLib.Object master);
		[NoAccessorMethod]
		public bool dirty { get; }
		public GLib.Object master { get; set; }
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_master_get_type ()")]
	public class DockMaster : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DockMaster ();
		public void add (Gdl.DockObject object);
		public void @foreach (GLib.Func function);
		public void foreach_toplevel (bool include_controller, GLib.Func function);
		public unowned Gdl.DockObject get_controller ();
		public string get_dock_name ();
		public unowned Gdl.DockObject get_object (string nick_name);
		public void remove (Gdl.DockObject object);
		public void set_controller (Gdl.DockObject new_controller);
		[NoAccessorMethod]
		public string default_title { owned get; set; }
		[NoAccessorMethod]
		public int locked { get; set; }
		[NoAccessorMethod]
		public Gdl.SwitcherStyle switcher_style { get; set; }
		[NoAccessorMethod]
		public Gtk.PositionType tab_pos { get; set; }
		[NoAccessorMethod]
		public bool tab_reorderable { get; set; }
		public virtual signal void layout_changed ();
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_notebook_get_type ()")]
	public class DockNotebook : Gdl.DockItem, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockNotebook ();
		[NoAccessorMethod]
		public int page { get; set; }
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_object_get_type ()")]
	public class DockObject : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		public Gdl.DockObjectFlags deprecated_flags;
		public weak GLib.Object deprecated_master;
		[CCode (has_construct_function = false)]
		protected DockObject ();
		public void bind (GLib.Object master);
		public virtual bool child_placement (Gdl.DockObject child, Gdl.DockPlacement? placement);
		public virtual bool dock_request (int x, int y, Gdl.DockRequest request);
		public void freeze ();
		public unowned Gdl.DockObject get_controller ();
		public unowned string get_long_name ();
		public unowned GLib.Object get_master ();
		public unowned Gdl.DockObject get_parent_object ();
		public unowned Gdk.Pixbuf get_pixbuf ();
		public unowned string get_stock_id ();
		public unowned Gdl.Dock get_toplevel ();
		public bool is_automatic ();
		public bool is_bound ();
		public bool is_closed ();
		public bool is_compound ();
		public bool is_frozen ();
		public void layout_changed_notify ();
		public static unowned string nick_from_type (GLib.Type type);
		public virtual void present (Gdl.DockObject? child);
		public virtual void reduce ();
		public virtual bool reorder (Gdl.DockObject child, Gdl.DockPlacement new_position, GLib.Value? other_data);
		public void set_long_name (string name);
		public void set_manual ();
		public void set_pixbuf (Gdk.Pixbuf? icon);
		public void set_stock_id (string stock_id);
		public static GLib.Type set_type_for_nick (string nick, GLib.Type type);
		public void thaw ();
		public static GLib.Type type_from_nick (string nick);
		public void unbind ();
		public string long_name { get; set construct; }
		[NoAccessorMethod]
		public Gdl.DockMaster master { owned get; set construct; }
		public string name { get; construct; }
		[NoAccessorMethod]
		public void* pixbuf_icon { get; set; }
		public string stock_id { get; set construct; }
		[HasEmitter]
		public virtual signal void detach (bool recursive);
		[HasEmitter]
		public virtual signal void dock (Gdl.DockObject requestor, Gdl.DockPlacement position, GLib.Value other_data);
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_paned_get_type ()")]
	public class DockPaned : Gdl.DockItem, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DockPaned (Gtk.Orientation orientation);
		[NoAccessorMethod]
		public uint position { get; set; }
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_param_get_type ()")]
	public class DockParam {
		[CCode (has_construct_function = false)]
		protected DockParam ();
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_placeholder_get_type ()")]
	public class DockPlaceholder : Gdl.DockObject, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Deprecated (since = "3.6")]
		public DockPlaceholder (string name, Gdl.DockObject object, Gdl.DockPlacement position, bool sticky);
		[Deprecated (since = "3.6")]
		public void attach (Gdl.DockObject object);
		[NoAccessorMethod]
		public bool floating { get; construct; }
		[NoAccessorMethod]
		public int floatx { get; construct; }
		[NoAccessorMethod]
		public int floaty { get; construct; }
		[NoAccessorMethod]
		public int height { get; set construct; }
		[NoAccessorMethod]
		public Gdl.DockObject host { owned get; set; }
		[NoAccessorMethod]
		public Gdl.DockPlacement next_placement { get; set; }
		[NoAccessorMethod]
		public bool sticky { get; construct; }
		[NoAccessorMethod]
		public int width { get; set construct; }
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_dock_tablabel_get_type ()")]
	public class DockTablabel : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		public bool active;
		public uint drag_handle_size;
		public weak Gdk.EventButton drag_start_event;
		public weak Gdk.Window event_window;
		public bool pre_drag;
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Deprecated (since = "3.6")]
		public DockTablabel (Gdl.DockItem item);
		[Deprecated (since = "3.6")]
		public void activate ();
		[Deprecated (since = "3.6")]
		public void deactivate ();
		[NoAccessorMethod]
		public Gdl.DockItem item { owned get; set; }
		public virtual signal void button_pressed_handle (Gdk.Event event);
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_preview_window_get_type ()")]
	public class PreviewWindow : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public PreviewWindow ();
		public void update (Gdk.Rectangle rect);
	}
	[CCode (cheader_filename = "gdl/gdl.h", type_id = "gdl_switcher_get_type ()")]
	public class Switcher : Gtk.Notebook, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Switcher ();
		public int insert_page (Gtk.Widget page, Gtk.Widget tab_widget, string label, string tooltips, string stock_id, Gdk.Pixbuf pixbuf_icon, int position);
		[NoAccessorMethod]
		public Gdl.SwitcherStyle switcher_style { get; set; }
		[NoAccessorMethod]
		public Gtk.PositionType tab_pos { get; set; }
		[NoAccessorMethod]
		public bool tab_reorderable { get; set; }
	}
	[CCode (cheader_filename = "gdl/gdl.h", has_type_id = false)]
	public struct DockRequest {
		public weak Gdl.DockObject applicant;
		public weak Gdl.DockObject target;
		public Gdl.DockPlacement position;
		public Cairo.RectangleInt rect;
		public GLib.Value extra;
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_DOCK_BAR_", type_id = "gdl_dock_bar_style_get_type ()")]
	public enum DockBarStyle {
		ICONS,
		TEXT,
		BOTH,
		AUTO
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_DOCK_ITEM_BEH_", type_id = "gdl_dock_item_behavior_get_type ()")]
	[Flags]
	public enum DockItemBehavior {
		NORMAL,
		NEVER_FLOATING,
		NEVER_VERTICAL,
		NEVER_HORIZONTAL,
		LOCKED,
		CANT_DOCK_TOP,
		CANT_DOCK_BOTTOM,
		CANT_DOCK_LEFT,
		CANT_DOCK_RIGHT,
		CANT_DOCK_CENTER,
		CANT_CLOSE,
		CANT_ICONIFY,
		NO_GRIP
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_DOCK_ITEM_BUTTON_IMAGE_", has_type_id = false)]
	public enum DockItemButtonImageType {
		CLOSE,
		ICONIFY
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_DOCK_", type_id = "gdl_dock_item_flags_get_type ()")]
	[Deprecated (since = "3.6")]
	[Flags]
	public enum DockItemFlags {
		IN_DRAG,
		IN_PREDRAG,
		ICONIFIED,
		USER_ACTION
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_DOCK_", type_id = "gdl_dock_object_flags_get_type ()")]
	[Flags]
	public enum DockObjectFlags {
		AUTOMATIC,
		ATTACHED,
		IN_REFLOW,
		IN_DETACH
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_DOCK_PARAM_", type_id = "gdl_dock_param_flags_get_type ()")]
	[Flags]
	public enum DockParamFlags {
		EXPORT,
		AFTER
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_DOCK_", type_id = "gdl_dock_placement_get_type ()")]
	public enum DockPlacement {
		NONE,
		TOP,
		BOTTOM,
		RIGHT,
		LEFT,
		CENTER,
		FLOATING
	}
	[CCode (cheader_filename = "gdl/gdl.h", cprefix = "GDL_SWITCHER_STYLE_", type_id = "gdl_switcher_style_get_type ()")]
	public enum SwitcherStyle {
		TEXT,
		ICON,
		BOTH,
		TOOLBAR,
		TABS,
		NONE
	}
	[CCode (cheader_filename = "gdl/gdl.h", cname = "GDL_DOCK_MASTER_PROPERTY")]
	public const string DOCK_MASTER_PROPERTY;
	[CCode (cheader_filename = "gdl/gdl.h", cname = "GDL_DOCK_NAME_PROPERTY")]
	public const string DOCK_NAME_PROPERTY;
	[CCode (cheader_filename = "gdl/gdl.h", cname = "GDL_DOCK_OBJECT_FLAGS_SHIFT")]
	[Deprecated (since = "3.6")]
	public const int DOCK_OBJECT_FLAGS_SHIFT;
	[CCode (cheader_filename = "gdl/gdl.h")]
	public static void marshal_VOID__OBJECT_ENUM_BOXED (GLib.Closure closure, GLib.Value return_value, uint n_param_values, GLib.Value param_values, void* invocation_hint, void* marshal_data);
	[CCode (cheader_filename = "gdl/gdl.h")]
	public static void marshal_VOID__OBJECT_INT_INT (GLib.Closure closure, GLib.Value return_value, uint n_param_values, GLib.Value param_values, void* invocation_hint, void* marshal_data);
	[CCode (cheader_filename = "gdl/gdl.h")]
	public static void marshal_VOID__UINT_UINT (GLib.Closure closure, GLib.Value return_value, uint n_param_values, GLib.Value param_values, void* invocation_hint, void* marshal_data);
}
