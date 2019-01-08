.class public Landroid/support/v17/leanback/widget/ThumbsBar;
.super Landroid/widget/LinearLayout;
.source "ThumbsBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mHeroThumbHeightInPixel:I

.field mHeroThumbWidthInPixel:I

.field private mIsUserSets:Z

.field mMeasuredMarginInPixel:I

.field mNumOfThumbs:I

.field mThumbHeightInPixel:I

.field mThumbWidthInPixel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 44
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_hero_thumbs_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_hero_thumbs_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    return-void
.end method

.method private calculateNumOfThumbs(I)I
    .locals 2

    .line 203
    iget v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iget v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->roundUp(II)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static roundUp(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 180
    div-int/2addr p0, p1

    return p0
.end method

.method private setNumberOfThumbsInternal()V
    .locals 5

    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-le v0, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v0, v1, :cond_1

    .line 159
    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    const/4 v1, 0x0

    .line 165
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 166
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v0, v1, :cond_2

    .line 169
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 170
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 172
    :cond_2
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 173
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 175
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public clearThumbBitmaps()V
    .locals 2

    const/4 v0, 0x0

    .line 276
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 269
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeroIndex()I
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getThumbBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 236
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 237
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result p1

    .line 238
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 239
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    .line 240
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    .line 241
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result p5

    .line 242
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    invoke-virtual {p2, p3, p5, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 243
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p5, p2

    add-int/lit8 p2, p1, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 246
    iget v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    sub-int/2addr p3, v0

    .line 247
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p3, v1

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p5, v2

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p5

    .line 248
    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/view/View;->layout(IIII)V

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 254
    iget p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge p1, p2, :cond_1

    .line 255
    iget p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    add-int/2addr p4, p2

    .line 256
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    .line 259
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    .line 260
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p5

    .line 257
    invoke-virtual {p2, p4, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 261
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p4, p2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 221
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getMeasuredWidth()I

    move-result p1

    .line 224
    iget-boolean p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    if-nez p2, :cond_0

    .line 225
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->calculateNumOfThumbs(I)I

    move-result p1

    .line 227
    iget p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-eq p2, p1, :cond_0

    .line 228
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 229
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbsInternal()V

    :cond_0
    return-void
.end method

.method public setHeroThumbSize(II)V
    .locals 8

    .line 110
    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 111
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 112
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-ne v0, v2, :cond_2

    .line 115
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, 0x1

    if-eq v5, p2, :cond_0

    .line 119
    iput p2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 122
    :goto_1
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v7, p1, :cond_1

    .line 123
    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    .line 127
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setNumberOfThumbs(I)V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 146
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 147
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbsInternal()V

    return-void
.end method

.method public setThumbBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 294
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setThumbSize(II)V
    .locals 8

    .line 83
    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 84
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 85
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 88
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, 0x1

    if-eq v5, p2, :cond_0

    .line 92
    iput p2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 95
    :goto_1
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v7, p1, :cond_1

    .line 96
    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    .line 100
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setThumbSpace(I)V
    .locals 0

    .line 137
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 138
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->requestLayout()V

    return-void
.end method
