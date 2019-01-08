.class public Lcom/github/snowdream/android/app/DownloadListener;
.super Lcom/github/snowdream/android/util/concurrent/TaskListener;
.source "DownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Integer:",
        "Ljava/lang/Object;",
        "DownloadTask:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/snowdream/android/util/concurrent/TaskListener<",
        "TInteger;TDownloadTask;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/github/snowdream/android/util/concurrent/TaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDownloadTask;)V"
        }
    .end annotation

    return-void
.end method

.method public onDelete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDownloadTask;)V"
        }
    .end annotation

    return-void
.end method

.method public onStop(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDownloadTask;)V"
        }
    .end annotation

    return-void
.end method
