.class public final Lcom/google/android/exoplayer2/ui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_resize_mode:I = 0x0

.field public static final DefaultTimeBar:[I

.field public static final DefaultTimeBar_ad_marker_color:I = 0x0

.field public static final DefaultTimeBar_ad_marker_width:I = 0x1

.field public static final DefaultTimeBar_bar_height:I = 0x2

.field public static final DefaultTimeBar_buffered_color:I = 0x3

.field public static final DefaultTimeBar_played_ad_marker_color:I = 0x4

.field public static final DefaultTimeBar_played_color:I = 0x5

.field public static final DefaultTimeBar_scrubber_color:I = 0x6

.field public static final DefaultTimeBar_scrubber_disabled_size:I = 0x7

.field public static final DefaultTimeBar_scrubber_dragged_size:I = 0x8

.field public static final DefaultTimeBar_scrubber_drawable:I = 0x9

.field public static final DefaultTimeBar_scrubber_enabled_size:I = 0xa

.field public static final DefaultTimeBar_touch_target_height:I = 0xb

.field public static final DefaultTimeBar_unplayed_color:I = 0xc

.field public static final PlayerControlView:[I

.field public static final PlayerControlView_controller_layout_id:I = 0x0

.field public static final PlayerControlView_fastforward_increment:I = 0x1

.field public static final PlayerControlView_repeat_toggle_modes:I = 0x2

.field public static final PlayerControlView_rewind_increment:I = 0x3

.field public static final PlayerControlView_show_shuffle_button:I = 0x4

.field public static final PlayerControlView_show_timeout:I = 0x5

.field public static final PlayerView:[I

.field public static final PlayerView_auto_show:I = 0x0

.field public static final PlayerView_controller_layout_id:I = 0x1

.field public static final PlayerView_default_artwork:I = 0x2

.field public static final PlayerView_fastforward_increment:I = 0x3

.field public static final PlayerView_hide_during_ads:I = 0x4

.field public static final PlayerView_hide_on_touch:I = 0x5

.field public static final PlayerView_player_layout_id:I = 0x6

.field public static final PlayerView_repeat_toggle_modes:I = 0x7

.field public static final PlayerView_resize_mode:I = 0x8

.field public static final PlayerView_rewind_increment:I = 0x9

.field public static final PlayerView_show_shuffle_button:I = 0xa

.field public static final PlayerView_show_timeout:I = 0xb

.field public static final PlayerView_shutter_background_color:I = 0xc

.field public static final PlayerView_surface_type:I = 0xd

.field public static final PlayerView_use_artwork:I = 0xe

.field public static final PlayerView_use_controller:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 121
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04020f

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout:[I

    const/16 v0, 0xd

    .line 123
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    const/4 v0, 0x6

    .line 137
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    const/16 v0, 0x10

    .line 144
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView:[I

    return-void

    :array_0
    .array-data 4
        0x7f040024
        0x7f040025
        0x7f040040
        0x7f040058
        0x7f0401fb
        0x7f0401fc
        0x7f040222
        0x7f040223
        0x7f040224
        0x7f040225
        0x7f040226
        0x7f040295
        0x7f0402a2
    .end array-data

    :array_1
    .array-data 4
        0x7f0400b6
        0x7f0400f4
        0x7f04020d
        0x7f040215
        0x7f040239
        0x7f04023a
    .end array-data

    :array_2
    .array-data 4
        0x7f040039
        0x7f0400b6
        0x7f0400c6
        0x7f0400f4
        0x7f04013e
        0x7f04013f
        0x7f0401fd
        0x7f04020d
        0x7f04020f
        0x7f040215
        0x7f040239
        0x7f04023a
        0x7f04023c
        0x7f040254
        0x7f0402a5
        0x7f0402a6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
