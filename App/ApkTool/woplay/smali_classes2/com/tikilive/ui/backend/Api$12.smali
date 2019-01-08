.class Lcom/tikilive/ui/backend/Api$12;
.super Lcom/tikilive/ui/backend/Api$ApiBaseRequest;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Api;->storeSpeedTestResult(JJLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/backend/Api;

.field final synthetic val$device:Ljava/lang/String;

.field final synthetic val$latency:J

.field final synthetic val$speed:J


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;JJLjava/lang/String;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcom/tikilive/ui/backend/Api$12;->this$0:Lcom/tikilive/ui/backend/Api;

    iput-wide p6, p0, Lcom/tikilive/ui/backend/Api$12;->val$speed:J

    iput-wide p8, p0, Lcom/tikilive/ui/backend/Api$12;->val$latency:J

    iput-object p10, p0, Lcom/tikilive/ui/backend/Api$12;->val$device:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "speed"

    .line 894
    iget-wide v2, p0, Lcom/tikilive/ui/backend/Api$12;->val$speed:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "latency"

    .line 895
    iget-wide v2, p0, Lcom/tikilive/ui/backend/Api$12;->val$latency:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    .line 896
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$12;->val$device:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
