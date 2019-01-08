.class Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;
.super Ljava/lang/Object;
.source "PackageDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->loadPackageDetails()V
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
.field final synthetic this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    :try_start_0
    const-string v0, "status"

    .line 140
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const-string v0, "details"

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "live_channels"

    .line 145
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "live_channels"

    .line 146
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 147
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 148
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v4, "stb_number"

    .line 152
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v4, "id"

    .line 154
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 157
    :goto_1
    new-instance v5, Lcom/tikilive/ui/model/Channel;

    const-string v6, "name"

    .line 159
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const-string v4, "id"

    .line 162
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v4, "img"

    .line 163
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-static {v3}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$000(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "catchup_channels"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "catchup_channels"

    .line 170
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    .line 171
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 172
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v5, "stb_number"

    .line 176
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    :try_start_4
    const-string v5, "id"

    .line 178
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 181
    :goto_3
    new-instance v6, Lcom/tikilive/ui/model/Channel;

    const-string v7, "name"

    .line 183
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const-string v5, "id"

    .line 186
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v5, "img"

    .line 187
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "medium"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v6, v2}, Lcom/tikilive/ui/model/Channel;->setIsCatchUpTv(Z)V

    .line 190
    iget-object v4, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-static {v4}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$100(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const-string v0, "audio_channels"

    .line 194
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "audio_channels"

    .line 195
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 196
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 197
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v4, "stb_number"

    .line 201
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    :try_start_6
    const-string v4, "id"

    .line 203
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 206
    :goto_5
    new-instance v5, Lcom/tikilive/ui/model/Channel;

    const-string v6, "name"

    .line 208
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const-string v4, "id"

    .line 211
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v4, "img"

    .line 212
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v5, v2}, Lcom/tikilive/ui/model/Channel;->setIsRadio(Z)V

    .line 215
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-static {v3}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$200(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$302(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$402(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$502(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;D)D

    .line 222
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    const-string v1, "has_subscription"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$602(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Z)Z

    .line 224
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->openPackageDetails()V

    goto/16 :goto_7

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    .line 228
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

    .line 229
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {v0, v1, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$700(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$800(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 232
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    .line 235
    invoke-static {}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    .line 238
    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    .line 239
    invoke-virtual {v1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {p1, v0, v1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$700(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->access$800(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 242
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    :goto_7
    return-void
.end method
