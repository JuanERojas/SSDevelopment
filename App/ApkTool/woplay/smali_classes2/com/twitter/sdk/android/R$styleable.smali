.class public final Lcom/twitter/sdk/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ToggleImageButton:[I

.field public static final ToggleImageButton_contentDescriptionOff:I = 0x0

.field public static final ToggleImageButton_contentDescriptionOn:I = 0x1

.field public static final ToggleImageButton_state_toggled_on:I = 0x2

.field public static final ToggleImageButton_toggleOnClick:I = 0x3

.field public static final tw__AspectRatioImageView:[I

.field public static final tw__AspectRatioImageView_tw__image_aspect_ratio:I = 0x0

.field public static final tw__AspectRatioImageView_tw__image_dimension_to_adjust:I = 0x1

.field public static final tw__TweetView:[I

.field public static final tw__TweetView_tw__action_color:I = 0x0

.field public static final tw__TweetView_tw__action_highlight_color:I = 0x1

.field public static final tw__TweetView_tw__container_bg_color:I = 0x2

.field public static final tw__TweetView_tw__primary_text_color:I = 0x3

.field public static final tw__TweetView_tw__tweet_actions_enabled:I = 0x4

.field public static final tw__TweetView_tw__tweet_id:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 434
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/sdk/android/R$styleable;->ToggleImageButton:[I

    const/4 v0, 0x2

    .line 439
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/sdk/android/R$styleable;->tw__AspectRatioImageView:[I

    const/4 v0, 0x6

    .line 442
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/sdk/android/R$styleable;->tw__TweetView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400a7
        0x7f0400a8
        0x7f04024a
        0x7f04028e
    .end array-data

    :array_1
    .array-data 4
        0x7f04029c
        0x7f04029d
    .end array-data

    :array_2
    .array-data 4
        0x7f040299
        0x7f04029a
        0x7f04029b
        0x7f04029e
        0x7f04029f
        0x7f0402a0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
