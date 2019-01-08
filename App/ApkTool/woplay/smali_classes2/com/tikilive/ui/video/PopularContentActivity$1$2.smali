.class Lcom/tikilive/ui/video/PopularContentActivity$1$2;
.super Ljava/lang/Object;
.source "PopularContentActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/PopularContentActivity$1;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/PopularContentActivity$1;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2;->this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2;->this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2;->this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    const v1, 0x7f120181

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/PopularContentActivity;->showLoadingFragment(I)V

    .line 147
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2;->this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    new-instance v1, Lcom/tikilive/ui/video/PopularContentActivity$1$2$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/PopularContentActivity$1$2$1;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$1$2;)V

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/PopularContentActivity;->access$000(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    return-void
.end method
