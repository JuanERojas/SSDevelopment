.class Lcom/tikilive/ui/backend/Api$14;
.super Lcom/tikilive/ui/backend/Api$ApiBaseRequest;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Api;->disconnectDevice(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/backend/Api;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/tikilive/ui/backend/Api$14;->this$0:Lcom/tikilive/ui/backend/Api;

    iput-object p6, p0, Lcom/tikilive/ui/backend/Api$14;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1069
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 1070
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$14;->val$deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
