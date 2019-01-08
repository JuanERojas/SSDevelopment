.class Lcom/tikilive/ui/activity/LoginActivity$1;
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

    .line 86
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/LoginActivity;->access$200(Lcom/tikilive/ui/activity/LoginActivity;)Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    new-instance v1, Lcom/tikilive/ui/activity/LoginActivity$1$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/activity/LoginActivity$1$1;-><init>(Lcom/tikilive/ui/activity/LoginActivity$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method
