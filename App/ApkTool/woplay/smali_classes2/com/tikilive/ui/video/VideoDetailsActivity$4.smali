.class Lcom/tikilive/ui/video/VideoDetailsActivity$4;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 196
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 199
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v1, 0x7f12022c

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$300(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 200
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const-class v1, Lcom/tikilive/ui/video/SearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$4;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->overridePendingTransition(II)V

    return-void
.end method
