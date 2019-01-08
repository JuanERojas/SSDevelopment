.class public final Lcom/facebook/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CardView:[I

.field public static final CardView_android_minHeight:I = 0x1

.field public static final CardView_android_minWidth:I = 0x0

.field public static final CardView_cardBackgroundColor:I = 0x2

.field public static final CardView_cardCornerRadius:I = 0x3

.field public static final CardView_cardElevation:I = 0x4

.field public static final CardView_cardMaxElevation:I = 0x5

.field public static final CardView_cardPreventCornerOverlap:I = 0x6

.field public static final CardView_cardUseCompatPadding:I = 0x7

.field public static final CardView_contentPadding:I = 0x8

.field public static final CardView_contentPaddingBottom:I = 0x9

.field public static final CardView_contentPaddingLeft:I = 0xa

.field public static final CardView_contentPaddingRight:I = 0xb

.field public static final CardView_contentPaddingTop:I = 0xc

.field public static final com_facebook_like_view:[I

.field public static final com_facebook_like_view_com_facebook_auxiliary_view_position:I = 0x0

.field public static final com_facebook_like_view_com_facebook_foreground_color:I = 0x1

.field public static final com_facebook_like_view_com_facebook_horizontal_alignment:I = 0x2

.field public static final com_facebook_like_view_com_facebook_object_id:I = 0x3

.field public static final com_facebook_like_view_com_facebook_object_type:I = 0x4

.field public static final com_facebook_like_view_com_facebook_style:I = 0x5

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_com_facebook_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_com_facebook_login_text:I = 0x1

.field public static final com_facebook_login_view_com_facebook_logout_text:I = 0x2

.field public static final com_facebook_login_view_com_facebook_tooltip_mode:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_com_facebook_is_cropped:I = 0x0

.field public static final com_facebook_profile_picture_view_com_facebook_preset_size:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    .line 218
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/R$styleable;->CardView:[I

    const/4 v0, 0x6

    .line 232
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_like_view:[I

    const/4 v0, 0x4

    .line 239
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_login_view:[I

    const/4 v0, 0x2

    .line 244
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    :array_0
    .array-data 4
        0x101013f
        0x1010140
        0x7f040067
        0x7f040068
        0x7f040069
        0x7f04006b
        0x7f04006c
        0x7f04006e
        0x7f0400af
        0x7f0400b0
        0x7f0400b1
        0x7f0400b2
        0x7f0400b3
    .end array-data

    :array_1
    .array-data 4
        0x7f040096
        0x7f040098
        0x7f040099
        0x7f04009d
        0x7f04009e
        0x7f0400a0
    .end array-data

    :array_2
    .array-data 4
        0x7f040097
        0x7f04009b
        0x7f04009c
        0x7f0400a1
    .end array-data

    :array_3
    .array-data 4
        0x7f04009a
        0x7f04009f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
