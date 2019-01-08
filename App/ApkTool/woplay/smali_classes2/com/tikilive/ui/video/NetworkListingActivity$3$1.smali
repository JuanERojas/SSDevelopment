.class Lcom/tikilive/ui/video/NetworkListingActivity$3$1;
.super Ljava/lang/Object;
.source "NetworkListingActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/OnLoadedVideosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/NetworkListingActivity$3;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/NetworkListingActivity$3;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/NetworkListingActivity$3;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Video;

    .line 189
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$3;

    iget-object v1, v1, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/NetworkListingActivity;->access$400(Lcom/tikilive/ui/video/NetworkListingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$3;

    iget-object p1, p1, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$3;

    iget v0, v0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->val$categoryId:I

    invoke-static {v0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->newInstance(I)Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 194
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 195
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
