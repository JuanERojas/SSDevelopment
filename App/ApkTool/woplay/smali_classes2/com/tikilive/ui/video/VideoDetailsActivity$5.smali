.class Lcom/tikilive/ui/video/VideoDetailsActivity$5;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$5;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V
    .locals 1

    .line 211
    invoke-virtual {p1}, Lcom/tikilive/ui/application/MyApplication;->hasPermissionUseSearch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$5;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$400(Lcom/tikilive/ui/video/VideoDetailsActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$5;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$400(Lcom/tikilive/ui/video/VideoDetailsActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
