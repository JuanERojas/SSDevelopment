.class Lcom/tikilive/ui/video/PopularContentActivity$1$2$1;
.super Ljava/lang/Object;
.source "PopularContentActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/PopularContentActivity$1$2;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/video/PopularContentActivity$1$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/PopularContentActivity$1$2;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2$1;->this$2:Lcom/tikilive/ui/video/PopularContentActivity$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2$1;->this$2:Lcom/tikilive/ui/video/PopularContentActivity$1$2;

    iget-object v0, v0, Lcom/tikilive/ui/video/PopularContentActivity$1$2;->this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->newInstance()Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2$1;->this$2:Lcom/tikilive/ui/video/PopularContentActivity$1$2;

    iget-object v1, v1, Lcom/tikilive/ui/video/PopularContentActivity$1$2;->this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;

    iget-object v1, v1, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/PopularContentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 155
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 156
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 157
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1$2$1;->this$2:Lcom/tikilive/ui/video/PopularContentActivity$1$2;

    iget-object v0, v0, Lcom/tikilive/ui/video/PopularContentActivity$1$2;->this$1:Lcom/tikilive/ui/video/PopularContentActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tikilive/ui/video/PopularContentActivity;->overridePendingTransition(II)V

    return-void
.end method
