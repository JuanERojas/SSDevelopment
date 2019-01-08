.class Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperDefault;
.super Ljava/lang/Object;
.source "LeanbackTransitionHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LeanbackTransitionHelperDefault"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 61
    sget v0, Landroid/support/v17/leanback/R$transition;->lb_title_in:I

    invoke-static {p1, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 66
    sget v0, Landroid/support/v17/leanback/R$transition;->lb_title_out:I

    invoke-static {p1, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
