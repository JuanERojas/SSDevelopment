.class Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;
.super Ljava/lang/Object;
.source "ChoosePackageActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->loadPackageDetails(Lcom/tikilive/ui/model/Package;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

.field final synthetic val$channelsThumbsLimit:I

.field final synthetic val$currentPackage:Lcom/tikilive/ui/model/Package;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/model/Package;I)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    iput-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    iput p3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$channelsThumbsLimit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 183
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v0, "status"

    .line 187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    const-string v0, "details"

    .line 190
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "live_channels"

    .line 192
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "live_channels"

    .line 193
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 194
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 195
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v4, "stb_number"

    .line 199
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v4, "id"

    .line 201
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 204
    :goto_1
    new-instance v5, Lcom/tikilive/ui/model/Channel;

    const-string v6, "name"

    .line 206
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const-string v4, "id"

    .line 209
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v4, "img"

    .line 210
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$channelsThumbsLimit:I

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$channelsThumbsLimit:I

    if-ge v0, v2, :cond_3

    const-string v0, "catchup_channels"

    .line 220
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "catchup_channels"

    .line 221
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 222
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 223
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v4, "stb_number"

    .line 227
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    :try_start_4
    const-string v4, "id"

    .line 229
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 232
    :goto_4
    new-instance v5, Lcom/tikilive/ui/model/Channel;

    const-string v6, "name"

    .line 234
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const-string v4, "id"

    .line 237
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v4, "img"

    .line 238
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$channelsThumbsLimit:I

    if-ne v3, v4, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 248
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$channelsThumbsLimit:I

    if-ge v0, v2, :cond_5

    const-string v0, "radio_channels"

    .line 249
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "radio_channels"

    .line 250
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 251
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 252
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v2, "stb_number"

    .line 256
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_2
    :try_start_6
    const-string v2, "id"

    .line 258
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 261
    :goto_7
    new-instance v3, Lcom/tikilive/ui/model/Channel;

    const-string v4, "name"

    .line 263
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/tikilive/ui/model/Channel;-><init>(ILjava/lang/String;)V

    const-string v2, "id"

    .line 266
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/tikilive/ui/model/Channel;->setId(I)V

    const-string v2, "img"

    .line 267
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "small"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tikilive/ui/model/Channel;->setImageUrl(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$currentPackage:Lcom/tikilive/ui/model/Package;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->val$channelsThumbsLimit:I

    if-ne v0, v2, :cond_4

    goto :goto_8

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 277
    :cond_5
    :goto_8
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$508(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)I

    .line 278
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$500(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_8

    .line 279
    invoke-static {}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->newInstance()Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 281
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_a

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    .line 286
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

    .line 287
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {v0, v1, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$200(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 290
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :catch_3
    move-exception p1

    .line 293
    invoke-static {}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_7
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    .line 296
    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    .line 297
    invoke-virtual {v1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {p1, v0, v1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 299
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$200(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 300
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    :cond_8
    :goto_a
    return-void
.end method
