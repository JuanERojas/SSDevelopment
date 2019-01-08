.class Lcom/tikilive/ui/application/MyApplication$2;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/application/MyApplication;->processSettings(Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/application/MyApplication;

.field final synthetic val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/application/MyApplication;Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/tikilive/ui/application/MyApplication$2;->this$0:Lcom/tikilive/ui/application/MyApplication;

    iput-object p2, p0, Lcom/tikilive/ui/application/MyApplication$2;->val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 235
    sget-object v0, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

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

    .line 236
    iget-object p1, p0, Lcom/tikilive/ui/application/MyApplication$2;->val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;

    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication$2;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;->onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V

    return-void
.end method
