.class Lcom/tikilive/ui/video/VideoDetailsActivity$6$5;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$6;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$5;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$5;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$800(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    .line 314
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$5;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1800(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    return-void
.end method
