.class final Lcom/google/common/cache/LocalCache$AccessQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3654
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3655
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$AccessQueue$1;-><init>(Lcom/google/common/cache/LocalCache$AccessQueue;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 3759
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3760
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3761
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3762
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/ReferenceEntry;)V

    move-object v0, v1

    goto :goto_0

    .line 3766
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 3767
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 3737
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    .line 3738
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 3743
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3772
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue$2;

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->peek()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/LocalCache$AccessQueue$2;-><init>(Lcom/google/common/cache/LocalCache$AccessQueue;Lcom/google/common/cache/ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/cache/ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3696
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3699
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3700
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3654
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$AccessQueue;->offer(Lcom/google/common/cache/ReferenceEntry;)Z

    move-result p1

    return p1
.end method

.method public peek()Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3707
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3708
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 3654
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->peek()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3713
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3714
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3718
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$AccessQueue;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 3654
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->poll()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 3725
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    .line 3726
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3727
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3728
    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3729
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/ReferenceEntry;)V

    .line 3731
    sget-object p1, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 3

    .line 3749
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    const/4 v1, 0x0

    .line 3750
    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3751
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
