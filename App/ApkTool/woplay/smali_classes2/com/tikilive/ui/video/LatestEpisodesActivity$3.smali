.class Lcom/tikilive/ui/video/LatestEpisodesActivity$3;
.super Ljava/lang/Object;
.source "LatestEpisodesActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/LatestEpisodesActivity;->loadLatestEpisodes(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/LatestEpisodesActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 162
    invoke-static {}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1200c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
