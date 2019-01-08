.class Lcom/github/snowdream/android/app/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/snowdream/android/app/DownloadManager;

.field final synthetic val$code:Ljava/lang/Integer;

.field final synthetic val$listener:Lcom/github/snowdream/android/app/DownloadListener;

.field final synthetic val$message:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

.field final synthetic val$task:Lcom/github/snowdream/android/app/DownloadTask;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/DownloadManager;Lcom/github/snowdream/android/app/DownloadListener;Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->this$0:Lcom/github/snowdream/android/app/DownloadManager;

    iput-object p2, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    iput-object p3, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$message:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    iput-object p4, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$task:Lcom/github/snowdream/android/app/DownloadTask;

    iput-object p5, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$code:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$2;->$SwitchMap$com$github$snowdream$android$app$DownloadManager$POST_MESSAGE:[I

    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$message:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    new-instance v1, Lcom/github/snowdream/android/app/DownloadException;

    iget-object v2, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/DownloadException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/DownloadListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$task:Lcom/github/snowdream/android/app/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/DownloadListener;->onStop(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/DownloadListener;->onFinish()V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/DownloadListener;->onStart()V

    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$task:Lcom/github/snowdream/android/app/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/DownloadListener;->onDelete(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :pswitch_5
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$listener:Lcom/github/snowdream/android/app/DownloadListener;

    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager$1;->val$task:Lcom/github/snowdream/android/app/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/DownloadListener;->onAdd(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
