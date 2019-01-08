.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->launchCast()V
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
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Lcom/tikilive/ui/model/Channel;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 655
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "status"

    .line 661
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    :try_start_1
    const-string v0, "radio"

    .line 670
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "stream"

    .line 678
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 683
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Channel;->setUrl(Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getChannelMediaInfo(Lcom/tikilive/ui/model/Channel;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1502(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaInfo;

    .line 686
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 687
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 680
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load radio channel details from API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    .line 672
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load radio channel details from API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 691
    :cond_0
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load radio channel details from API: received HTTP response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 663
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load radio channel details from API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
