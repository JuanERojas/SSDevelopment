.class public Lcom/tikilive/ui/fragment/ErrorFragment;
.super Landroid/support/v4/app/Fragment;
.source "ErrorFragment.java"


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonText:Ljava/lang/String;

.field private mErrorFrame:Landroid/view/View;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;
    .locals 3

    .line 32
    new-instance v0, Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/fragment/ErrorFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "message"

    .line 35
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateButton()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButtonText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private updateMessage()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateTitle()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitle:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0054

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00dd

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mErrorFrame:Landroid/view/View;

    const p2, 0x7f0a00df

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessageView:Landroid/widget/TextView;

    .line 49
    invoke-direct {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->updateMessage()V

    const p2, 0x7f0a005c

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButton:Landroid/widget/Button;

    .line 51
    invoke-direct {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->updateButton()V

    const p2, 0x7f0a030f

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitleView:Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->updateTitle()V

    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 69
    iget-object v0, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mErrorFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 130
    invoke-direct {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->updateButton()V

    return-void
.end method

.method public setButtonDefaultAction()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonText(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/tikilive/ui/fragment/ErrorFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/fragment/ErrorFragment$1;-><init>(Lcom/tikilive/ui/fragment/ErrorFragment;)V

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mButtonText:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->updateButton()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    .line 96
    invoke-direct {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->updateMessage()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/tikilive/ui/fragment/ErrorFragment;->mTitle:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/tikilive/ui/fragment/ErrorFragment;->updateTitle()V

    return-void
.end method
