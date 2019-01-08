.class public Landroid/support/v17/leanback/widget/SpeechOrbView;
.super Landroid/support/v17/leanback/widget/SearchOrbView;
.source "SpeechOrbView.java"


# instance fields
.field private mCurrentLevel:I

.field private mListening:Z

.field private mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mSoundLevelMaxZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 18
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 32
    sget p3, Landroid/support/v17/leanback/R$fraction;->lb_search_bar_speech_orb_max_level_zoom:I

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, p3, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p3

    iput p3, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    .line 35
    new-instance p3, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v0, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_pulsed:I

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget v2, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_icon:I

    .line 37
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p3, v0, v1, v2}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object p3, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 38
    new-instance p3, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v0, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p3, v0, p1, p2}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object p3, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 42
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    return-void
.end method


# virtual methods
.method getLayoutResourceId()I
    .locals 1

    .line 47
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_speech_orb:I

    return v0
.end method

.method public setListeningOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    return-void
.end method

.method public setNotListeningOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    .line 65
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    return-void
.end method

.method public setSoundLevel(I)V
    .locals 2

    .line 97
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    if-le p1, v0, :cond_1

    .line 102
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    goto :goto_0

    .line 104
    :cond_1
    iget p1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 107
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getFocusedZoom()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 109
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    return-void
.end method

.method public showListening()V
    .locals 3

    .line 72
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 73
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->enableOrbColorAnimation(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    .line 78
    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 79
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    return-void
.end method

.method public showNotListening()V
    .locals 2

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 87
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    return-void
.end method
