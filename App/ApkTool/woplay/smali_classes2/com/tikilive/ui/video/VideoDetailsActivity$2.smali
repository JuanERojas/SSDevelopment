.class Lcom/tikilive/ui/video/VideoDetailsActivity$2;
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

    .line 168
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const-class v1, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 172
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$000(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "network_id"

    .line 173
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$200(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->overridePendingTransition(II)V

    return-void
.end method
