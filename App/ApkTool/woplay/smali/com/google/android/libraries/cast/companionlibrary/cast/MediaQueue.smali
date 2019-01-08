.class public Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;
.super Ljava/lang/Object;
.source "MediaQueue.java"


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mCurrentItem:Lcom/google/android/gms/cast/MediaQueueItem;

.field private mQueueItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatMode:I

.field private mShuffle:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "ZI)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mCurrentItem:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 39
    iput-boolean p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mShuffle:Z

    .line 40
    iput p4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mRepeatMode:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final getCurrentItem()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mCurrentItem:Lcom/google/android/gms/cast/MediaQueueItem;

    return-object v0
.end method

.method public final getCurrentItemPosition()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mCurrentItem:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getQueueItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    return-object v0
.end method

.method public final getRepeatMode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mRepeatMode:I

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isShuffle()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mShuffle:Z

    return v0
.end method

.method public final setCurrentItem(Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mCurrentItem:Lcom/google/android/gms/cast/MediaQueueItem;

    return-void
.end method

.method public final setQueueItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mQueueItems:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mRepeatMode:I

    return-void
.end method

.method public final setShuffle(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->mShuffle:Z

    return-void
.end method
