.class public Landroid/support/v17/leanback/app/BrandedFragment;
.super Landroid/app/Fragment;
.source "BrandedFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TITLE_SHOW:Ljava/lang/String; = "titleShow"


# instance fields
.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

.field private mSearchAffordanceColorSet:Z

.field private mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private mShowingTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

.field private mTitleView:Landroid/view/View;

.field private mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSearchAffordanceColor()I
    .locals 1

    .line 303
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedFragment;->getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    return v0
.end method

.method public getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    .locals 2

    .line 280
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    return-object v0

    .line 283
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment views not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTitleHelper()Landroid/support/v17/leanback/widget/TitleHelper;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrandedFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    sget p2, Landroid/support/v17/leanback/R$id;->browse_title_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedFragment;->setTitleView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedFragment;->setTitleView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final isShowingTitle()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 71
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 72
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$attr;->browseTitleViewLayout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget p3, Landroid/support/v17/leanback/R$layout;->lb_browse_title:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 317
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 320
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 325
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "titleShow"

    .line 149
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 308
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 309
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 310
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedFragment;->showTitle(Z)V

    .line 311
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "titleShow"

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    .line 158
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    if-eqz p2, :cond_1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 159
    new-instance p2, Landroid/support/v17/leanback/widget/TitleHelper;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    .line 160
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-boolean p2, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_1
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 207
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 255
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    .line 256
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColor(I)V
    .locals 1

    .line 296
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedFragment;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 268
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColorSet:Z

    .line 270
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 228
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 2

    .line 103
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    .line 104
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    .line 106
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    check-cast p1, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;

    invoke-interface {p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    .line 109
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColorSet:Z

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 114
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedFragment;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 118
    new-instance p1, Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    invoke-direct {p1, v0, v1}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    :cond_3
    :goto_0
    return-void
.end method

.method public showTitle(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->updateComponentsVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedFragment;->showTitle(Z)V

    return-void
.end method

.method public showTitle(Z)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 179
    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    .line 180
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_1
    return-void
.end method
