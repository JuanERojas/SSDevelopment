.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ViewHolderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1178
    check-cast p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1180
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    goto :goto_0

    .line 1183
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    :goto_0
    return-void
.end method