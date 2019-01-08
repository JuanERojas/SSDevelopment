.class public Landroid/support/v17/leanback/widget/SearchOrbView;
.super Landroid/widget/FrameLayout;
.source "SearchOrbView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    }
.end annotation


# instance fields
.field private mAttachedToWindow:Z

.field private mColorAnimationEnabled:Z

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mFocusedZ:F

.field private final mFocusedZoom:F

.field private mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mPulseDurationMs:I

.field private mRootView:Landroid/view/View;

.field private final mScaleDurationMs:I

.field private mSearchOrbView:Landroid/view/View;

.field private mShadowFocusAnimator:Landroid/animation/ValueAnimator;

.field private final mUnfocusedZ:F

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 159
    sget v0, Landroid/support/v17/leanback/R$attr;->searchOrbViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 130
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/SearchOrbView$1;-><init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 141
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/SearchOrbView$2;-><init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 168
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 169
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->getLayoutResourceId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    .line 170
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v2, Landroid/support/v17/leanback/R$id;->search_orb:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 171
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v2, Landroid/support/v17/leanback/R$id;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$fraction;->lb_search_orb_focused_zoom:I

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$integer;->lb_search_orb_pulse_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$integer;->lb_search_orb_scale_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_search_orb_focused_z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_search_orb_unfocused_z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    .line 184
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 187
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 189
    sget p2, Landroid/support/v17/leanback/R$drawable;->lb_ic_in_app_search:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 191
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget p2, Landroid/support/v17/leanback/R$color;->lb_default_search_color:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 194
    sget p3, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbColor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 195
    sget p3, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbBrightColor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 197
    sget v0, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbIconColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 198
    new-instance v1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v1, p2, p3, v0}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 199
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/SearchOrbView;->setFocusable(Z)V

    .line 202
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchOrbView;->setClipChildren(Z)V

    .line 203
    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchOrbView;->setSoundEffectsEnabled(Z)V

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    .line 208
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget p3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/ShadowHelper;->setZ(Landroid/view/View;F)V

    return-void
.end method

.method private startShadowFocusAnimation(ZI)V
    .locals 2

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 233
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 241
    :goto_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateColorAnimator()V
    .locals 4

    .line 347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 351
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->brightColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v2, v2, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 353
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 355
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 356
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method animateOnFocus(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 251
    iget v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 252
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 253
    iget v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->startShadowFocusAnimation(ZI)V

    .line 254
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    return-void
.end method

.method public enableOrbColorAnimation(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 343
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    return-void
.end method

.method getFocusedZoom()F
    .locals 1

    .line 221
    iget v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    return v0
.end method

.method getLayoutResourceId()I
    .locals 1

    .line 212
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_search_orb:I

    return v0
.end method

.method public getOrbColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 308
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v0, v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    return v0
.end method

.method public getOrbColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    .locals 1

    .line 329
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    return-object v0
.end method

.method public getOrbIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 370
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 372
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 379
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 380
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 246
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 247
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    return-void
.end method

.method scaleOrbViewOnly(F)V
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 217
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 279
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrbColor(I)V
    .locals 2

    .line 289
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, v1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setOrbColor(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 315
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 316
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v0, v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->iconColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 318
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget p1, p1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 321
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    :goto_0
    return-void
.end method

.method public setOrbIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 262
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setOrbViewColor(I)V
    .locals 1

    .line 363
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method setSearchOrbZ(F)V
    .locals 5

    .line 150
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    iget v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    iget v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    iget v4, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    sub-float/2addr v3, v4

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ShadowHelper;->setZ(Landroid/view/View;F)V

    return-void
.end method
