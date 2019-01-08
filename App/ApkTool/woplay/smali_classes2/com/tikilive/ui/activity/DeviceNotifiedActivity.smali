.class public Lcom/tikilive/ui/activity/DeviceNotifiedActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "DeviceNotifiedActivity.java"


# static fields
.field public static final ARGUMENT_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final ARGUMENT_TITLE:Ljava/lang/String; = "TITLE"

.field public static final TYPE:Ljava/lang/String; = "TYPE"

.field public static final TYPE_ACCOUNT_LOCKED:I = 0x102

.field public static final TYPE_DEVICE_DISCONNECTED:I = 0x106

.field public static final TYPE_DEVICE_LOCKED:I = 0x103

.field public static final TYPE_FORCED_LOGOUT:I = 0x105

.field public static final TYPE_GENERIC_MESSAGE:I = 0x101

.field public static final TYPE_PLAYBACK_LIMIT:I = 0x104


# instance fields
.field private mAccountButtonView:Landroid/widget/Button;

.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mDismissButtonView:Landroid/widget/Button;

.field private mLoginButtonView:Landroid/widget/Button;

.field private mLogoutButtonView:Landroid/widget/Button;

.field private mMessage:Ljava/lang/String;

.field private mMessageView1:Landroid/widget/TextView;

.field private mMessageView2:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private showAccountLockedScreen()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method private showDeviceDisconnectedScreen()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    const v1, 0x7f1201e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 160
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method private showDeviceLockedScreen()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method private showForcedLogoutScreen()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f1200dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    const v2, 0x7f1200db

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method private showGenericErrorScreen()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method private showPlaybackLimitScreen()V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120243

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessage:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v2, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120245

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dismiss(Landroid/view/View;)V
    .locals 1

    .line 212
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goToAccount(Landroid/view/View;)V
    .locals 1

    .line 207
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goToLogin(Landroid/view/View;)V
    .locals 1

    .line 202
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/activity/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public logout(Landroid/view/View;)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/application/MyApplication;

    invoke-virtual {p1}, Lcom/tikilive/ui/application/MyApplication;->resetSettings()V

    .line 221
    new-instance p1, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;-><init>(Lcom/tikilive/ui/activity/DeviceNotifiedActivity;)V

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/tikilive/ui/helper/Utils;->logout(Landroid/content/Context;ZLcom/tikilive/ui/helper/Utils$OnLogoutNotified;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 52
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->setContentView(I)V

    .line 54
    invoke-static {p0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 56
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitle:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessage:Ljava/lang/String;

    const p1, 0x7f0a030f

    .line 59
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mTitleView:Landroid/widget/TextView;

    const p1, 0x7f0a010a

    .line 60
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView1:Landroid/widget/TextView;

    const p1, 0x7f0a027b

    .line 61
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mMessageView2:Landroid/widget/TextView;

    const p1, 0x7f0a0016

    .line 62
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLoginButtonView:Landroid/widget/Button;

    const p1, 0x7f0a0017

    .line 63
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mLogoutButtonView:Landroid/widget/Button;

    const p1, 0x7f0a0014

    .line 64
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mAccountButtonView:Landroid/widget/Button;

    const p1, 0x7f0a0015

    .line 65
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->mDismissButtonView:Landroid/widget/Button;

    .line 67
    invoke-static {p0}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->resetLastNotified()V

    .line 69
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "TYPE"

    const/16 v1, 0x101

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->showDeviceDisconnectedScreen()V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-direct {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->showForcedLogoutScreen()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-direct {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->showPlaybackLimitScreen()V

    goto :goto_0

    .line 78
    :pswitch_3
    invoke-direct {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->showDeviceLockedScreen()V

    goto :goto_0

    .line 75
    :pswitch_4
    invoke-direct {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->showAccountLockedScreen()V

    goto :goto_0

    .line 72
    :pswitch_5
    invoke-direct {p0}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->showGenericErrorScreen()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 95
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->clearHistory()V

    return-void
.end method
