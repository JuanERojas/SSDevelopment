.class Lokhttp3/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/ConnectionPool;


# direct methods
.method constructor <init>(Lokhttp3/ConnectionPool;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/ConnectionPool;->cleanup(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0xf4240

    .line 61
    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long v6, v0, v2

    .line 63
    iget-object v0, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    long-to-int v2, v6

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 68
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
