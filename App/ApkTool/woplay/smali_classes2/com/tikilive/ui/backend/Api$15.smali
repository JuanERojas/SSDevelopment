.class Lcom/tikilive/ui/backend/Api$15;
.super Lcom/tikilive/ui/backend/Api$ApiBaseRequest;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Api;->reportPlaybackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/backend/Api;

.field final synthetic val$contentId:I

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$errorCount:I

.field final synthetic val$errorDetails:Ljava/lang/String;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$playbackUrl:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/tikilive/ui/backend/Api$15;->this$0:Lcom/tikilive/ui/backend/Api;

    iput-object p6, p0, Lcom/tikilive/ui/backend/Api$15;->val$username:Ljava/lang/String;

    iput-object p7, p0, Lcom/tikilive/ui/backend/Api$15;->val$deviceId:Ljava/lang/String;

    iput-object p8, p0, Lcom/tikilive/ui/backend/Api$15;->val$deviceName:Ljava/lang/String;

    iput-object p9, p0, Lcom/tikilive/ui/backend/Api$15;->val$playbackUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/tikilive/ui/backend/Api$15;->val$contentType:Ljava/lang/String;

    iput p11, p0, Lcom/tikilive/ui/backend/Api$15;->val$contentId:I

    iput p12, p0, Lcom/tikilive/ui/backend/Api$15;->val$errorCount:I

    iput-object p13, p0, Lcom/tikilive/ui/backend/Api$15;->val$errorMessage:Ljava/lang/String;

    iput-object p14, p0, Lcom/tikilive/ui/backend/Api$15;->val$errorDetails:Ljava/lang/String;

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

    .line 1094
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "username"

    .line 1096
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$username:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_id"

    .line 1097
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_name"

    .line 1098
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$deviceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playback_url"

    .line 1099
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$playbackUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_type"

    .line 1100
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$contentType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_id"

    .line 1101
    iget v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$contentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_count"

    .line 1102
    iget v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$errorCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    .line 1103
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_details"

    .line 1104
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$15;->val$errorDetails:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
