.class Lcom/tikilive/ui/backend/Api$1;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Api;->loadCurrentEvent(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/listener/OnCurrentEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/tikilive/ui/backend/Api;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$listener:Lcom/tikilive/ui/listener/OnCurrentEventListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Api;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/listener/OnCurrentEventListener;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/tikilive/ui/backend/Api$1;->this$0:Lcom/tikilive/ui/backend/Api;

    iput-object p2, p0, Lcom/tikilive/ui/backend/Api$1;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-object p3, p0, Lcom/tikilive/ui/backend/Api$1;->val$listener:Lcom/tikilive/ui/listener/OnCurrentEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 279
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/backend/Api$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "event"

    .line 284
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/ApiHelper;->getEventFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Event;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-static {}, Lcom/tikilive/ui/backend/Api;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load current event for channel \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$1;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/backend/Api$1;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Channel;->setCurrentEvent(Lcom/tikilive/ui/model/Event;)V

    .line 289
    iget-object p1, p0, Lcom/tikilive/ui/backend/Api$1;->val$listener:Lcom/tikilive/ui/listener/OnCurrentEventListener;

    iget-object v0, p0, Lcom/tikilive/ui/backend/Api$1;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/listener/OnCurrentEventListener;->onCurrentEvent(Lcom/tikilive/ui/model/Channel;)V

    return-void
.end method
