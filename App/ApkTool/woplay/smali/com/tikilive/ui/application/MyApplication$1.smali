.class Lcom/tikilive/ui/application/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/application/MyApplication;->processSettings(Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/application/MyApplication;

.field final synthetic val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/application/MyApplication;Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    iput-object p2, p0, Lcom/tikilive/ui/application/MyApplication$1;->val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/application/MyApplication$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 9

    :try_start_0
    const-string v0, "status"

    .line 147
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    .line 150
    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-static {v0}, Lcom/tikilive/ui/application/MyApplication;->access$000(Lcom/tikilive/ui/application/MyApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "settings"

    .line 152
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "main_menu"

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "items"

    .line 154
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v1, "items"

    .line 155
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 158
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 160
    new-instance v5, Lcom/tikilive/ui/welcome/MainMenuItem;

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tikilive/ui/welcome/MainMenuItem;-><init>(Ljava/lang/String;)V

    const-string v6, "icon"

    .line 162
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 163
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const-string v8, "custom_"

    .line 164
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIconCustom(Z)V

    goto :goto_1

    :cond_0
    const-string v6, "."

    .line 168
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    const-string v6, "."

    .line 169
    invoke-virtual {v7, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 171
    :cond_1
    invoke-virtual {v5, v7}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    :goto_1
    const-string v6, "action_target"

    .line 174
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual {v5, v6}, Lcom/tikilive/ui/welcome/MainMenuItem;->setTarget(Ljava/lang/String;)V

    const-string v7, "action_id"

    .line 176
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/tikilive/ui/welcome/MainMenuItem;->setTargetId(I)V

    const-string v7, "app_launcher"

    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "android_package_id"

    .line 179
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/welcome/MainMenuItem;->setAndroidPackageId(Ljava/lang/String;)V

    const-string v6, "android_google_play"

    .line 180
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/welcome/MainMenuItem;->setAndroidGooglePlay(Z)V

    const-string v6, "android_stb"

    .line 181
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/welcome/MainMenuItem;->setAndroidSTB(Z)V

    const-string v6, "android_amazon"

    .line 182
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "yes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/welcome/MainMenuItem;->setAndroidAmazon(Z)V

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-static {v4}, Lcom/tikilive/ui/application/MyApplication;->access$000(Lcom/tikilive/ui/application/MyApplication;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "permissions"

    .line 189
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "use_search"

    .line 190
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    const-string v4, "use_search"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/application/MyApplication;->setPermissionUseSearch(Z)V

    goto :goto_2

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-virtual {v0, v3}, Lcom/tikilive/ui/application/MyApplication;->setPermissionUseSearch(Z)V

    :goto_2
    const-string v0, "dictionary"

    .line 196
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "dictionary"

    .line 198
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "playback_errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dictionary"

    .line 199
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "playerTimeout"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 201
    iget-object v4, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    const-string v5, "DictionaryPreferences"

    invoke-virtual {v4, v5, v3}, Lcom/tikilive/ui/application/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 202
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "channel_playback_error"

    const-string v5, "channel_playback_error"

    .line 203
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "video_playback_error"

    const-string v5, "video_playback_error"

    .line 204
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "player_timeout_message"

    const-string v4, "player_timeout_message"

    .line 206
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "player_paused_message"

    const-string v4, "player_paused_message"

    .line 207
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "player_timeout_option"

    const-string v4, "player_timeout_option"

    .line 208
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "player_paused_option"

    const-string v4, "player_paused_option"

    .line 209
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :catch_0
    :try_start_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v0, "playerTimeout"

    .line 216
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    const-string v1, "playerTimeout"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/application/MyApplication;->setPlayerTimeout(I)V

    .line 220
    :cond_6
    iget-object p1, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-static {p1, v2}, Lcom/tikilive/ui/application/MyApplication;->access$102(Lcom/tikilive/ui/application/MyApplication;Z)Z

    .line 222
    iget-object p1, p0, Lcom/tikilive/ui/application/MyApplication$1;->val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;

    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;->onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V

    goto :goto_4

    .line 225
    :cond_7
    iget-object p1, p0, Lcom/tikilive/ui/application/MyApplication$1;->val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;

    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;->onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 228
    sget-object v0, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/tikilive/ui/application/MyApplication$1;->val$onApplicationSettingsRetrieved:Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;

    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication$1;->this$0:Lcom/tikilive/ui/application/MyApplication;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;->onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V

    :goto_4
    return-void
.end method
