.class final Lcom/tikilive/ui/helper/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/helper/Utils;->logout(Landroid/content/Context;ZLcom/tikilive/ui/helper/Utils$OnLogoutNotified;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/tikilive/ui/helper/Utils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tikilive/ui/helper/Utils$1;->val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 505
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/helper/Utils$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/tikilive/ui/helper/Utils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->logout()V

    .line 513
    iget-object v0, p0, Lcom/tikilive/ui/helper/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/guide/ChannelGuideContentProvider;->CONTENT_URI_DVRS:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->clear()V

    .line 519
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 521
    iget-object v0, p0, Lcom/tikilive/ui/helper/Utils$1;->val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/tikilive/ui/helper/Utils$1;->val$listener:Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;

    invoke-interface {v0, p1}, Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;->onSuccess(Lorg/json/JSONObject;)V

    .line 525
    :cond_0
    invoke-static {}, Lcom/tikilive/ui/helper/Utils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successfully notified logout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
