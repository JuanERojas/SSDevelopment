.class Lcom/tikilive/ui/activity/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/LoginActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$3;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 195
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$3;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->access$300(Lcom/tikilive/ui/activity/LoginActivity;Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$3;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/LoginActivity;->access$400(Lcom/tikilive/ui/activity/LoginActivity;)Lcom/facebook/login/widget/LoginButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/widget/LoginButton;->performClick()Z

    :goto_0
    return-void
.end method
