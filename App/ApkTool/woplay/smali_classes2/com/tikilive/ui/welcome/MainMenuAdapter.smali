.class Lcom/tikilive/ui/welcome/MainMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MainMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFixedHeightSet:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/welcome/MainMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousLeft:J

.field private mPreviousRight:J

.field private mRecylerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/welcome/MainMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mFixedHeightSet:Z

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mPreviousRight:J

    .line 31
    iput-wide v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mPreviousLeft:J

    .line 34
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mFixedHeightSet:Z

    return p0
.end method

.method static synthetic access$202(Lcom/tikilive/ui/welcome/MainMenuAdapter;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mFixedHeightSet:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tikilive/ui/welcome/MainMenuAdapter;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mPreviousRight:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/tikilive/ui/welcome/MainMenuAdapter;J)J
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mPreviousRight:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/tikilive/ui/welcome/MainMenuAdapter;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mPreviousLeft:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/tikilive/ui/welcome/MainMenuAdapter;J)J
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mPreviousLeft:J

    return-wide p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->onBindViewHolder(Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;I)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/welcome/MainMenuItem;

    .line 60
    iget-object v0, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/welcome/MainMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2}, Lcom/tikilive/ui/welcome/MainMenuItem;->isIconCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Lcom/tikilive/ui/welcome/MainMenuItem;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tikilive/ui/welcome/MainMenuItem;->getIcon()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :goto_0
    invoke-virtual {p2}, Lcom/tikilive/ui/welcome/MainMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 71
    iget-object v0, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_1
    iget-object p2, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    iget-object p1, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;
    .locals 3

    .line 50
    new-instance p2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/welcome/MainMenuAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/welcome/MainMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter;->mItems:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
