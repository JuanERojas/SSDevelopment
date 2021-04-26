.class Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelectionRunnable"
.end annotation


# static fields
.field static final TYPE_INTERNAL_SYNC:I = 0x0

.field static final TYPE_INVALID:I = -0x1

.field static final TYPE_USER_REQUEST:I = 0x1


# instance fields
.field private mPosition:I

.field private mSmooth:Z

.field private mType:I

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    .line 258
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 259
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mType:I

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mSmooth:Z

    return-void
.end method


# virtual methods
.method post(IIZ)V
    .locals 1

    .line 242
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mType:I

    if-lt p2, v0, :cond_0

    .line 243
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 244
    iput p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mType:I

    .line 245
    iput-boolean p3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mSmooth:Z

    .line 246
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 247
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 253
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mPosition:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mSmooth:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSelection(IZ)V

    .line 254
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->reset()V

    return-void
.end method