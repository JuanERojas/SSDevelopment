.class Lcom/tikilive/ui/video/VideoPlaybackActivity$9$3;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
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
.field final synthetic this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$3;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 854
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
