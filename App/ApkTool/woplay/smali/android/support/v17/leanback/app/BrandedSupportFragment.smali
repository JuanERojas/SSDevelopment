.class public Landroid/support/v17/leanback/app/BrandedSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "BrandedSupportFragment.java"


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

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSearchAffordanceColor()I
    .locals 1

    .line 298
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    return v0
.end method

.method public getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    .locals 2

    .line 275
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment views not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTitleHelper()Landroid/support/v17/leanback/widget/TitleHelper;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    sget p2, Landroid/support/v17/leanback/R$id;->browse_title_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setTitleView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setTitleView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final isShowingTitle()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 66
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 67
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$attr;->browseTitleViewLayout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
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

    .line 312
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 315
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 320
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 321
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "titleShow"

    .line 144
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 303
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 305
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    .line 306
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

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

    .line 149
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "titleShow"

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    .line 153
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    if-eqz p2, :cond_1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 154
    new-instance p2, Landroid/support/v17/leanback/widget/TitleHelper;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    .line 155
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-boolean p2, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_1
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 202
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 250
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    .line 251
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColor(I)V
    .locals 1

    .line 291
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 263
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    const/4 p1, 0x1

    .line 264
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    .line 265
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 223
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    .line 224
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 2

    .line 98
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    .line 99
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    .line 101
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    check-cast p1, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;

    invoke-interface {p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    .line 104
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 109
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 113
    new-instance p1, Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    invoke-direct {p1, v0, v1}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    :cond_3
    :goto_0
    return-void
.end method

.method public showTitle(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->updateComponentsVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    return-void
.end method

.method public showTitle(Z)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 174
    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    .line 175
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_1
    return-void
.end method
