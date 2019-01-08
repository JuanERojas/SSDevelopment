.class public Lcom/tikilive/ui/video/VideoLibraryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VideoLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;,
        Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;,
        Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;
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

.field private final mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/video/VideoLibraryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCategory(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/tikilive/ui/video/VideoLibraryItem;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/tikilive/ui/video/VideoLibraryItem;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addNetwork(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/tikilive/ui/video/VideoLibraryItem;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/tikilive/ui/video/VideoLibraryItem;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/tikilive/ui/video/VideoLibraryItem;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/tikilive/ui/video/VideoLibraryItem;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/video/VideoLibraryItem;

    iget p1, p1, Lcom/tikilive/ui/video/VideoLibraryItem;->viewType:I

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 86
    invoke-virtual {p0, p2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    check-cast p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    .line 107
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/video/VideoLibraryItem;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoLibraryItem;->object:Ljava/lang/Object;

    check-cast v1, Lcom/tikilive/ui/model/Video;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    .line 108
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnFocusChangeListener;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    .line 109
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    .line 104
    invoke-static {v0, p1, v1, v2, p2}, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->bind(Landroid/support/v7/app/AppCompatActivity;Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    check-cast p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    .line 99
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/video/VideoLibraryItem;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoLibraryItem;->object:Ljava/lang/Object;

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    .line 100
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnFocusChangeListener;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    .line 101
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    .line 96
    invoke-static {v0, p1, v1, v2, p2}, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->bind(Landroid/content/Context;Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    check-cast p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mItems:Ljava/util/List;

    .line 91
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/video/VideoLibraryItem;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoLibraryItem;->object:Ljava/lang/Object;

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    .line 92
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnFocusChangeListener;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    .line 93
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    .line 88
    invoke-static {v0, p1, v1, v2, p2}, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->bind(Landroid/content/Context;Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 79
    :pswitch_0
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {p2, p1}, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_1
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {p2, p1}, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_2
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {p2, p1}, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
