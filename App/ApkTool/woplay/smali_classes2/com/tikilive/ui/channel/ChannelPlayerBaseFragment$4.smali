.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f1201cd

    :try_start_0
    const-string v1, "status"

    .line 313
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    :try_start_1
    const-string v1, "radio"

    .line 323
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 324
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v2, "live"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/model/Channel;->setLive(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "stream"

    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 339
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Channel;->setUrl(Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;

    invoke-static {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$100(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 335
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

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

    .line 336
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 326
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load radio channel details from API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_1
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load radio channel details from API: received HTTP response code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 315
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load radio channel details from API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
