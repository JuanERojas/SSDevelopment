.class Lcom/tikilive/ui/activity/LoginActivity$4$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/LoginActivity$4;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/activity/LoginActivity$4;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/LoginActivity$4;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$4$2;->this$1:Lcom/tikilive/ui/activity/LoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 280
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/tikilive/ui/activity/LoginActivity$4$2;->this$1:Lcom/tikilive/ui/activity/LoginActivity$4;

    iget-object p2, p2, Lcom/tikilive/ui/activity/LoginActivity$4;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    const-class v0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    iget-object p2, p0, Lcom/tikilive/ui/activity/LoginActivity$4$2;->this$1:Lcom/tikilive/ui/activity/LoginActivity$4;

    iget-object p2, p2, Lcom/tikilive/ui/activity/LoginActivity$4;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p2, p1}, Lcom/tikilive/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
