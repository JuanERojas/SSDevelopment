.class Lcom/tikilive/ui/channel/ChannelActivity$5;
.super Ljava/lang/Object;
.source "ChannelActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity;->loadChannels(Z)V
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
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelActivity;

.field final synthetic val$socialBroadcasts:Z


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity;Z)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iput-boolean p2, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->val$socialBroadcasts:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 763
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity$5;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    .line 767
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->val$socialBroadcasts:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iput-boolean v1, v0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcastsLoading:Z

    goto :goto_0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iput-boolean v1, v0, Lcom/tikilive/ui/channel/ChannelActivity;->mOttChannelsLoading:Z

    .line 773
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->access$700(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCategories()Ljava/util/Map;

    move-result-object v0

    :try_start_0
    const-string v2, "status"

    .line 776
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_c

    .line 778
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelActivity;->access$700(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->val$socialBroadcasts:Z

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/model/ChannelProvider;->setSocialBroadcasts(Z)V

    const-string v2, "channels"

    .line 779
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 780
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 781
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "category"

    .line 782
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "stb_number"

    .line 786
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v4, "id"

    .line 788
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 791
    :goto_2
    new-instance v5, Lcom/tikilive/ui/model/Channel;

    const-string v6, "name"

    .line 793
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const-string v4, "id"

    .line 796
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v4, "img"

    .line 797
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "medium"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    const-string v4, "channel_type"

    .line 799
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "channel_type"

    .line 800
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "tveverywhere_channel"

    .line 801
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 802
    invoke-virtual {v5, v7}, Lcom/tikilive/ui/model/Channel;->setIsTvEverywhere(Z)V

    const-string v4, "tve_url"

    .line 803
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "tve_url"

    .line 804
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setTveUrl(Ljava/lang/String;)V

    :cond_1
    const-string v4, "tve_program_id"

    .line 806
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "tve_program_id"

    .line 807
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setTveProgramId(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v6, "sling_channel"

    .line 809
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 810
    invoke-virtual {v5, v7}, Lcom/tikilive/ui/model/Channel;->setIsSling(Z)V

    :cond_3
    :goto_3
    const-string v4, "is_hd"

    .line 814
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "is_hd"

    .line 815
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setIsHd(Z)V

    :cond_4
    const-string v4, "is_adult"

    .line 817
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "is_adult"

    .line 818
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setIsAdult(Z)V

    :cond_5
    const-string v4, "is_catchup_tv"

    .line 820
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "is_catchup_tv"

    .line 821
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setIsCatchUpTv(Z)V

    :cond_6
    const-string v4, "is_premium"

    .line 824
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "is_premium"

    .line 825
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setIsPremium(Z)V

    :cond_7
    const-string v4, "is_omniverse"

    .line 828
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "is_omniverse"

    .line 829
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setOmniverse(Z)V

    :cond_8
    const-string v4, "dvr"

    .line 832
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "dvr"

    .line 833
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tikilive/ui/model/Channel;->setDvr(Z)V

    .line 836
    :cond_9
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelActivity;->access$700(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/tikilive/ui/model/ChannelProvider;->add(Lcom/tikilive/ui/model/Channel;)V

    .line 838
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_a

    .line 840
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 844
    :cond_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 875
    :cond_b
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$1000(Lcom/tikilive/ui/channel/ChannelActivity;)V

    return-void

    .line 848
    :cond_c
    :try_start_3
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    .line 849
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 850
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 848
    invoke-static {v0, v1, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$800(Lcom/tikilive/ui/channel/ChannelActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 852
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$900(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 853
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 857
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 860
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 861
    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    invoke-static {p1, v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$800(Lcom/tikilive/ui/channel/ChannelActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 863
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$5;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$900(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 864
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method
