.class Lcom/tikilive/ui/video/VideoPlaybackActivity$3;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$3;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 298
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$3;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->closePickSubstitles()V

    return-void
.end method
