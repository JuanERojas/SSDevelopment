.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 105
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    .line 116
    :pswitch_0
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iput-boolean p1, v1, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    .line 117
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iput-boolean v0, v1, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    .line 112
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    :goto_0
    const/4 v1, 0x1

    .line 121
    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v2, p2, p3}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->onInfo(II)Z

    move-result p2

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
