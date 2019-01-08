.class Lcom/tikilive/ui/channel/ChannelActivity$7;
.super Ljava/lang/Object;
.source "ChannelActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity;->loadRadioChannels()V
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


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 901
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity$7;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 7

    .line 905
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tikilive/ui/channel/ChannelActivity;->mRadioChannelsLoading:Z

    .line 907
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->access$700(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getGenres()Ljava/util/Map;

    move-result-object v0

    :try_start_0
    const-string v2, "status"

    .line 910
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    const-string v2, "radios"

    .line 912
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 913
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 914
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "genre"

    .line 915
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "stb_number"

    .line 919
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v4, "id"

    .line 921
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 924
    :goto_1
    new-instance v5, Lcom/tikilive/ui/model/Channel;

    const-string v6, "name"

    .line 926
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x1

    .line 929
    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setIsRadio(Z)V

    const-string v4, "id"

    .line 930
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v4, "img"

    .line 931
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "large"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/Channel;->setGenre(Ljava/lang/String;)V

    .line 934
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelActivity;->access$700(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/tikilive/ui/model/ChannelProvider;->add(Lcom/tikilive/ui/model/Channel;)V

    .line 936
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 938
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 939
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 942
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 966
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$700(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->getChannels()Ljava/util/List;

    move-result-object p1

    .line 967
    new-instance v0, Lcom/tikilive/ui/channel/ChannelActivity$7$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelActivity$7$1;-><init>(Lcom/tikilive/ui/channel/ChannelActivity$7;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 974
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$1000(Lcom/tikilive/ui/channel/ChannelActivity;)V

    return-void

    .line 946
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    .line 947
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

    .line 948
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-static {v0, v1, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$800(Lcom/tikilive/ui/channel/ChannelActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 950
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$900(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 951
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 955
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 958
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 959
    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 957
    invoke-static {p1, v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$800(Lcom/tikilive/ui/channel/ChannelActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 961
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$7;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$900(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 962
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method
