.class Landroid/support/v17/leanback/app/BackgroundManager$1;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BackgroundManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager;)V
    .locals 0

    .line 411
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance p1, Landroid/support/v17/leanback/app/BackgroundManager$1$1;

    invoke-direct {p1, p0}, Landroid/support/v17/leanback/app/BackgroundManager$1$1;-><init>(Landroid/support/v17/leanback/app/BackgroundManager$1;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 427
    iget-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v0, Landroid/support/v17/leanback/R$id;->background_imageout:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    .line 430
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$1;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
