.class Lcom/tikilive/ui/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/LoginActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$2;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$2;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity$2;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    const v2, 0x7f12018d

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    .line 183
    invoke-static {}, Lcom/tikilive/ui/activity/LoginActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$2;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 187
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity$2;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v1, v0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->access$000(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$2;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->access$300(Lcom/tikilive/ui/activity/LoginActivity;Lcom/facebook/AccessToken;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 170
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
