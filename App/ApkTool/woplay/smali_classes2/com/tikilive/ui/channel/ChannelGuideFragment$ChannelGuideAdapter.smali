.class Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelGuideAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;,
        Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mChannelGuideSelectedEventListener:Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;

.field private mChannelSelectedListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

.field private final mDataRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;",
            ">;"
        }
    .end annotation
.end field

.field private mFrom:I

.field private mTo:I

.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Ljava/util/Map;IILcom/tikilive/ui/listener/OnChannelSelectedListener;Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/tikilive/ui/model/Channel;",
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/model/Event;",
            ">;>;II",
            "Lcom/tikilive/ui/listener/OnChannelSelectedListener;",
            "Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;",
            ")V"
        }
    .end annotation

    .line 979
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 980
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    .line 981
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 982
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Channel;

    .line 983
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 984
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    new-instance v2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;

    invoke-direct {v2, p0, v0, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;Lcom/tikilive/ui/model/Channel;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 986
    :cond_0
    iput p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mFrom:I

    .line 987
    iput p4, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mTo:I

    .line 988
    iput-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mChannelSelectedListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    .line 989
    iput-object p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mChannelGuideSelectedEventListener:Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;

    return-void
.end method

.method static synthetic access$2200(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;)Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;
    .locals 0

    .line 967
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mChannelGuideSelectedEventListener:Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;

    return-object p0
.end method


# virtual methods
.method public getChannelAtPosition(I)Lcom/tikilive/ui/model/Channel;
    .locals 1

    .line 1025
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->hasItemAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;->channel:Lcom/tikilive/ui/model/Channel;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOnChannelGuideSelectedEventListener()Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mChannelGuideSelectedEventListener:Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;

    return-object v0
.end method

.method public getOnChannelSelectedListener()Lcom/tikilive/ui/listener/OnChannelSelectedListener;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mChannelSelectedListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    return-object v0
.end method

.method public getPositionForChannel(Lcom/tikilive/ui/model/Channel;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1014
    :goto_0
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1015
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;

    .line 1016
    iget-object v2, v2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;->channel:Lcom/tikilive/ui/model/Channel;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public hasItemAtPosition(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 967
    check-cast p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->onBindViewHolder(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;I)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mDataRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;

    .line 1001
    invoke-virtual {p1, v0, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->bindItem(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 967
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;
    .locals 8

    .line 994
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d005f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 995
    new-instance p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget v5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mFrom:I

    iget v6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->mTo:I

    move-object v2, p1

    move-object v3, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;Landroid/view/View;IILcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;)V

    return-object p1
.end method
