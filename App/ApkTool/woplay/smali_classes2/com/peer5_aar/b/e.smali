.class public final Lcom/peer5_aar/b/e;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private b:Lcom/peer5_aar/b/a;

.field private c:Lcom/peer5_aar/b/f;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/peer5_aar/b/a;

    invoke-direct {v0}, Lcom/peer5_aar/b/a;-><init>()V

    iput-object v0, p0, Lcom/peer5_aar/b/e;->b:Lcom/peer5_aar/b/a;

    new-instance v0, Lcom/peer5_aar/b/f;

    invoke-direct {v0}, Lcom/peer5_aar/b/f;-><init>()V

    iput-object v0, p0, Lcom/peer5_aar/b/e;->c:Lcom/peer5_aar/b/f;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/peer5_aar/b/e;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x22b6

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/peer5_aar/b/e;->a:Ljava/net/ServerSocket;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/peer5_aar/b/e;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Lcom/peer5_aar/b/d;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/peer5_aar/b/d;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/peer5_aar/b/d;->a()Lcom/peer5_aar/b/h;

    move-result-object v1

    iget-object v2, v1, Lcom/peer5_aar/b/h;->a:Lcom/peer5_aar/b/c;

    sget-object v3, Lcom/peer5_aar/b/c;->a:Lcom/peer5_aar/b/c;

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/peer5_aar/b/b;

    invoke-direct {v2, v0}, Lcom/peer5_aar/b/b;-><init>(Ljava/net/Socket;)V

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/peer5_aar/b/c;->b:Lcom/peer5_aar/b/c;

    if-ne v2, v3, :cond_2

    new-instance v2, Lcom/peer5_aar/b/g;

    invoke-direct {v2, v0}, Lcom/peer5_aar/b/g;-><init>(Ljava/net/Socket;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget-object v0, Lcom/peer5_aar/b/c;->a:Lcom/peer5_aar/b/c;

    iget-object v3, v1, Lcom/peer5_aar/b/h;->a:Lcom/peer5_aar/b/c;

    if-ne v0, v3, :cond_4

    iget-object v0, v1, Lcom/peer5_aar/b/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/peer5_aar/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/peer5_aar/b/h;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/peer5_aar/b/e;->c:Lcom/peer5_aar/b/f;

    invoke-virtual {v1}, Lcom/peer5_aar/b/h;->a()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lcom/peer5_aar/b/h;->f:J

    invoke-static {}, Lcom/peer5_aar/a/a;->a()Lcom/peer5_aar/a/a;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "requestId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v6, Lcom/peer5_aar/a/a;->c:Z

    if-eqz v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "get(\'"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v6, Lcom/peer5_aar/a/a;->d:Landroid/os/Handler;

    new-instance v4, Lcom/peer5_aar/a/a$3;

    invoke-direct {v4, v6, v0}, Lcom/peer5_aar/a/a$3;-><init>(Lcom/peer5_aar/a/a;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/peer5_aar/b/f$1;

    invoke-direct {v7, v0, v3, v4, v5}, Lcom/peer5_aar/b/f$1;-><init>(Lcom/peer5_aar/b/f;Ljava/lang/String;J)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_2
    iget-object v0, p0, Lcom/peer5_aar/b/e;->c:Lcom/peer5_aar/b/f;

    iget-wide v3, v1, Lcom/peer5_aar/b/h;->f:J

    iget-object v5, v0, Lcom/peer5_aar/b/f;->b:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/peer5_aar/b/f;->a:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/peer5_aar/b/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/peer5_aar/b/c;->b:Lcom/peer5_aar/b/c;

    iget-object v3, v1, Lcom/peer5_aar/b/h;->a:Lcom/peer5_aar/b/c;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/peer5_aar/b/e;->c:Lcom/peer5_aar/b/f;

    iget-object v3, v1, Lcom/peer5_aar/b/h;->e:[B

    iget-object v1, v1, Lcom/peer5_aar/b/h;->d:Ljava/util/Hashtable;

    const-string v4, "requestId"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "statusCode"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/peer5_aar/b/f;->a([BJLjava/lang/Integer;)V

    :cond_5
    :goto_3
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/peer5_aar/b/e;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
