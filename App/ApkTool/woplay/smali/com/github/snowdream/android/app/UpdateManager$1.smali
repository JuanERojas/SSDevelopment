.class Lcom/github/snowdream/android/app/UpdateManager$1;
.super Lcom/github/snowdream/android/app/DownloadListener;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/snowdream/android/app/UpdateManager;->informUpdate(Lcom/github/snowdream/android/app/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/snowdream/android/app/DownloadListener<",
        "Ljava/lang/Integer;",
        "Lcom/github/snowdream/android/app/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/snowdream/android/app/UpdateManager;

.field final synthetic val$info:Lcom/github/snowdream/android/app/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$1;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    iput-object p2, p0, Lcom/github/snowdream/android/app/UpdateManager$1;->val$info:Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-direct {p0}, Lcom/github/snowdream/android/app/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4

    .line 267
    invoke-super {p0, p1}, Lcom/github/snowdream/android/app/DownloadListener;->onProgressUpdate([Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$1;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$100(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager$1;->val$info:Lcom/github/snowdream/android/app/UpdateInfo;

    const/4 v2, 0x4

    const/4 v3, -0x1

    .line 268
    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public onSuccess(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 1

    .line 274
    invoke-super {p0, p1}, Lcom/github/snowdream/android/app/DownloadListener;->onSuccess(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$1;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$1;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$600(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Lcom/github/snowdream/android/app/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager$1;->onSuccess(Lcom/github/snowdream/android/app/DownloadTask;)V

    return-void
.end method
