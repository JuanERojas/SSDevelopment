.class abstract Landroid/support/v17/leanback/widget/StaggeredGrid;
.super Landroid/support/v17/leanback/widget/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field protected mFirstIndex:I

.field protected mLocations:Landroid/support/v4/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/CircularArray<",
            "Landroid/support/v17/leanback/widget/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingItem:Ljava/lang/Object;

.field protected mPendingItemSize:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    .line 64
    new-instance v0, Landroid/support/v4/util/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return-void
.end method

.method private calculateOffsetAfterLastItem(I)I
    .locals 3

    .line 202
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 204
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 205
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 206
    iget v1, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 213
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 218
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->isReversedFlow()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object p1

    iget p1, p1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    neg-int p1, p1

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mSpacing:I

    sub-int/2addr p1, v1

    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object p1

    iget p1, p1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mSpacing:I

    add-int/2addr p1, v1

    :goto_2
    add-int/2addr v0, v2

    .line 220
    :goto_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 221
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return p1
.end method


# virtual methods
.method protected final appendVisbleItemsWithCache(IZ)Z
    .locals 16

    move-object/from16 v0, p0

    .line 295
    iget-object v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v2}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 298
    :cond_0
    iget-object v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v2

    .line 301
    iget v4, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    const v5, 0x7fffffff

    const/4 v6, 0x1

    if-ltz v4, :cond_1

    .line 303
    iget v4, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/2addr v4, v6

    .line 304
    iget-object v7, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v8, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v7, v8}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    goto :goto_1

    .line 308
    :cond_1
    iget v4, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    iget v4, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 309
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v7

    add-int/2addr v7, v6

    if-gt v4, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v7

    if-ge v4, v7, :cond_3

    goto :goto_3

    .line 313
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v7

    if-le v4, v7, :cond_4

    return v3

    :cond_4
    const v7, 0x7fffffff

    .line 318
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v8

    :goto_2
    if-ge v4, v2, :cond_b

    if-gt v4, v8, :cond_b

    .line 320
    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v9

    if-eq v7, v5, :cond_5

    .line 322
    iget v10, v9, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v7, v10

    .line 324
    :cond_5
    iget v15, v9, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 325
    iget-object v10, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v10, v4, v6, v11, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v12

    .line 326
    iget v10, v9, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v12, v10, :cond_6

    .line 327
    iput v12, v9, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 328
    iget-object v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    sub-int/2addr v8, v4

    invoke-virtual {v9, v8}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    move v8, v4

    .line 331
    :cond_6
    iput v4, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 332
    iget v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-gez v9, :cond_7

    .line 333
    iput v4, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    .line 335
    :cond_7
    iget-object v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v10, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v10, v10, v3

    move v11, v4

    move v13, v15

    move v14, v7

    invoke-interface/range {v9 .. v14}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    .line 336
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v9

    if-eqz v9, :cond_8

    return v6

    :cond_8
    if-ne v7, v5, :cond_9

    .line 340
    iget-object v7, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v7, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    .line 343
    :cond_9
    iget v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    sub-int/2addr v9, v6

    if-ne v15, v9, :cond_a

    if-eqz p2, :cond_a

    return v6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    return v3

    .line 311
    :cond_c
    :goto_3
    iget-object v1, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->clear()V

    return v3
.end method

