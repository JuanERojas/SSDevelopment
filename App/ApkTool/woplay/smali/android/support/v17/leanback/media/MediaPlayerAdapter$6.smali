.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .line 91
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    sget v2, Landroid/support/v17/leanback/R$string;->lb_media_player_error:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p1, v0, p2, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V

    .line 93
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->onError(II)Z

    move-result p1

    return p1
.end method
