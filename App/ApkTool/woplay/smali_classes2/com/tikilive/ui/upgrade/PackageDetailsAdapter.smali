.class public Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PackageDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;,
        Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/support/v7/app/AppCompatActivity;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/upgrade/PackageDetailsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addBlank()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/tikilive/ui/upgrade/PackageDetailsItem;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/tikilive/ui/upgrade/PackageDetailsItem;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addChannel(Lcom/tikilive/ui/model/Channel;Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    .line 32
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    new-instance v0, Lcom/tikilive/ui/upgrade/PackageDetailsItem;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/tikilive/ui/upgrade/PackageDetailsItem;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/upgrade/PackageDetailsItem;

    iget p1, p1, Lcom/tikilive/ui/upgrade/PackageDetailsItem;->viewType:I

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 64
    invoke-virtual {p0, p2}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    check-cast p1, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mItems:Ljava/util/List;

    .line 69
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/upgrade/PackageDetailsItem;

    iget-object p2, p2, Lcom/tikilive/ui/upgrade/PackageDetailsItem;->object:Ljava/lang/Object;

    check-cast p2, Lcom/tikilive/ui/model/Channel;

    .line 66
    invoke-static {v0, p1, p2}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;->bind(Landroid/content/Context;Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;Lcom/tikilive/ui/model/Channel;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :pswitch_0
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {p2, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_1
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {p2, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