.method protected final appendVisibleItemToRow(III)I
    .locals 10

    .line 364
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1

    .line 365
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_1

    .line 367
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 370
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_3

    .line 373
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_2

    .line 374
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->calculateOffsetAfterLastItem(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    sub-int v0, p3, v0

    .line 381
    :goto_0
    new-instance v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v3, p2, v0, v1}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 382
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, v3}, Landroid/support/v4/util/CircularArray;->addLast(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 385
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v0, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 386
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 389
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v2, v4, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v0

    iput v0, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 390
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v0, v0, v1

    goto :goto_1

    .line 392
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 393
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    goto :goto_3

    .line 395
    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_6

    .line 396
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    goto :goto_3

    .line 398
    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 401
    :goto_3
    iget-object v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v6, p1

    move v8, p2

    move v9, p3

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 402
    iget p1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return p1
.end method

.method protected final appendVisibleItems(IZ)Z
    .locals 3

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 275
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 279
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 284
    iget-object p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 285
    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    .line 282
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    iget-object p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 285
    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method protected abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final debugPrint(Ljava/io/PrintWriter;)V
    .locals 5

    .line 107
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 108
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    .line 110
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getFirstIndex()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return v0
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .locals 3

    const/4 v0, 0x0

    .line 407
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    if-ge v0, v1, :cond_0

    .line 408
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    :goto_1
    if-gt p1, p2, :cond_2

    .line 412
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    aget-object v0, v0, v1

    .line 413
    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->getLast()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_1

    .line 415
    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->popLast()I

    .line 416
    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    goto :goto_2

    .line 419
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 420
    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 424
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object p1
.end method

.method public final getLastIndex()I
    .locals 2

    .line 86
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object p1

    return-object p1
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .locals 1

    .line 98
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 99
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSize()I
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    return v0
.end method

.method public invalidateItemsAfter(I)V
    .locals 2

    .line 429
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 430
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    .line 431
    iget-object p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {p1}, Landroid/support/v4/util/CircularArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 432
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    :cond_0
    return-void
.end method

.method protected final prependVisbleItemsWithCache(IZ)Z
    .locals 16

    move-object/from16 v0, p0

    .line 139
    iget-object v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v2}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 145
    :cond_0
    iget v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    .line 147
    iget-object v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-interface {v2, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    .line 148
    iget v5, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 149
    iget v6, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    sub-int/2addr v6, v4

    goto :goto_1

    :cond_1
    const v2, 0x7fffffff

    .line 154
    iget v5, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget v5, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    move v6, v5

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 155
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v5

    if-gt v6, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v6, v5, :cond_3

    goto :goto_3

    .line 159
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v5

    if-ge v6, v5, :cond_4

    return v3

    :cond_4
    const/4 v5, 0x0

    .line 164
    :goto_1
    iget-object v7, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v7

    iget v8, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_2
    if-lt v6, v7, :cond_9

    .line 166
    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v14

    .line 167
    iget v15, v14, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 168
    iget-object v8, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v8, v6, v3, v9, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v11

    .line 169
    iget v8, v14, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v11, v8, :cond_5

    .line 170
    iget-object v1, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    add-int/2addr v6, v4

    iget v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v6, v2

    invoke-virtual {v1, v6}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    .line 171
    iget v1, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput v1, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 173
    iget-object v1, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v3

    iput-object v1, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 174
    iput v11, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    return v3

    .line 177
    :cond_5
    iput v6, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    .line 178
    iget v8, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v8, :cond_6

    .line 179
    iput v6, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 181
    :cond_6
    iget-object v8, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v9, v9, v3

    sub-int v13, v2, v5

    move v10, v6

    move v12, v15

    invoke-interface/range {v8 .. v13}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_7

    .line 182
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v2

    if-eqz v2, :cond_7

    return v4

    .line 185
    :cond_7
    iget-object v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v6}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    .line 186
    iget v5, v14, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    if-nez v15, :cond_8

    if-eqz p2, :cond_8

    return v4

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_9
    return v3

    .line 157
    :cond_a
    :goto_3
    iget-object v1, v0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->clear()V

    return v3
.end method

.method protected final prependVisibleItemToRow(III)I
    .locals 11

    .line 239
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1

    .line 240
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v1, p1, 0x1

    if-eq v0, v1, :cond_1

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 245
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 246
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    .line 247
    new-instance v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v4}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 248
    iget-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/CircularArray;->addFirst(Ljava/lang/Object;)V

    .line 250
    iget-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 251
    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v4, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 252
    iget-object v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 253
    iput-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    :goto_1
    move-object v6, v4

    goto :goto_2

    .line 255
    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v1, p1, v4, v5, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v1

    iput v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 256
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v1, v4

    goto :goto_1

    .line 258
    :goto_2
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 259
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v1, :cond_4

    .line 260
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 262
    :cond_4
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mReversedFlow:Z

    if-nez v1, :cond_5

    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int/2addr p3, v1

    :goto_3
    move v10, p3

    goto :goto_4

    :cond_5
    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr p3, v1

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_6

    sub-int/2addr v2, v10

    .line 264
    iput v2, v0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 266
    :cond_6
    iget-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v8, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v7, p1

    move v9, p2

    invoke-interface/range {v5 .. v10}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 267
    iget p1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return p1
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 3

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 120
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 129
    iget-object p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 130
    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    .line 127
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 130
    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method protected abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
