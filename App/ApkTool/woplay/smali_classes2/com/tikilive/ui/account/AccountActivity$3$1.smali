.class Lcom/tikilive/ui/account/AccountActivity$3$1;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/AccountActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/account/AccountActivity$3;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/AccountActivity$3;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$3$1;->this$1:Lcom/tikilive/ui/account/AccountActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$3$1;->this$1:Lcom/tikilive/ui/account/AccountActivity$3;

    iget-object p1, p1, Lcom/tikilive/ui/account/AccountActivity$3;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/AccountActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$3$1;->this$1:Lcom/tikilive/ui/account/AccountActivity$3;

    iget-object p1, p1, Lcom/tikilive/ui/account/AccountActivity$3;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/AccountActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$3$1;->this$1:Lcom/tikilive/ui/account/AccountActivity$3;

    iget-object p1, p1, Lcom/tikilive/ui/account/AccountActivity$3;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/AccountActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/application/MyApplication;

    invoke-virtual {p1}, Lcom/tikilive/ui/application/MyApplication;->resetSettings()V

    .line 124
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$3$1;->this$1:Lcom/tikilive/ui/account/AccountActivity$3;

    iget-object p1, p1, Lcom/tikilive/ui/account/AccountActivity$3;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    const/4 p2, 0x1

    new-instance v0, Lcom/tikilive/ui/account/AccountActivity$3$1$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/AccountActivity$3$1$1;-><init>(Lcom/tikilive/ui/account/AccountActivity$3$1;)V

    invoke-static {p1, p2, v0}, Lcom/tikilive/ui/helper/Utils;->logout(Landroid/content/Context;ZLcom/tikilive/ui/helper/Utils$OnLogoutNotified;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
