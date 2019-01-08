.class public abstract Lcom/github/snowdream/android/util/concurrent/AsyncTask;
.super Landroid/os/AsyncTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/snowdream/android/util/concurrent/TaskListener<",
            "TProgress;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/util/concurrent/TaskListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/util/concurrent/TaskListener<",
            "TProgress;TResult;>;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    .line 140
    iput-object p1, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    return-void
.end method

.method public static getDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.AsyncTask"

    .line 252
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sDefaultExecutor"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v0, 0x0

    .line 256
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    .line 267
    :goto_0
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v0, "IllegalAccessException"

    .line 268
    invoke-static {v0, v1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v2, v0

    .line 264
    :goto_1
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const-string v0, "NoSuchFieldException"

    .line 265
    invoke-static {v0, v1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v2, v0

    .line 261
    :goto_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const-string v0, "ClassNotFoundException"

    .line 262
    invoke-static {v0, v1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v2, v0

    .line 258
    :goto_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, "IllegalArgumentException"

    .line 259
    invoke-static {v0, v1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v2
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2

    :try_start_0
    const-string v0, "android.os.AsyncTask"

    .line 221
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sDefaultExecutor"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 224
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v0, "IllegalAccessException"

    .line 237
    invoke-static {v0, p0}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const-string v0, "NoSuchFieldException"

    .line 234
    invoke-static {v0, p0}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const-string v0, "ClassNotFoundException"

    .line 231
    invoke-static {v0, p0}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, "IllegalArgumentException"

    .line 228
    invoke-static {v0, p0}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public getListener()Lcom/github/snowdream/android/util/concurrent/TaskListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/snowdream/android/util/concurrent/TaskListener<",
            "TProgress;TResult;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 168
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    invoke-virtual {v0}, Lcom/github/snowdream/android/util/concurrent/TaskListener;->onCancelled()V

    .line 170
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    invoke-virtual {v0}, Lcom/github/snowdream/android/util/concurrent/TaskListener;->onFinish()V

    :cond_0
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 178
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    :goto_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 186
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/util/concurrent/TaskListener;->onSuccess(Ljava/lang/Object;)V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    invoke-virtual {p1}, Lcom/github/snowdream/android/util/concurrent/TaskListener;->onFinish()V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 199
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    invoke-virtual {v0}, Lcom/github/snowdream/android/util/concurrent/TaskListener;->onStart()V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 206
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/util/concurrent/TaskListener;->onProgressUpdate([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/github/snowdream/android/util/concurrent/TaskListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/util/concurrent/TaskListener<",
            "TProgress;TResult;>;)V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    return-void
.end method
