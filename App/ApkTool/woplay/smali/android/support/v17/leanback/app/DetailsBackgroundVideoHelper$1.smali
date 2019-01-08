.class Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;
.super Landroid/support/v17/leanback/widget/ParallaxTarget;
.source "DetailsBackgroundVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->startParallax()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0

    .line 93
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ParallaxTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->access$000(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->access$000(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;I)V

    :goto_0
    return-void
.end method
