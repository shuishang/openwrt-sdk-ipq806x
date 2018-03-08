/* clutter-gst-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "ClutterGst", gir_namespace = "ClutterGst", gir_version = "1.0", lower_case_cprefix = "clutter_gst_")]
namespace ClutterGst {
	namespace Version {
		[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cname = "CLUTTER_GST_VERSION_HEX")]
		public const int HEX;
		[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cname = "CLUTTER_GST_MAJOR_VERSION")]
		public const int MAJOR;
		[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cname = "CLUTTER_GST_MICRO_VERSION")]
		public const int MICRO;
		[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cname = "CLUTTER_GST_MINOR_VERSION")]
		public const int MINOR;
		[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cname = "CLUTTER_GST_VERSION_S")]
		public const string STRING;
		[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cname = "CLUTTER_GST_CHECK_VERSION")]
		public static bool check (int major, int minor, int micro);
	}
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h", type_id = "clutter_gst_video_sink_get_type ()")]
	public class VideoSink : Gst.BaseSink, Gst.ImplementsInterface, Gst.Navigation {
		[CCode (has_construct_function = false, type = "GstElement*")]
		[Deprecated (since = "1.6")]
		public VideoSink (Clutter.Texture texture);
		[NoAccessorMethod]
		public Clutter.Texture texture { owned get; set; }
		[NoAccessorMethod]
		public int update_priority { get; set; }
	}
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h", type_id = "clutter_gst_video_texture_get_type ()")]
	public class VideoTexture : Clutter.Texture, Atk.Implementor, Clutter.Animatable, Clutter.Container, Clutter.Media, Clutter.Scriptable, ClutterGst.Player {
		[CCode (has_construct_function = false, type = "ClutterActor*")]
		public VideoTexture ();
		public unowned Cogl.Handle get_idle_material ();
		public void set_idle_material (Cogl.Handle material);
		[NoAccessorMethod]
		public Gst.Fraction pixel_aspect_ratio { get; set; }
	}
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h")]
	public interface Player : Clutter.Media, GLib.Object, Clutter.Media {
		public static void class_init (GLib.ObjectClass object_class);
		public void deinit ();
		public abstract int get_audio_stream ();
		public abstract unowned GLib.List<string> get_audio_streams ();
		public abstract ClutterGst.BufferingMode get_buffering_mode ();
		public abstract bool get_idle ();
		public abstract bool get_in_seek ();
		public abstract unowned Gst.Element get_pipeline ();
		public abstract ClutterGst.SeekFlags get_seek_flags ();
		public abstract int get_subtitle_track ();
		public abstract unowned GLib.List<string> get_subtitle_tracks ();
		public abstract string get_user_agent ();
		public bool init ();
		public abstract void set_audio_stream (int index_);
		public abstract void set_buffering_mode (ClutterGst.BufferingMode mode);
		public abstract void set_seek_flags (ClutterGst.SeekFlags flags);
		public abstract void set_subtitle_track (int index_);
		public abstract void set_user_agent (string user_agent);
		public abstract int audio_stream { get; set; }
		public abstract void* audio_streams { get; }
		public abstract bool idle { get; }
		public abstract Cogl.Handle idle_material { get; set; }
		public abstract bool in_seek { get; }
		public abstract ClutterGst.SeekFlags seek_flags { get; set; }
		public abstract int subtitle_track { get; set; }
		public abstract void* subtitle_tracks { get; }
		public abstract string user_agent { owned get; set; }
		public virtual signal void download_buffering (double start, double stop);
	}
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cprefix = "CLUTTER_GST_BUFFERING_MODE_", type_id = "clutter_gst_buffering_mode_get_type ()")]
	public enum BufferingMode {
		STREAM,
		DOWNLOAD
	}
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h", cprefix = "CLUTTER_GST_SEEK_FLAG_", type_id = "clutter_gst_seek_flags_get_type ()")]
	[Flags]
	public enum SeekFlags {
		NONE,
		ACCURATE
	}
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h")]
	public static Clutter.InitError init ([CCode (array_length_cname = "argc", array_length_pos = 0.5)] ref unowned string[]? argv);
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h")]
	public static Clutter.InitError init_with_args ([CCode (array_length_cname = "argc", array_length_pos = 0.5)] ref unowned string[]? argv, string parameter_string, GLib.OptionEntry entries, string translation_domain) throws GLib.Error;
	[CCode (cheader_filename = "clutter-gst/clutter-gst.h")]
	public static void player_class_init (GLib.ObjectClass object_class);
}
