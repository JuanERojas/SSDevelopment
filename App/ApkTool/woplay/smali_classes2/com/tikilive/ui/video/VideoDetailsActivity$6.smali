.class Lcom/tikilive/ui/video/VideoDetailsActivity$6;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;


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

    .line 223
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$100(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f120176

    if-lez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v3, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$500(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$100(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadBreadcrumbs(IZLcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    goto/16 :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$200(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$500(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$200(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadBreadcrumbs(IZLcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    goto/16 :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1300(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1300(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v2, 0x7f1201fb

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$300(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v2, 0x7f120185

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$500(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6$3;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$3;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadSearchResults(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1500(Lcom/tikilive/ui/video/VideoDetailsActivity;)Z

    move-result v0

    const v2, 0x7f120174

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v4, 0x7f120229

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$300(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$700(Lcom/tikilive/ui/video/VideoDetailsActivity;I)V

    .line 297
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const/16 v2, 0x14

    new-instance v3, Lcom/tikilive/ui/video/VideoDetailsActivity$6$4;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$4;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadLatestEpisodes(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1700(Lcom/tikilive/ui/video/VideoDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v3, 0x7f1201d8

    invoke-virtual {v1, v3}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$300(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$700(Lcom/tikilive/ui/video/VideoDetailsActivity;I)V

    .line 310
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6$5;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$5;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadPopularEpisodes(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$800(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    .line 319
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1900(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    :goto_0
    return-void
.end method
