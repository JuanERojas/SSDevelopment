.class Landroid/support/v17/leanback/app/HeadersFragment$1;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "HeadersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/HeadersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/HeadersFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/HeadersFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersFragment$1;->this$0:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 140
    new-instance v1, Landroid/support/v17/leanback/app/HeadersFragment$1$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/HeadersFragment$1$1;-><init>(Landroid/support/v17/leanback/app/HeadersFragment$1;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment$1;->this$0:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/HeadersFragment;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v1, :cond_0

    .line 151
    iget-object p1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget-object v0, Landroid/support/v17/leanback/app/HeadersFragment;->sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 153
    :cond_0
    sget-object p1, Landroid/support/v17/leanback/app/HeadersFragment;->sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method