.class public Lcom/tikilive/ui/fragment/LoadingFragment;
.super Landroid/support/v4/app/Fragment;
.source "LoadingFragment.java"


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private mAlternateMessage:Z

.field private mAlternateView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mLogoHidden:Z

.field private mMessage:Ljava/lang/String;

.field private mTaglineHidden:Z

.field private mTaglineView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mLogoHidden:Z

    .line 24
    iput-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineHidden:Z

    .line 25
    iput-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateMessage:Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;
    .locals 3

    .line 28
    new-instance v0, Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/fragment/LoadingFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 30
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/tikilive/ui/fragment/LoadingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/tikilive/ui/fragment/LoadingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d0055

    .line 49
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01a1

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTextView:Landroid/widget/TextView;

    .line 52
    iget-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateMessage:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a019d

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateView:Landroid/widget/TextView;

    .line 56
    iget-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateMessage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a019e

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mImageView:Landroid/widget/ImageView;

    .line 60
    iget-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mLogoHidden:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0a01a0

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineView:Landroid/widget/TextView;

    .line 63
    iget-object p2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineHidden:Z

    if-eqz v0, :cond_3

    const/16 p3, 0x8

    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p1
.end method

.method public setAlternateMessage(Z)V
    .locals 3

    .line 93
    iput-boolean p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateMessage:Z

    .line 94
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateMessage:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateMessage:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setLogoHidden(Z)V
    .locals 1

    .line 79
    iput-boolean p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mLogoHidden:Z

    .line 80
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mLogoHidden:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mMessage:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mAlternateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTaglineHidden(Z)V
    .locals 1

    .line 86
    iput-boolean p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineHidden:Z

    .line 87
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/tikilive/ui/fragment/LoadingFragment;->mTaglineHidden:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
