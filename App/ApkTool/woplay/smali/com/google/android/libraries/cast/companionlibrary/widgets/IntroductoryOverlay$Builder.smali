.class public Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
.super Ljava/lang/Object;
.source "IntroductoryOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mButtonText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

.field private mOverlayColor:I

.field private mRadius:F
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private mSingleTime:Z

.field private mSubtitleText:Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Landroid/content/Context;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mSingleTime:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)I
    .locals 0

    .line 258
    iget p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mOverlayColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)F
    .locals 0

    .line 258
    iget p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mRadius:F

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Landroid/view/View;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mSubtitleText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mButtonText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mView:Landroid/view/View;

    const-string v1, "MenuItem or MediaRouteButton"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$1;)V

    return-object v0
.end method

.method public setButtonText(I)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 342
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setButtonText(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setFocusRadius(F)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 0

    .line 324
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mRadius:F

    return-object p0
.end method

.method public setFocusRadiusId(I)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 315
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mRadius:F

    return-object p0
.end method

.method public setMediaRouteButton(Landroid/support/v7/app/MediaRouteButton;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mView:Landroid/view/View;

    return-object p0
.end method

.method public setMenuItem(Landroid/view/MenuItem;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mView:Landroid/view/View;

    return-object p0
.end method

.method public setOnDismissed(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p0
.end method

.method public setOverlayColor(I)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 306
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mOverlayColor:I

    return-object p0
.end method

.method public setSingleTime()Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mSingleTime:Z

    return-object p0
.end method

.method public setSubtitleText(I)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 368
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mSubtitleText:Ljava/lang/String;

    return-object p0
.end method

.method public setSubtitleText(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mSubtitleText:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleText(I)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 351
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->mTitleText:Ljava/lang/String;

    return-object p0
.end method
