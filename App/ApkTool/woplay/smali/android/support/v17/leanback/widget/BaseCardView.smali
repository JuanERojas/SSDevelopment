.class public Landroid/support/v17/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;,
        Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field public static final CARD_REGION_VISIBLE_ACTIVATED:I = 0x1

.field public static final CARD_REGION_VISIBLE_ALWAYS:I = 0x0

.field public static final CARD_REGION_VISIBLE_SELECTED:I = 0x2

.field public static final CARD_TYPE_INFO_OVER:I = 0x1

.field public static final CARD_TYPE_INFO_UNDER:I = 0x2

.field public static final CARD_TYPE_INFO_UNDER_WITH_EXTRA:I = 0x3

.field private static final CARD_TYPE_INVALID:I = 0x4

.field public static final CARD_TYPE_MAIN_ONLY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LB_PRESSED_STATE_SET:[I

.field private static final TAG:Ljava/lang/String; = "BaseCardView"


# instance fields
.field private final mActivatedAnimDuration:I

.field private mAnim:Landroid/view/animation/Animation;

.field private final mAnimationTrigger:Ljava/lang/Runnable;

.field private mCardType:I

.field private mDelaySelectedAnim:Z

.field mExtraViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraVisibility:I

.field mInfoAlpha:F

.field mInfoOffset:F

.field mInfoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mInfoVisFraction:F

.field private mInfoVisibility:I

.field private mMainViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private final mSelectedAnimDuration:I

.field private mSelectedAnimationDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 137
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 152
    sget v0, Landroid/support/v17/leanback/R$attr;->baseCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseCardView$1;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    .line 158
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    :try_start_0
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardType:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    .line 163
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardForeground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/BaseCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_0
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 169
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/BaseCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_1
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_infoVisibility:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 173
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_extraVisibility:I

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 176
    iget p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ge p2, v0, :cond_2

    .line 177
    iget p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 180
    :cond_2
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDelay:I

    .line 182
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 180
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 184
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDuration:I

    .line 186
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 184
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 188
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_activatedAnimationDuration:I

    .line 190
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_card_activated_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 189
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    iput-boolean p3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 199
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 201
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 202
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 203
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    return-void

    :catchall_0
    move-exception p2

    .line 192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method private animateInfoAlpha(Z)V
    .locals 4

    .line 780
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 783
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 784
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 788
    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    return-void

    .line 792
    :cond_2
    new-instance v2, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    invoke-direct {v2, p0, v3, v0}, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 793
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 794
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 795
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseCardView$4;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 814
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateInfoHeight(Z)V
    .locals 3

    .line 737
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 740
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 741
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 742
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 747
    :goto_1
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 750
    :cond_2
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 751
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 752
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 753
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseCardView$3;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 772
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private applyActiveState(Z)V
    .locals 1

    .line 623
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 624
    iget p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->isRegionVisible(I)Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    :cond_0
    return-void
.end method

.method private applySelectedState(Z)V
    .locals 2

    .line 661
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 663
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 666
    iget-boolean p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    if-nez p1, :cond_0

    .line 667
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    goto :goto_0

    .line 670
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 673
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    goto :goto_0

    .line 675
    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 676
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .line 681
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 686
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private findChildrenViews()V
    .locals 10

    .line 562
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 563
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 566
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildCount()I

    move-result v0

    .line 568
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->isCurrentRegionVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 569
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_7

    .line 572
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 579
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    .line 580
    iget v8, v7, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/16 v9, 0x8

    if-ne v8, v2, :cond_4

    .line 581
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 582
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    .line 583
    :cond_3
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 584
    :cond_4
    iget v7, v7, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 585
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_5

    const/4 v9, 0x0

    .line 586
    :cond_5
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 589
    :cond_6
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private hasExtraRegion()Z
    .locals 2

    .line 520
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasInfoRegion()Z
    .locals 1

    .line 516
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentRegionVisible(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 550
    :pswitch_0
    iget p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 551
    iget p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 553
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result p1

    return p1

    .line 548
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result p1

    return p1

    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isRegionVisible(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 533
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result p1

    return p1

    .line 531
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result p1

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInfoViewVisibility(Z)V
    .locals 5

    .line 629
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 633
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 634
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 637
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 638
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 640
    :cond_1
    :goto_2
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 641
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 643
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    goto :goto_5

    .line 645
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 647
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v3, :cond_4

    .line 648
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoHeight(Z)V

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 650
    :goto_3
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 651
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 654
    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 656
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method animateInfoOffset(Z)V
    .locals 6

    .line 694
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 698
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 699
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 701
    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 702
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 703
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 704
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 705
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 709
    :cond_1
    new-instance v1, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    if-eqz p1, :cond_2

    int-to-float p1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {v1, p0, v2, p1}, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 710
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 711
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 712
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseCardView$2;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 731
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 839
    instance-of p1, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2

    .line 824
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2

    .line 819
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 1

    .line 830
    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    if-eqz v0, :cond_0

    .line 831
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;)V

    return-object v0

    .line 833
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getCardType()I
    .locals 1

    .line 264
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    return v0
.end method

.method public getExtraVisibility()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    return v0
.end method

.method final getFinalInfoAlpha()F
    .locals 2

    .line 297
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method final getFinalInfoVisFraction()F
    .locals 2

    .line 292
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getInfoVisibility()I
    .locals 1

    .line 305
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    return v0
.end method

.method public isSelectedAnimationDelayed()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7

    .line 599
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 600
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 604
    aget v4, p1, v1

    const v5, 0x10100a7

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 607
    :cond_0
    aget v4, p1, v1

    const v5, 0x101009e

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 612
    sget-object p1, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    return-object p1

    :cond_3
    if-eqz v2, :cond_4

    .line 614
    sget-object p1, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-object p1

    :cond_4
    if-eqz v3, :cond_5

    .line 616
    sget-object p1, Landroid/view/View;->ENABLED_STATE_SET:[I

    return-object p1

    .line 618
    :cond_5
    sget-object p1, Landroid/view/View;->EMPTY_STATE_SET:[I

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 510
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 511
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 512
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    move-object v0, p0

    .line 438
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .line 441
    :goto_0
    iget-object v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_1

    .line 442
    iget-object v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 443
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v5

    float-to-int v6, v3

    iget v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 446
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    .line 447
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    float-to-int v8, v8

    .line 444
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 448
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_1
    invoke-direct {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 454
    :goto_1
    iget-object v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 455
    iget-object v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 458
    :cond_2
    iget v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    sub-float/2addr v3, v6

    cmpg-float v4, v3, v1

    if-gez v4, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    .line 464
    :cond_3
    iget v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 465
    iget v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v4, v7, :cond_5

    .line 466
    iget v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float v6, v6, v4

    goto :goto_2

    .line 469
    :cond_4
    iget v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    sub-float/2addr v3, v4

    :cond_5
    :goto_2
    move v4, v3

    const/4 v3, 0x0

    .line 472
    :goto_3
    iget-object v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 473
    iget-object v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 474
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_7

    .line 475
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v9, v8

    cmpl-float v9, v9, v6

    if-lez v9, :cond_6

    float-to-int v8, v6

    .line 479
    :cond_6
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v9

    float-to-int v10, v4

    iget v11, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 481
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v8, v8

    add-float/2addr v4, v8

    float-to-int v12, v4

    .line 479
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    sub-float/2addr v6, v8

    cmpg-float v7, v6, v1

    if-gtz v7, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 491
    :cond_8
    :goto_4
    invoke-direct {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 492
    :goto_5
    iget-object v3, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 493
    iget-object v3, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 494
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_9

    .line 495
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v6

    float-to-int v7, v4

    iget v8, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 497
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    .line 498
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    float-to-int v9, v9

    .line 495
    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 499
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    sub-int v1, p4, p2

    sub-int v3, p5, p3

    .line 505
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 374
    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 380
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->findChildrenViews()V

    .line 382
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 384
    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ge v2, v5, :cond_1

    .line 385
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 386
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 387
    invoke-virtual {p0, v5, v1, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 388
    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 389
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 390
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_1
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/4 v5, 0x2

    div-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotX(F)V

    .line 394
    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotY(F)V

    .line 398
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 400
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    move v9, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 401
    :goto_1
    iget-object v10, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 402
    iget-object v10, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 403
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v6, :cond_3

    .line 404
    invoke-virtual {p0, v10, v2, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 405
    iget v11, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eq v11, v8, :cond_2

    .line 406
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 408
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 412
    :cond_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v4

    if-eqz v4, :cond_7

    move v10, v9

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 413
    :goto_2
    iget-object v11, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_6

    .line 414
    iget-object v11, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 415
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v6, :cond_5

    .line 416
    invoke-virtual {p0, v11, v2, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 417
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v9, v12

    .line 418
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v10, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move v4, v10

    goto :goto_4

    :cond_7
    move v4, v9

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    const/4 v9, 0x0

    .line 424
    :goto_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v1, v5, :cond_9

    const/4 v0, 0x1

    :cond_9
    int-to-float v1, v3

    if-eqz v0, :cond_a

    int-to-float v2, v7

    .line 425
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float v2, v2, v3

    goto :goto_5

    :cond_a
    int-to-float v2, v7

    :goto_5
    add-float/2addr v1, v2

    int-to-float v2, v9

    add-float/2addr v1, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    :goto_6
    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 430
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    invoke-static {v0, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 432
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x10

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 430
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseCardView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .line 344
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 345
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 346
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->applyActiveState(Z)V

    :cond_0
    return-void
.end method

.method public setCardType(I)V
    .locals 3

    .line 245
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eq v0, p1, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 248
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    goto :goto_0

    :cond_0
    const-string v0, "BaseCardView"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid card type specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Defaulting to type CARD_TYPE_MAIN_ONLY."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 252
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    .line 254
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setExtraVisibility(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    if-eq v0, p1, :cond_0

    .line 320
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    :cond_0
    return-void
.end method

.method public setInfoVisibility(I)V
    .locals 2

    .line 276
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-eq v0, p1, :cond_0

    .line 277
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 278
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 279
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 280
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->requestLayout()V

    .line 281
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result p1

    .line 282
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 283
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    const/4 p1, 0x0

    .line 284
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 360
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 362
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->applySelectedState(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedAnimationDelayed(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1004
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
