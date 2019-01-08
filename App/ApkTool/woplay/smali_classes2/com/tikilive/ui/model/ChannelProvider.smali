.class public Lcom/tikilive/ui/model/ChannelProvider;
.super Ljava/lang/Object;
.source "ChannelProvider.java"


# static fields
.field private static mInstance:Lcom/tikilive/ui/model/ChannelProvider;


# instance fields
.field private final categories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final channelsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final channelsByNumber:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannel:I

.field private final genres:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private socialBroadcasts:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->socialBroadcasts:Z

    .line 15
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->categories:Ljava/util/Map;

    .line 16
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->genres:Ljava/util/Map;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    .line 18
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsById:Landroid/util/SparseArray;

    .line 19
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsByNumber:Landroid/util/SparseArray;

    .line 20
    iput v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->currentChannel:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tikilive/ui/model/ChannelProvider;
    .locals 2

    const-class v0, Lcom/tikilive/ui/model/ChannelProvider;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/model/ChannelProvider;->mInstance:Lcom/tikilive/ui/model/ChannelProvider;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/tikilive/ui/model/ChannelProvider;

    invoke-direct {v1}, Lcom/tikilive/ui/model/ChannelProvider;-><init>()V

    sput-object v1, Lcom/tikilive/ui/model/ChannelProvider;->mInstance:Lcom/tikilive/ui/model/ChannelProvider;

    .line 29
    :cond_0
    sget-object v1, Lcom/tikilive/ui/model/ChannelProvider;->mInstance:Lcom/tikilive/ui/model/ChannelProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Lcom/tikilive/ui/model/Channel;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsById:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsByNumber:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->socialBroadcasts:Z

    .line 125
    iput v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->currentChannel:I

    .line 126
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 128
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsByNumber:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 129
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->categories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->genres:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getById(I)Lcom/tikilive/ui/model/Channel;
    .locals 3

    .line 104
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->hasById(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Channel;

    return-object p1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByNumber(I)Lcom/tikilive/ui/model/Channel;
    .locals 3

    .line 116
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->hasByNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsByNumber:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Channel;

    return-object p1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCategories()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->categories:Ljava/util/Map;

    return-object v0
.end method

.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getCurrent()Lcom/tikilive/ui/model/Channel;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    iget v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->currentChannel:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Channel;

    return-object v0
.end method

.method public getGenres()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->genres:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasById(I)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasByNumber(I)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channelsByNumber:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSocialBroadcasts()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->socialBroadcasts:Z

    return v0
.end method

.method public next()Lcom/tikilive/ui/model/Channel;
    .locals 2

    .line 37
    iget v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->currentChannel:I

    add-int/lit8 v0, v0, 0x1

    .line 38
    iget-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Channel;

    return-object v0
.end method

.method public previous()Lcom/tikilive/ui/model/Channel;
    .locals 2

    .line 46
    iget v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->currentChannel:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Channel;

    return-object v0
.end method

.method public setCurrent(I)Lcom/tikilive/ui/model/Channel;
    .locals 1

    if-ltz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 57
    iput p1, p0, Lcom/tikilive/ui/model/ChannelProvider;->currentChannel:I

    .line 58
    invoke-virtual {p0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index does not exist"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrent(Lcom/tikilive/ui/model/Channel;)Lcom/tikilive/ui/model/Channel;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tikilive/ui/model/ChannelProvider;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrent(I)Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentById(I)Lcom/tikilive/ui/model/Channel;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->getById(I)Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrent(Lcom/tikilive/ui/model/Channel;)Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    return-object p1
.end method

.method public setSocialBroadcasts(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/tikilive/ui/model/ChannelProvider;->socialBroadcasts:Z

    return-void
.end method
