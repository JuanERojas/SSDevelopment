.class Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundContinuityService"
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackgroundContinuity"

.field private static sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;


# instance fields
.field private mColor:I

.field private mCount:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastThemeDrawableId:I

.field private mLastThemeDrawableState:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 455
    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->reset()V

    return-void
.end method

.method public static getInstance()Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;
    .locals 4

    .line 475
    sget-object v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    iget v1, v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    .line 476
    sget-boolean v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BackgroundContinuity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning instance with new count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    return-object v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 470
    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mColor:I

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 488
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mColor:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 502
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableId:I

    if-ne v0, p2, :cond_1

    .line 503
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 504
    sget-boolean v1, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BackgroundContinuity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got cached theme drawable state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 510
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 511
    sget-boolean p1, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "BackgroundContinuity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded theme drawable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 513
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    .line 514
    iput p2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableId:I

    :cond_3
    return-object v0
.end method

.method public setColor(I)V
    .locals 0

    .line 494
    iput p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mColor:I

    const/4 p1, 0x0

    .line 495
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 498
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public unref()V
    .locals 3

    .line 481
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unref, count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    if-nez v0, :cond_2

    .line 483
    sget-boolean v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BackgroundContinuity"

    const-string v1, "mCount is zero, resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->reset()V

    :cond_2
    return-void
.end method
