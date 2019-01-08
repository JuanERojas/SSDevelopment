.class Lcom/github/snowdream/android/app/UpdateManager$UIHandler;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/snowdream/android/app/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/github/snowdream/android/app/UpdateManager;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateManager$1;)V
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;-><init>(Lcom/github/snowdream/android/app/UpdateManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-static {v0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$1000(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-static {v0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$900(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-static {v0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$400(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V

    goto :goto_0

    .line 345
    :pswitch_3
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$700(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/AbstractUpdateListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onShowNoUpdateUI()V

    goto :goto_0

    .line 342
    :pswitch_4
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$700(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/AbstractUpdateListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onFinish()V

    goto :goto_0

    .line 334
    :pswitch_5
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateManager;->access$700(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/AbstractUpdateListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onStart()V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$700(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/AbstractUpdateListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$800(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateManager;->access$700(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/AbstractUpdateListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/github/snowdream/android/app/UpdateInfo;

    iget-object v2, p0, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->this$0:Lcom/github/snowdream/android/app/UpdateManager;

    invoke-static {v2}, Lcom/github/snowdream/android/app/UpdateManager;->access$800(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/DownloadTask;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->onShowUpdateProgressUI(Lcom/github/snowdream/android/app/UpdateInfo;Lcom/github/snowdream/android/app/DownloadTask;I)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
