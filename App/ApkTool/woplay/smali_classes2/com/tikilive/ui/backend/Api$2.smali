.class Lcom/tikilive/ui/backend/Api$2;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Api;->loadCurrentEvent(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/listener/OnCurrentEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/backend/Api;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$listener:Lcom/tikilive/ui/listener/OnCurrentEventListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Api;Lcom/tikilive/ui/listener/OnCurrentEventListener;Lcom/tikilive/ui/model/Channel;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/tikilive/ui/backend/Api$2;->this$0:Lcom/tikilive/ui/backend/Api;

    iput-object p2, p0, Lcom/tikilive/ui/backend/Api$2;->val$listener:Lcom/tikilive/ui/listener/OnCurrentEventListener;

    iput-object p3, p0, Lcom/tikilive/ui/backend/Api$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 295
    invoke-static {}, Lcom/tikilive/ui/backend/Api;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    iget-object p1, p0, Lcom/tikilive/ui/backend/Api$2;->val$listener:Lcom/tikilive/ui/listener/OnCurrentEventListener;

    iget-object v0, p0, Lcom/tikilive/ui/backend/Api$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/listener/OnCurrentEventListener;->onCurrentEvent(Lcom/tikilive/ui/model/Channel;)V

    return-void
.end method
