.class public Landroid/support/v17/leanback/widget/GuidanceStylist;
.super Ljava/lang/Object;
.source "GuidanceStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FragmentAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    }
.end annotation


# instance fields
.field private mBreadcrumbView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mGuidanceContainer:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBreadcrumbView()Landroid/widget/TextView;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;)Landroid/view/View;
    .locals 2

    .line 152
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onProvideLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 153
    sget p2, Landroid/support/v17/leanback/R$id;->guidance_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    .line 154
    sget p2, Landroid/support/v17/leanback/R$id;->guidance_breadcrumb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    .line 155
    sget p2, Landroid/support/v17/leanback/R$id;->guidance_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    .line 156
    sget p2, Landroid/support/v17/leanback/R$id;->guidance_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    .line 157
    sget p2, Landroid/support/v17/leanback/R$id;->guidance_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    .line 161
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 162
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 166
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 170
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_2
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 174
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 175
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    :cond_4
    :goto_0
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 182
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    .line 183
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_5

    .line 186
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_5
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_6
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 192
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    :cond_7
    iget-object p3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    .line 206
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    .line 207
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    .line 208
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onProvideLayoutId()I
    .locals 1

    .line 220
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidance:I

    return v0
.end method
