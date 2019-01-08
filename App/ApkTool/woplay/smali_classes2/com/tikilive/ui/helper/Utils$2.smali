.class final Lcom/tikilive/ui/helper/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/helper/Utils;->logout(Landroid/content/Context;ZLcom/tikilive/ui/helper/Utils$OnLogoutNotified;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;Landroid/content/Context;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/tikilive/ui/helper/Utils$2;->val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;

    iput-object p2, p0, Lcom/tikilive/ui/helper/Utils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 531
    invoke-static {}, Lcom/tikilive/ui/helper/Utils;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    iget-object v0, p0, Lcom/tikilive/ui/helper/Utils$2;->val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/tikilive/ui/helper/Utils$2;->val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;

    invoke-interface {v0, p1}, Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;->onFailure(Lcom/android/volley/VolleyError;)V

    goto :goto_1

    .line 535
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/helper/Utils$2;->val$context:Landroid/content/Context;

    const v0, 0x7f1200bf

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
