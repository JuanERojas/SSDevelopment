.class Landroid/support/v17/leanback/app/BrowseFragment$11;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2

    .line 1521
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/HeadersFragment;->getSelectedPosition()I

    move-result p1

    .line 1522
    sget-boolean p2, Landroid/support/v17/leanback/app/BrowseFragment;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "BrowseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header selected position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->onRowSelected(I)V

    return-void
.end method
