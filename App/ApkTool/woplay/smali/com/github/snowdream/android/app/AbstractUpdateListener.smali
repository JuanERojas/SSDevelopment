.class public abstract Lcom/github/snowdream/android/app/AbstractUpdateListener;
.super Lcom/github/snowdream/android/util/concurrent/TaskListener;
.source "AbstractUpdateListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/snowdream/android/util/concurrent/TaskListener<",
        "Ljava/lang/Integer;",
        "Lcom/github/snowdream/android/app/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/github/snowdream/android/util/concurrent/TaskListener;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    .line 19
    iput-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->context:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;

    return-void
.end method


# virtual methods
.method public abstract ExitApp()V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUpdateOptions()Lcom/github/snowdream/android/app/UpdateOptions;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;

    return-object v0
.end method

.method public getUpdateTips(Lcom/github/snowdream/android/app/UpdateInfo;)Ljava/lang/String;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 153
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->getUpdateTips()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 159
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "default"

    .line 162
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    const-string v0, "\\n"

    const-string v1, "\n"

    .line 166
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final informCancel(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/UpdateOptions;->shouldForceUpdate()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->isForceUpdate()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->ExitApp()V

    :cond_3
    return-void
.end method

.method public final informSkip(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/UpdateOptions;->shouldForceUpdate()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->isForceUpdate()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->ExitApp()V

    :cond_3
    return-void
.end method

.method public final informUpdate(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public abstract onShowNoUpdateUI()V
.end method

.method public abstract onShowUpdateProgressUI(Lcom/github/snowdream/android/app/UpdateInfo;Lcom/github/snowdream/android/app/DownloadTask;I)V
.end method

.method public abstract onShowUpdateUI(Lcom/github/snowdream/android/app/UpdateInfo;)V
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->context:Landroid/content/Context;

    return-void
.end method

.method protected setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setUpdateOptions(Lcom/github/snowdream/android/app/UpdateOptions;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/github/snowdream/android/app/AbstractUpdateListener;->updateOptions:Lcom/github/snowdream/android/app/UpdateOptions;

    return-void
.end method
