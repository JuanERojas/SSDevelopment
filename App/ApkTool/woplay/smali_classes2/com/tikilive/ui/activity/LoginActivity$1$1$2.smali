.class Lcom/tikilive/ui/activity/LoginActivity$1$1$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/LoginActivity$1$1;->success(Lcom/twitter/sdk/android/core/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/LoginActivity$1$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$2;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 147
    invoke-static {}, Lcom/tikilive/ui/activity/LoginActivity;->access$100()Ljava/lang/String;

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

    .line 149
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$2;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1200c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$2;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$2;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v1, p1, v0}, Lcom/tikilive/ui/activity/LoginActivity;->access$000(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
