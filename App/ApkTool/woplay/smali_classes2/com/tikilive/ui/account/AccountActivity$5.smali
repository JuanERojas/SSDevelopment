.class Lcom/tikilive/ui/account/AccountActivity$5;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/AccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/AccountActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/AccountActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6

    .line 215
    invoke-static {}, Lcom/tikilive/ui/account/AccountActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/AccountActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/AccountActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1200bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 222
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$5;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/account/AccountActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method