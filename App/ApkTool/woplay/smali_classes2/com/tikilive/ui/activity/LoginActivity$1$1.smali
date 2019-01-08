.class Lcom/tikilive/ui/activity/LoginActivity$1$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/LoginActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/activity/LoginActivity$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/LoginActivity$1;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 159
    invoke-static {}, Lcom/tikilive/ui/activity/LoginActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Twitter failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 94
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 97
    iget-object v1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 98
    iget-object p1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v2, v2, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    iget-object v2, v2, Lcom/tikilive/ui/activity/LoginActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v3, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;

    invoke-direct {v3, p0, v0}, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;-><init>(Lcom/tikilive/ui/activity/LoginActivity$1$1;Ljava/lang/String;)V

    new-instance v0, Lcom/tikilive/ui/activity/LoginActivity$1$1$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/activity/LoginActivity$1$1$2;-><init>(Lcom/tikilive/ui/activity/LoginActivity$1$1;)V

    invoke-virtual {v2, v1, p1, v3, v0}, Lcom/tikilive/ui/backend/Api;->authenticateTwitter(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
