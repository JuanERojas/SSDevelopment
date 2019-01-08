.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;
.super Ljava/lang/Object;
.source "VideoCastControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrlAndBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mUrl:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;)V
    .locals 0

    .line 812
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;Landroid/net/Uri;)Z
    .locals 0

    .line 812
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->isMatch(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->mUrl:Landroid/net/Uri;

    return-object p1
.end method

.method private isMatch(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->mUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
