.class Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;
.super Lcom/github/snowdream/android/util/concurrent/AsyncTask;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsycCheckUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/snowdream/android/util/concurrent/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/github/snowdream/android/app/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/snowdream/android/app/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/github/snowdream/android/app/UpdateManager;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-direct {p0}, Lcom/github/snowdream/android/util/concurrent/AsyncTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/AbstractUpdateListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    .line 139
    invoke-direct {p0, p2}, Lcom/github/snowdream/android/util/concurrent/AsyncTask;-><init>(Lcom/github/snowdream/android/util/concurrent/TaskListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateInfo;
    .locals 3

    .line 144
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const-string p1, "There is no url."

    .line 145
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$100(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 151
    aget-object p1, p1, v0

    .line 152
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "There is no url."

    .line 153
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$100(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-object v2

    .line 162
    :cond_1
    sget-object v0, Lcom/github/snowdream/android/app/UpdateManager$2;->$SwitchMap$com$github$snowdream$android$app$UpdateFormat:[I

    iget-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v1}, Lcom/github/snowdream/android/app/UpdateManager;->access$200(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/UpdateOptions;->getUpdateFormat()Lcom/github/snowdream/android/app/UpdateFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/UpdateFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 187
    :try_start_0
    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    .line 188
    invoke-virtual {p1, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->followRedirects(Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string v0, "application/json"

    .line 189
    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->accept(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string v0, "UTF-8"

    .line 190
    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->acceptCharset(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string v0, "UTF-8"

    .line 191
    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    new-instance v0, Lcom/github/snowdream/android/app/UpdateJsonParser;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/UpdateJsonParser;-><init>()V

    .line 194
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/UpdateJsonParser;->parse(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateInfo;

    move-result-object p1
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/github/snowdream/android/app/UpdateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateException;->printStackTrace()V

    const-string v0, "UpdateException"

    .line 203
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 199
    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    const-string v0, "JsonSyntaxException"

    .line 200
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 196
    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    const-string v0, "HttpRequest.HttpRequestExceptio"

    .line 197
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->followRedirects(Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string v0, "application/xml"

    .line 167
    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->accept(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string v0, "UTF-8"

    .line 168
    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->acceptCharset(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p1

    const-string v0, "UTF-8"

    .line 169
    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance v0, Lcom/github/snowdream/android/app/UpdateXmlParser;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/UpdateXmlParser;-><init>()V

    .line 172
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/UpdateXmlParser;->parse(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateInfo;

    move-result-object p1
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/github/snowdream/android/app/UpdateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 180
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateException;->printStackTrace()V

    const-string v0, "UpdateException"

    .line 181
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 177
    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    const-string v0, "JsonSyntaxException"

    .line 178
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 174
    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    const-string v0, "HttpRequest.HttpRequestExceptio"

    .line 175
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, v2

    :goto_1
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->doInBackground([Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 5

    .line 213
    invoke-super {p0, p1}, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v1}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 217
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 218
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v3, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v3}, Lcom/github/snowdream/android/app/UpdateManager;->access$200(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/UpdateOptions;->shouldCheckPackageName()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    check-cast p1, Lcom/github/snowdream/android/app/AbstractUpdateListener;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onShowNoUpdateUI()V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/github/snowdream/android/app/updater/R$string;->preference_name:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v3, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v3}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/github/snowdream/android/app/updater/R$string;->preference_key_skip_check_update_version_code:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    iget-object v4, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v4}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "-1"

    .line 228
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v2, v1, :cond_4

    .line 231
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->isForceUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v1}, Lcom/github/snowdream/android/app/UpdateManager;->access$200(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/UpdateOptions;->shouldForceUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    check-cast p1, Lcom/github/snowdream/android/app/AbstractUpdateListener;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onShowNoUpdateUI()V

    goto :goto_1

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$200(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/UpdateOptions;->shouldAutoUpdate()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->isAutoUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    check-cast v0, Lcom/github/snowdream/android/app/AbstractUpdateListener;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onShowUpdateUI(Lcom/github/snowdream/android/app/UpdateInfo;)V

    goto :goto_1

    .line 235
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$400(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V

    goto :goto_1

    .line 241
    :cond_4
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    check-cast p1, Lcom/github/snowdream/android/app/AbstractUpdateListener;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onShowNoUpdateUI()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "can not get the package info"

    .line 245
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->onPostExecute(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method
