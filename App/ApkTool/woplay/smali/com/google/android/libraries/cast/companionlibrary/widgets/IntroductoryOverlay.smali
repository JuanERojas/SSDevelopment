.class public Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;
.super Landroid/widget/RelativeLayout;
.source "IntroductoryOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;,
        Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;
    }
.end annotation


# static fields
.field private static final ALPHA_PROPERTY:Ljava/lang/String; = "alpha"

.field private static final FADE_OUT_LENGTH_MS:J = 0x190L

.field public static final FTU_SHOWN_KEY:Ljava/lang/String; = "ccl_ftu_shown"

.field private static final INVISIBLE_VALUE:F


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mButton:Landroid/widget/Button;

.field private mCenterX:I

.field private mCenterY:I

.field private mFocusRadius:F

.field private mHolePaint:Landroid/graphics/Paint;

.field private mIsOverlayVisible:Z

.field private mIsSingleTime:Z

.field private mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

.field private mOverlayColorId:I

.field private mSubtitleText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)V
    .locals 2

    .line 99
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->CustomTheme_CCLIntroOverlayStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$000(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mIsSingleTime:Z

    .line 106
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 107
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->ccl_intro_overlay:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    sget p3, Lcom/google/android/libraries/cast/companionlibrary/R$id;->button:I

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mButton:Landroid/widget/Button;

    .line 109
    sget p3, Lcom/google/android/libraries/cast/companionlibrary/R$id;->textTitle:I

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mTitleText:Landroid/widget/TextView;

    .line 110
    sget p3, Lcom/google/android/libraries/cast/companionlibrary/R$id;->textSubtitle:I

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mSubtitleText:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->CCLIntroOverlay:[I

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$attr;->CCLIntroOverlayStyle:I

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$style;->CCLIntroOverlay:I

    .line 112
    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 114
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$200(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)I

    move-result p3

    if-eqz p3, :cond_0

    .line 115
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$200(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)I

    move-result p3

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mOverlayColorId:I

    goto :goto_0

    .line 117
    :cond_0
    sget p3, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->CCLIntroOverlay_ccl_IntroBackgroundColor:I

    const/4 v0, 0x0

    .line 119
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 118
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mOverlayColorId:I

    .line 121
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$300(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)F

    move-result p3

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mFocusRadius:F

    .line 122
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$400(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 123
    iget p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mFocusRadius:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_1

    .line 124
    sget p3, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->CCLIntroOverlay_ccl_IntroFocusRadius:I

    .line 125
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mFocusRadius:F

    .line 127
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$500(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Landroid/view/View;

    move-result-object p3

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 129
    invoke-virtual {p3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mCenterX:I

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mCenterY:I

    const/4 p3, 0x1

    .line 132
    invoke-virtual {p0, p3}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->setFitsSystemWindows(Z)V

    .line 133
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->setupHolePaint()V

    .line 134
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$600(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$700(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;->access$800(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->setButton(Ljava/lang/String;Landroid/content/res/TypedArray;)V

    .line 137
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->setFtuShown()V

    return-void
.end method

.method private isFtuShown()Z
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ccl_ftu_shown"

    const/4 v2, 0x0

    .line 252
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setButton(Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .locals 2

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->CCLIntroOverlay_ccl_IntroButtonText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_0
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->CCLIntroOverlay_ccl_IntroButtonBackgroundColor:I

    const/4 v1, 0x0

    .line 179
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 178
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 181
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 183
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mButton:Landroid/widget/Button;

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$1;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setFtuShown()V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ccl_ftu_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setupHolePaint()V
    .locals 3

    .line 203
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 204
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mHolePaint:Landroid/graphics/Paint;

    .line 205
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mHolePaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mHolePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 208
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mHolePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mBitmap:Landroid/graphics/Bitmap;

    .line 214
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 215
    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mOverlayColorId:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 216
    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mFocusRadius:F

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public fadeOut(J)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "alpha"

    const/4 v1, 0x1

    .line 228
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public remove()V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mBitmap:Landroid/graphics/Bitmap;

    .line 169
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mIsSingleTime:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->isFtuShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    return-void

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mIsOverlayVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->mIsOverlayVisible:Z

    .line 151
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
