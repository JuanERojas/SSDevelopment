.class final Landroid/support/v17/leanback/widget/StaggeredGridDefault;
.super Landroid/support/v17/leanback/widget/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 205
    iget p1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt p1, v2, :cond_5

    .line 206
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 209
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 214
    :cond_2
    iget p1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_2
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt p1, v2, :cond_5

    .line 215
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 216
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    return p1

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .locals 13

    .line 228
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    .line 233
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v1, :cond_9

    .line 234
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v6

    if-ge v1, v6, :cond_0

    return v4

    .line 238
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/2addr v1, v5

    .line 239
    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v6

    iget v6, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 241
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v7

    if-gez v7, :cond_3

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    .line 246
    :goto_0
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v7, v9, :cond_5

    .line 247
    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    :goto_1
    if-eq v8, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 253
    :cond_3
    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0, v4, v7, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v7

    :goto_2
    move v8, v7

    goto :goto_3

    .line 254
    :cond_4
    invoke-virtual {p0, v5, v7, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v7

    goto :goto_2

    .line 256
    :cond_5
    :goto_3
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    if-gt v7, v8, :cond_8

    goto :goto_4

    .line 257
    :cond_6
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    if-lt v7, v8, :cond_8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 260
    iget v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ne v6, v7, :cond_8

    .line 263
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0, v4, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v5, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v6

    :goto_5
    move v8, v6

    const/4 v6, 0x0

    :cond_8
    const/4 v7, 0x1

    goto :goto_8

    .line 268
    :cond_9
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 270
    :goto_6
    iget-object v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v6}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v6

    iget v6, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/2addr v6, v5

    goto :goto_7

    :cond_b
    move v6, v1

    :goto_7
    iget v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    .line 281
    :goto_9
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v6, v10, :cond_1e

    if-eq v1, v0, :cond_1d

    if-nez p2, :cond_c

    .line 283
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_c

    goto/16 :goto_16

    .line 286
    :cond_c
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_a

    :cond_d
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_a
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_10

    if-ne v7, v2, :cond_e

    goto :goto_c

    .line 298
    :cond_e
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_f

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    goto :goto_b

    :cond_f
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_b
    add-int/2addr v7, v10

    goto :goto_f

    :cond_10
    :goto_c
    if-nez v6, :cond_13

    .line 290
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_11

    iget v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_d

    :cond_11
    iget v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_d
    if-eq v7, v10, :cond_15

    if-eq v7, v2, :cond_15

    .line 292
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    goto :goto_e

    :cond_12
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_e
    add-int/2addr v7, v10

    goto :goto_f

    .line 295
    :cond_13
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_14

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_f

    :cond_14
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    :cond_15
    :goto_f
    add-int/lit8 v10, v1, 0x1

    .line 300
    invoke-virtual {p0, v1, v6, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v1

    if-eqz v8, :cond_1b

    .line 305
    :goto_10
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_16

    sub-int v11, v7, v1

    if-le v11, v9, :cond_1a

    goto :goto_11

    :cond_16
    add-int v11, v7, v1

    if-ge v11, v9, :cond_1a

    :goto_11
    if-eq v10, v0, :cond_19

    if-nez p2, :cond_17

    .line 307
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_13

    .line 310
    :cond_17
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_18

    neg-int v1, v1

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v1, v11

    goto :goto_12

    :cond_18
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v1, v11

    :goto_12
    add-int/2addr v7, v1

    add-int/lit8 v1, v10, 0x1

    .line 311
    invoke-virtual {p0, v10, v6, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    move v12, v10

    move v10, v1

    move v1, v12

    goto :goto_10

    :cond_19
    :goto_13
    return v5

    :cond_1a
    move v1, v10

    goto :goto_15

    .line 315
    :cond_1b
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    goto :goto_14

    :cond_1c
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    :goto_14
    move v9, v1

    move v1, v10

    const/4 v8, 0x1

    :goto_15
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto/16 :goto_9

    :cond_1d
    :goto_16
    return v7

    :cond_1e
    if-eqz p2, :cond_1f

    return v7

    .line 321
    :cond_1f
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_20

    invoke-virtual {p0, v4, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v6

    :goto_17
    move v9, v6

    goto :goto_18

    :cond_20
    invoke-virtual {p0, v5, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v6

    goto :goto_17

    :goto_18
    const/4 v6, 0x0

    goto/16 :goto_9
.end method

.method public findRowMax(ZI[I)I
    .locals 9

    .line 105
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 106
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 107
    iget v2, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 111
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    add-int/lit8 v1, p2, 0x1

    move v5, p2

    move v6, v0

    move v3, v2

    const/4 p2, 0x1

    .line 113
    :goto_0
    iget v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge p2, v7, :cond_6

    iget v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v7, :cond_6

    .line 114
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    .line 115
    iget v8, v7, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v8

    .line 116
    iget v8, v7, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v2, :cond_1

    .line 117
    iget v2, v7, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 p2, p2, 0x1

    if-eqz p1, :cond_0

    if-le v0, v6, :cond_1

    goto :goto_1

    :cond_0
    if-ge v0, v6, :cond_1

    :goto_1
    move v6, v0

    move v5, v1

    move v3, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v3, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v5, p2, -0x1

    move v6, p2

    move v7, v3

    const/4 p2, 0x1

    move v3, v2

    .line 128
    :goto_2
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge p2, v8, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v5, v8, :cond_5

    .line 129
    iget v1, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v1

    .line 130
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 131
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v2, :cond_4

    .line 132
    iget v2, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 p2, p2, 0x1

    .line 134
    iget-object v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v8, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v8

    add-int/2addr v8, v0

    if-eqz p1, :cond_3

    if-le v8, v7, :cond_4

    goto :goto_3

    :cond_3
    if-ge v8, v7, :cond_4

    :goto_3
    move v3, v2

    move v6, v5

    move v7, v8

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    move v5, v6

    move v6, v7

    :cond_6
    if-eqz p3, :cond_7

    const/4 p1, 0x0

    .line 144
    aput v3, p3, p1

    .line 145
    aput v5, p3, v4

    :cond_7
    return v6
.end method

.method public findRowMin(ZI[I)I
    .locals 9

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 158
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 159
    iget v2, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 163
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v3, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit8 v5, p2, -0x1

    move v6, p2

    move v7, v3

    const/4 p2, 0x1

    move v3, v2

    .line 165
    :goto_0
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge p2, v8, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v5, v8, :cond_5

    .line 166
    iget v1, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v1

    .line 167
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 168
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v2, :cond_1

    .line 169
    iget v2, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 p2, p2, 0x1

    .line 171
    iget-object v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v8, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v8

    sub-int v8, v0, v8

    if-eqz p1, :cond_0

    if-le v8, v7, :cond_1

    goto :goto_1

    :cond_0
    if-ge v8, v7, :cond_1

    :goto_1
    move v3, v2

    move v6, v5

    move v7, v8

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, 0x1

    move v6, p2

    move v7, v0

    move v3, v2

    const/4 p2, 0x1

    .line 181
    :goto_2
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge p2, v5, :cond_5

    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v5, :cond_5

    .line 182
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    .line 183
    iget v8, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v8

    .line 184
    iget v8, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v2, :cond_4

    .line 185
    iget v2, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 p2, p2, 0x1

    if-eqz p1, :cond_3

    if-le v0, v7, :cond_4

    goto :goto_3

    :cond_3
    if-ge v0, v7, :cond_4

    :goto_3
    move v7, v0

    move v6, v1

    move v3, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    const/4 p1, 0x0

    .line 196
    aput v3, p3, p1

    .line 197
    aput v6, p3, v4

    :cond_6
    return v7
.end method

.method getRowMax(I)I
    .locals 5

    .line 29
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const/high16 v1, -0x80000000

    if-gez v0, :cond_0

    return v1

    .line 32
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 34
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_1

    return v0

    .line 37
    :cond_1
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 38
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 39
    iget v4, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 40
    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_2

    return v0

    :cond_2
    goto :goto_0

    .line 45
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 46
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 47
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_4

    .line 48
    iget p1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v0, p1

    return v0

    .line 50
    :cond_4
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 51
    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    .line 52
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 53
    iget v4, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_5

    .line 54
    iget p1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v0, p1

    return v0

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method getRowMin(I)I
    .locals 5

    .line 66
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    if-gez v0, :cond_0

    return v1

    .line 69
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 71
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 72
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1

    .line 73
    iget p1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int/2addr v0, p1

    return v0

    .line 75
    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 76
    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    .line 77
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 78
    iget v4, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_2

    .line 79
    iget p1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int/2addr v0, p1

    return v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 84
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_4

    return v0

    .line 87
    :cond_4
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 88
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 89
    iget v4, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 90
    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_5

    return v0

    :cond_5
    goto :goto_1

    :cond_6
    return v1
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .locals 12

    .line 333
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_9

    .line 334
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    if-le v0, v5, :cond_0

    return v3

    .line 338
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    sub-int/2addr v0, v4

    .line 339
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 341
    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v6

    if-gez v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 347
    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v6, v4

    const v7, 0x7fffffff

    :goto_0
    if-ltz v6, :cond_5

    .line 348
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    :goto_1
    if-eq v7, v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 354
    :cond_3
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, v4, v6, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v6

    :goto_2
    move v7, v6

    goto :goto_3

    .line 355
    :cond_4
    invoke-virtual {p0, v3, v6, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v6

    goto :goto_2

    .line 357
    :cond_5
    :goto_3
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    if-lt v6, v7, :cond_8

    goto :goto_4

    .line 358
    :cond_6
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    if-gt v6, v7, :cond_8

    :goto_4
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_8

    .line 363
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v5, v4

    .line 364
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0, v4, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v6

    goto :goto_5

    .line 365
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v6

    :goto_5
    move v7, v6

    :cond_8
    const/4 v6, 0x1

    goto :goto_8

    .line 370
    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    .line 372
    :goto_6
    iget-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v5}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    goto :goto_7

    :cond_b
    move v5, v0

    :goto_7
    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    move v8, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_9
    if-ltz v5, :cond_1e

    if-ltz v0, :cond_1d

    if-nez p2, :cond_c

    .line 384
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_16

    .line 387
    :cond_c
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    goto :goto_a

    :cond_d
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    :goto_a
    const/high16 v9, -0x80000000

    if-eq v6, v1, :cond_10

    if-ne v6, v9, :cond_e

    goto :goto_c

    .line 399
    :cond_e
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_f

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_b

    :cond_f
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v9, v9

    :goto_b
    add-int/2addr v6, v9

    goto :goto_f

    .line 390
    :cond_10
    :goto_c
    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v6, v4

    if-ne v5, v6, :cond_13

    .line 391
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_11

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    goto :goto_d

    :cond_11
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    :goto_d
    if-eq v6, v1, :cond_15

    if-eq v6, v9, :cond_15

    .line 393
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_12

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_e

    :cond_12
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v9, v9

    :goto_e
    add-int/2addr v6, v9

    goto :goto_f

    .line 396
    :cond_13
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_14

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    goto :goto_f

    :cond_14
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    :cond_15
    :goto_f
    add-int/lit8 v9, v0, -0x1

    .line 401
    invoke-virtual {p0, v0, v5, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v0

    if-eqz v7, :cond_1b

    .line 407
    :goto_10
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_16

    add-int v10, v6, v0

    if-ge v10, v8, :cond_1a

    goto :goto_11

    :cond_16
    sub-int v10, v6, v0

    if-le v10, v8, :cond_1a

    :goto_11
    if-ltz v9, :cond_19

    if-nez p2, :cond_17

    .line 409
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_13

    .line 412
    :cond_17
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_18

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v0, v10

    goto :goto_12

    :cond_18
    neg-int v0, v0

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v0, v10

    :goto_12
    add-int/2addr v6, v0

    add-int/lit8 v0, v9, -0x1

    .line 413
    invoke-virtual {p0, v9, v5, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    move v11, v9

    move v9, v0

    move v0, v11

    goto :goto_10

    :cond_19
    :goto_13
    return v4

    :cond_1a
    move v0, v9

    goto :goto_15

    .line 417
    :cond_1b
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    goto :goto_14

    :cond_1c
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    :goto_14
    move v8, v0

    move v0, v9

    const/4 v7, 0x1

    :goto_15
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_9

    :cond_1d
    :goto_16
    return v6

    :cond_1e
    if-eqz p2, :cond_1f

    return v6

    .line 423
    :cond_1f
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v5, :cond_20

    invoke-virtual {p0, v4, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v5

    :goto_17
    move v8, v5

    goto :goto_18

    :cond_20
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v5

    goto :goto_17

    .line 425
    :goto_18
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v5, v4

    goto/16 :goto_9
.end method
